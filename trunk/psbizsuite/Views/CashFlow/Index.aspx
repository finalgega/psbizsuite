<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.cashflow>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    &nbsp;&nbsp;&nbsp;<%: Html.ActionLink("Create New", "Create") %>
</p>
    <div id="page-heading">
        <h1>Manage Cash Flow <%= (string)(Session["username"]) %></h1>
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
                                <th class="table-header-repeat line-left minwidth-1"><a href="">Date</a></th>
                                <th class="table-header-repeat line-left minwidth-1"><a href="">Description</a></th>
                                <th class="table-header-repeat line-left"><a href="">Cash In</a></th>
                                <th class="table-header-repeat line-left"><a href="">Cash Out</a></th>
                                
                                <th class="table-header-repeat line-left"><a href=""></a></th>
                              
                            </tr>
                            <% foreach (var item in Model)
                               { %>
                            <tr>

                                <td>
                                    <input type="checkbox" />
                                </td>
                                <td>
                                    <%: Html.DisplayFor(modelItem => item.Date) %>
                                </td>
                                 <td>
                                    <%: Html.DisplayFor(modelItem => item.Description) %>
                                </td>
                                <td style="color: #00CC00">
                                    <%: Html.DisplayFor(modelItem => item.CashIn) %>
                                </td>
                                <td style="color: #FF0000">
                                    <%: Html.DisplayFor(modelItem => item.CashOut) %>
                                </td>
                                
                                <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CashFlowId }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.CashFlowId }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CashFlowId }) %>
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















    <!--
<h2>Cash Flow</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.Date) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Description) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.CashIn) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.CashOut) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.TotalAmt) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Date) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Description) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.CashIn) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.CashOut) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.TotalAmt) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CashFlowId }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.CashFlowId }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CashFlowId }) %>
        </td>
    </tr>
<% } %>

</table>
        -->

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
