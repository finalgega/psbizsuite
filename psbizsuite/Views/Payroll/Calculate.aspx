﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.CalculatePayrollViewModel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="page-heading">
        <h1>Payroll</h1>
    </div>
    <table border="0" class="zeroPS" id="content-table" style="width: 100%;">
        <tr>
            <th rowspan="3" class="sized">
                <img src="../../../psbizsuite/Assets/Images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
            <th class="topleft"></th>
            <td id="tbl-border-top">&nbsp;</td>
            <th class="topright"></th>
            <th rowspan="3" class="sized">
                <img src="../../../psbizsuite/Assets/Images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
        </tr>
        <tr>
            <td id="tbl-border-left"></td>
            <td>
                <!--  start content-table-inner ...................................................................... START -->
                <div id="content-table-inner">

                    <!--  start table-content  -->
                    <div id="table-content">
                        <table border="0" class="zeroPS" style="width: 100%;" id="product-table">
                            <tr>
                                <th class="table-header-repeat line-left minwidth-1"><a href="">Employee's Name</a></th>
                                <th class="table-header-repeat line-left minwidth-1"><a href="">Normal Hours</a></th>
                                <th class="table-header-repeat line-left"><a href="">OT Hours</a></th>
                                <th class="table-header-repeat line-left"><a href="">Total Hours</a></th>
                                <th class="table-header-repeat line-left"><a href="">Total Salary</a></th>
                            </tr>
                            <% double totalAllEmployeeSalary = 0; %>
                            <% foreach (var item in Model){ %>
                            <tr>
                                <td><%= item.name %> <br /></td>
                                <td><%= item.normalHours %></td>
                                <td><%= item.totalHours - item.normalHours %></td>
                                <td><%= item.totalHours %></td>
                                <td>$<%= item.totalHours.Hours * item.salaryPerHour %></td>
                                <% totalAllEmployeeSalary += item.totalHours.Hours * item.salaryPerHour;%>
                            </tr>
                             <% } %>
                            <tr><td colspan="4" style="color:red"> Total Salary</td>
                            <td style="font-weight:bold">$<%= totalAllEmployeeSalary %>  </td>
                                </tr>
                            </table>
                        <div class="clear"></div>

                    </div>
                    <!--  end content-table-inner ............................................END  -->
            </td>
            <td id="tbl-border-right"></td>
        </tr>
        <tr>
            <th class="sized bottomleft"></th>
            <td id="tbl-border-bottom">&nbsp;</td>
            <th class="sized bottomright"></th>
        </tr>
    </table>
    <div class="clear">&nbsp;</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
    <% if (User.IsInRole("HR Manager")) %>
    <% Html.RenderPartial("../Shared/Menu/HrMenu"); %>
    <% if (User.IsInRole("Sale")) %>
    <% Html.RenderPartial("../Shared/Menu/SaleMenu"); %>
    <% if (User.IsInRole("Customer")) %>
    <% Html.RenderPartial("../Shared/Menu/CustomerMenu"); %>
    <% if (User.IsInRole("Logistic")) %>
    <% Html.RenderPartial("../Shared/Menu/LogisticMenu"); %>
    <% if (User.IsInRole("Accountant")) %>
    <% Html.RenderPartial("../Shared/Menu/AccountantMenu"); %>
</asp:Content>
  <asp:Content ID="Content4" ContentPlaceHolderID="MyAccount" runat="server">
         <a href='<%: Url.Action("Edit/" + User.Identity.Name, "Employee") %>'>
             <img src="../../../psbizsuite/Assets/Images/shared/nav/nav_myaccount.gif" width="93" height="14" alt="" />
         </a>
 </asp:Content>  
  <asp:Content ID="Content5" ContentPlaceHolderID="LogoImg" runat="server">
         <img src="../../../psbizsuite/Assets/Images/shared/logo-Hr.png" height="40" alt="" />
 </asp:Content> 
