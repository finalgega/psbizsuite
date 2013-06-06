<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.Inventory>>" %>

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
            <%: Html.DisplayNameFor(model => model.ItemDescription) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Image) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.UnitCost) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.UnitWeightKilo) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Quantity) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Location) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.TimeStamp) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Supplier.FullName) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.ItemDescription) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Image) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.UnitCost) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.UnitWeightKilo) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Quantity) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Location) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.TimeStamp) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Supplier.FullName) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.InventoryId }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.InventoryId }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.InventoryId }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
