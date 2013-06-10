<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.LeaveRequest>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div id="page-heading">
        <h1>Manage Leave Policies </h1>
    </div>
    <table border="0" class="zeroPS" id="content-table" style="width: 100%;">
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
                <!--  start content-table-inner ...................................................................... START -->
                <div id="content-table-inner">

                    <!--  start table-content  -->
                    <div id="table-content">
                        <table border="0" class="zeroPS" style="width: 100%;" id="product-table">
                            <tr>
                                <th class="table-header-check"><a id="toggle-all"></a></th>
                                <th class="table-header-repeat line-left minwidth-1"><a href="">Start Date</a></th>
                                <th class="table-header-repeat line-left minwidth-1"><a href="">End Date</a></th>
                                <th class="table-header-repeat line-left"><a href="">Reason</a></th>
                                <th class="table-header-repeat line-left"><a href="">Employee Name</a></th>
                                <th class="table-header-repeat line-left"><a href="">Policy Name</a></th>
                                <th class="table-header-repeat line-left"><a href="">Status</a></th>
                                <th class="table-header-options line-left"><a href="">Options</a></th>
                            </tr>

                            <% foreach (var item in Model)
                               { %>
                            <tr>
                                <td>
                                    <%: Html.DisplayFor(modelItem => item.StartDate) %>
                                </td>
                                <td>
                                    <%: Html.DisplayFor(modelItem => item.EndDate) %>
                                </td>
                                <td>
                                    <%: Html.DisplayFor(modelItem => item.Reason) %>
                                </td>
                                <td>
                                    <%: Html.DisplayFor(modelItem => item.Employee.FullName) %>
                                </td>
                                <td>
                                    <%: Html.DisplayFor(modelItem => item.leavepolicy.PolicyName) %>
                                </td>
                                <td><%: Html.DisplayFor(modelItem => item.Status) %></td>
                                <td class="options-width">
                                    <%: Html.ActionLink(" ", "Approve", new { id = item.LeaveRequestId }, new { @class = "icon-5", title="Approve" }) %>
                                    <%: Html.ActionLink(" ", "NotApprove", new { id = item.LeaveRequestId }, new { @class = "icon-2", title="Not Approve" }) %>      
                                </td>
                            </tr>
                            <% } %>
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
</asp:Content>
