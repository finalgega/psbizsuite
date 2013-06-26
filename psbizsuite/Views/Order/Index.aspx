<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.OrderItem>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create", "?InventoryId=1") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.Description) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.UnitPrice) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Quantity) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Order.Status) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Description) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.UnitPrice) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Quantity) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Order.Status) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.OrderItemId }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.OrderItemId }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.OrderItemId }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
