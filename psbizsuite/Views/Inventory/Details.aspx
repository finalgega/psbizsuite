<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Inventory>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>Inventory</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ItemDescription) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ItemDescription) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Image) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Image) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.UnitCost) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UnitCost) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.UnitWeightKilo) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UnitWeightKilo) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Quantity) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Quantity) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Location) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Location) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.TimeStamp) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.TimeStamp) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Supplier.FullName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Supplier.FullName) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.InventoryId }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
