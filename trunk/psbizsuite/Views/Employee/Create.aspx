<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Employee>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .address {
            width: 300px;
            height: 80px;
            resize: none;
        }
    </style>
    
    <!-- start content-outer -->
    <div id="content-outer">
        <!-- start content -->
        <div id="content">

            <div id="page-heading">
                <h1>Add New Employee</h1>
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

                                        <% using (Html.BeginForm("Create","Employee"))
                                           { %>
                                        <%: Html.ValidationSummary(true) %>

                                        <!-- start id-form -->
                                        <table border="0" class="zeroPS id-form">
                                            <tr>
                                                <th>Full Name:</th>
                                                <td><%: Html.TextBoxFor(model => model.FullName, new { style="width: 250px;"})%>
                                                <%: Html.ValidationMessageFor(model => model.FullName)%></td>
                                            </tr>
                                            <tr>
                                                <th>NRIC:</th>
                                                <td><%: Html.EditorFor(model => model.NRIC) %>
                                                <%: Html.ValidationMessageFor(model => model.NRIC) %></td>
                                            </tr>
                                            <tr>
                                                <th>Contact No:</th>
                                                <td><%: Html.TextBoxFor(model => model.PhoneNo) %>
                                                <%: Html.ValidationMessageFor(model => model.PhoneNo) %></td>
                                            </tr>
                                            <tr>
                                                <th>Date Of Birth:</th>
                                                <td><%: Html.EditorFor(model => model.DOB) %>
                                                <%: Html.ValidationMessageFor(model => model.DOB) %></td>
                                            </tr>
                                            <tr>
                                                <th>Address:</th>
                                                <td><%: Html.TextAreaFor(model => model.Address, new { @class = "address" })%>
                                                <%: Html.ValidationMessageFor(model => model.Address) %></td>
                                            </tr>
                                             <tr>
                                                <th>User Account: </th>
                                                <td><%: Html.EditorFor(model => model.UserAccount_Username) %>
                                                <%: Html.ValidationMessageFor(model => model.UserAccount_Username) %></td>
                                            </tr>
                                            <tr>
                                                <th>Phone Uid: </th>
                                                <td><%: Html.EditorFor(model => model.PhoneUid) %>
                                                <%: Html.ValidationMessageFor(model => model.PhoneUid) %></td>
                                            </tr>
                                            <tr>
                                                <th>Position: </th>
                                                <td><%: Html.DropDownList("EmployeePosition_PositionName", "Please select") %>
                                                <%: Html.ValidationMessageFor(model => model.EmployeePosition_PositionName) %></td>
                                            </tr>
                                            <tr>
                                                <th>Start Date of Employement:</th>
                                                <td><%: Html.EditorFor(model => model.StartEmploymentDate) %>
                                                <%: Html.ValidationMessageFor(model => model.StartEmploymentDate) %></td>
                                            </tr>
                                            <tr>
                                                <th>End Date of Employement:</th>
                                                <td><%: Html.EditorFor(model => model.EndEmploymentDate) %>
                                                <%: Html.ValidationMessageFor(model => model.EndEmploymentDate) %></td>
                                            </tr>
                                            <tr>
                                                <th>Start Working Hour:</th>
                                                <td><%: Html.TextBoxFor(model => model.StartShiftHour)%>
                                                <%: Html.ValidationMessageFor(model => model.StartShiftHour) %></td>
                                            </tr>
                                            <tr>
                                                <th>End Working Hour:</th>

                                                <td><%: Html.TextBoxFor(model => model.EndShiftHour) %>
                                                <%: Html.ValidationMessageFor(model => model.EndShiftHour) %></td>

                                              
                                            </tr>
                                            <tr>
                                                <th>Salary Per Hour:</th>
                                                <td><%: Html.EditorFor(model => model.SalaryPerHour) %>
                                                <%: Html.ValidationMessageFor(model => model.SalaryPerHour) %></td>
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

 <asp:Content ContentPlaceHolderID="MyAccount" runat="server">
         <a href='<%: Url.Action("Edit/" + User.Identity.Name, "Employee") %>'>
             <img src="../../Assets/Images/shared/nav/nav_myaccount.gif" width="93" height="14" alt="" />
         </a>
 </asp:Content>  
 <asp:Content ID="Content5" ContentPlaceHolderID="LogoImg" runat="server">
         <img src="../../Assets/Images/shared/logo-Hr.png" height="40" alt="" />
 </asp:Content>   
