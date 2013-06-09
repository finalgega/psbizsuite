﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.LeavePolicy>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
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
                <h1>Edit <%= Model.PolicyName %>'s Detail</h1>
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
                                        <%: Html.ValidationSummary(true) %>
                                        <%: Html.HiddenFor(model => model.LeavePolicyId) %>
                                        <!-- start id-form -->
                                        <table border="0" class="zeroPS id-form">
                                            <tr>
                                                <th>Policy Name:</th>
                                                <td><%: Html.EditorFor(model => model.PolicyName) %></td>
                                                <td><%: Html.ValidationMessageFor(model => model.PolicyName) %></td>
                                            </tr>
                                            <tr>
                                                <th>Policy Description:</th>
                                                <td><%: Html.EditorFor(model => model.PolicyDescription) %></td>
                                                <td><%: Html.ValidationMessageFor(model => model.PolicyDescription) %></td>
                                            </tr>
                                            <tr>
                                                <th>Entitled Days of Leave:</th>
                                                <td><%: Html.EditorFor(model => model.DaysOfLeave) %></td>
                                                <td><%: Html.ValidationMessageFor(model => model.DaysOfLeave) %></td>
                                            </tr>
                                            <tr>
                                                <th>Minimum Years of Service:</th>
                                                <td><%: Html.EditorFor(model => model.MinServiceYear) %></td>
                                                <td><%: Html.ValidationMessageFor(model => model.MinServiceYear) %></td>
                                            </tr>
                                            <tr>
                                                <th>Paid/Unpaid Leave:</th>
                                                <td><%: Html.EditorFor(model => model.Paid) %></td>
                                                <td><%: Html.ValidationMessageFor(model => model.Paid) %></td>
                                            </tr>
                                            <tr>
                                                <th>Monthly/Yearly Leave:</th>
                                                <td><%: Html.EditorFor(model => model.Period) %></td>
                                                <td><%: Html.ValidationMessageFor(model => model.Period) %></td>
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
