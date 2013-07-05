<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Employee>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- start content-outer -->
    <div id="content-outer">
        <!-- start content -->
        <div id="content">

            <div id="page-heading">
                <h1><%= Model.FullName %>'s Detail</h1>
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
                                        <!-- start id-form -->
                                        <table border="0" class="zeroPS id-form">
                                            <tr>
                                                <th>Full Name:</th>
                                                <td><%: Html.DisplayFor(model => model.FullName) %></td>

                                            </tr>
                                            <tr>
                                                <th>NRIC:</th>
                                                <td><%:Html.DisplayFor(model => model.NRIC)%>
                                            </tr>
                                            <tr>
                                                <th>Contact No:</th>
                                                <td><%: Html.DisplayFor(model => model.PhoneNo) %></td>
                                            </tr>
                                            <tr>
                                                <th>Date Of Birth:</th>
                                                <td><%: Html.DisplayFor(model => model.DOB) %></td>
                                            </tr>
                                            <tr>
                                                <th>Address:</th>
                                                <td><%: Html.DisplayFor(model => model.Address)%></td>
                                            </tr>
                                            <tr>
                                                <th>User Account: </th>
                                                <td><%: Html.DisplayFor(model => model.UserAccount_Username) %>
                                            </tr>
                                            <tr>
                                                <th>Phone Uid: </th>
                                                <td><%: Html.DisplayFor(model => model.PhoneUid) %>
                                            </tr>
                                            <tr>
                                                <th>Position: </th>
                                                <td><%: Html.DisplayFor(model => model.EmployeePosition_PositionName) %></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2"><%: Html.ActionLink("Reset Password","Reset", new{ id = Model.UserAccount_Username}) %></td>
                                            </tr>
                                        </table>
                                        <!-- end id-form  -->
                                     
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
</asp:Content>
