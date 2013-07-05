<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Inventory>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Assets/Css/inventory.css" rel="stylesheet" type="text/css" />
<h2>Details</h2>

<fieldset>
    <legend>Inventory</legend>
    <table class="details-table">
        <tr>
            <%: Html.HiddenFor(model => model.InventoryId) %>
            <th><%: Html.DisplayNameFor(model => model.ItemName) %></th>
            <td><%: Html.DisplayFor(model => model.ItemName) %></td>
            <th> <%: Html.DisplayNameFor(model => model.ItemDescription) %></th>
            <td><%: Html.DisplayFor(model => model.ItemDescription) %></td>
            <td rowspan="5" colspan="2"> <img src="<%= Url.Action("ShowImage", "Inventory", new { id = ViewData["InventoryId"] }) %>" /></td>
        </tr>
        <tr>
            <th> <%: Html.DisplayNameFor(model => model.UnitCost) %></th>
            <td> <%: Html.DisplayFor(model => model.UnitCost) %></td>
            <th> <%: Html.DisplayNameFor(model => model.UnitWeightKilo) %></th>
            <td> <%: Html.DisplayFor(model => model.UnitWeightKilo) %></td>
        </tr>
        <tr>
            <th> <%: Html.DisplayNameFor(model => model.Quantity) %></th>
            <td> <%: Html.DisplayFor(model => model.Quantity) %></td>
            <th> <%: Html.DisplayNameFor(model => model.Location) %></th>
            <td><%: Html.DisplayFor(model => model.Location) %></td>
        </tr>
        <tr>
            <th> <%: Html.DisplayNameFor(model => model.TimeStamp) %>
            </th>
            <td> <%: Html.DisplayFor(model => model.TimeStamp) %></td>
            <th> <%: Html.DisplayNameFor(model => model.Supplier.FullName) %></th>
            <td><%: Html.DisplayFor(model => model.Supplier.FullName) %></td>
        </tr>
        <tr>
            <th></th>
            <td></td>
        </tr>
    </table>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.InventoryId }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
