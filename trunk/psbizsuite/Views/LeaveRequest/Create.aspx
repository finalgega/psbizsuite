<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.LeaveRequest>" %>

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
    <!-- start content-outer -->
    <div id="content-outer">
        <!-- start content -->
        <div id="content">

            <div id="page-heading">
                <h1>Send Leave Request</h1>
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

                                        <!-- start id-form -->
                                        <table border="0" class="zeroPS id-form">
                                            <tr>
                                                <th>Start Date:</th>
                                                <td><%: Html.EditorFor(model => model.StartDate) %>
                                                    <%: Html.ValidationMessageFor(model => model.StartDate) %></td>
                                            </tr>
                                            <tr>
                                                <th>End Date:</th>
                                                <td><%: Html.EditorFor(model => model.EndDate) %>
                                                    <%: Html.ValidationMessageFor(model => model.EndDate) %></td>
                                            </tr>
                                            <tr>
                                                <th>Reason:</th>
                                                <td><%: Html.TextAreaFor(model => model.Reason, new { @class = "details" })%>
                                                    <%: Html.ValidationMessageFor(model => model.Reason) %></td>
                                            </tr>
                                            <tr>
                                                <th>Leave Type:</th>
                                                <%: Html.DropDownList("LeavePolicy_LeavePolicyId", String.Empty) %>
                                                <%: Html.ValidationMessageFor(model => model.LeavePolicy_LeavePolicyId) %>
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
</asp:Content>
