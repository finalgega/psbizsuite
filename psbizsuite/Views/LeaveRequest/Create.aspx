﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.LeaveRequest>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .details {
            width: 300px;
            height: 80px;
            resize: none;
        }
    </style>
      <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script>
        $(document).ready(function () {
            $('.date').datepicker({
                minDate: 0
            });
        });
    </script>
    <!-- start content-outer -->
    <div id="content-outer">
        <!-- start content -->
        <div id="content">

            <div id="page-heading">
                <h1>Apply Leave</h1>
            </div>


            <table border="0" class="zeroPS" style="width: 100%" id="content-table">
                <tr>
                    <th rowspan="3" class="sized">
                        <img src="../../Assets/Images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
                    <th class="topleft"></th>
                    <td id="tbl-border-top">&nbsp;</td>
                    <th class="topright"></th>
                    <th rowspan="3" class="sized">
                        <img src="../../Assets/Images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
                </tr>
                <tr>
                    <td id="tbl-border-left"></td>
                    <td>
                        <!--  start content-table-inner -->
                        <div id="content-table-inner">

                            <table border="0" class="zeroPS" style="width: 100%">
                                <tr style="vertical-align: top">
                                    <td>
                                        <% using (Html.BeginForm())
                                           { %>
                                        <%: Html.AntiForgeryToken() %>
                                        <%: Html.ValidationSummary(true) %>
                                        <div style="color: red;font-weight:900;"><%= TempData["message"] %></div><br />
                                        <!-- start id-form -->
                                        <table border="0" class="zeroPS id-form">
                                            <tr>
                                                <th>Start Date:</th>
                                                <td>
                                                    <%: Html.TextBoxFor(model => model.StartDate, new {@class = "date"}) %>
                                                    <%: Html.ValidationMessageFor(model => model.StartDate) %></td>
                                            </tr>
                                            <tr>
                                                <th>End Date:</th>
                                                <td><%: Html.TextBoxFor(model => model.EndDate, new {@class = "date"}) %>
                                                    <%: Html.ValidationMessageFor(model => model.EndDate) %></td>
                                            </tr>
                                            <tr>
                                                <th>Reason:</th>
                                                <td><%: Html.TextAreaFor(model => model.Reason, new { @class = "details" })%>
                                                    <%: Html.ValidationMessageFor(model => model.Reason) %></td>
                                            </tr>
                                            <tr>
                                                <th>Leave Type:</th>
                                                <td><%: Html.DropDownList("LeavePolicy_LeavePolicyId", String.Empty) %>
                                                <%: Html.ValidationMessageFor(model => model.LeavePolicy_LeavePolicyId) %></td>
                                            </tr>
                                            <tr>
                                                <th>&nbsp;</th>
                                                <td style="vertical-align: top">
                                                    <input type="submit" class="form-submit" />
                                                    <input type="reset" class="form-reset" />
                                                </td>
                                                <td></td>
                                            </tr>

                                        </table>
                                        <!-- end id-form  -->
                                        <% } %>
                                    </td>
                                </tr>
                            </table>
                            <div class="clear"></div>
                        </div>
                        <!--  end content-table-inner  -->
                    </td>
                    <td id="tbl-border-right"></td>
                </tr>
                <tr>
                    <th class="sized bottomleft"></th>
                    <td id="tbl-border-bottom">&nbsp;</td>
                    <th class="sized bottomright"></th>
                </tr>
            </table>
        </div>
    </div>
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
 <% if (User.IsInRole("HR Manager")){ %>
         <img src="../../../psbizsuite/Assets/Images/shared/logo-Hr.png" height="40" alt="" />
      <% } %>
       <% if (User.IsInRole("Sale")){ %>
      <img src="../../../psbizsuite/Assets/Images/shared/logo-Sale.png" height="40" alt="" />
       <% } %>
    <% if (User.IsInRole("Logistic")) {%>
      <img src="../../../psbizsuiteAssets/Images/shared/logo-Logistic.png" height="40" alt="" />
       <% } %>
    <% if (User.IsInRole("Accountant")) {%>
      <img src="../../../psbizsuite/Assets/Images/shared/logo-Accounting.png" height="40" alt="" />
       <% } %>
 </asp:Content> 