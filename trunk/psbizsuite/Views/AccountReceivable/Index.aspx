<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.AccountReceivable>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.Status) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.TotalAmount) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Order.Status) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Status) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.TotalAmount) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Order.Status) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.AccountReceivableId }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.AccountReceivableId }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.AccountReceivableId }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
