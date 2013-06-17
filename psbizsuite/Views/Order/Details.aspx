<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.OrderItem>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>OrderItem</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Description) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Description) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.UnitPrice) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UnitPrice) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Quantity) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Quantity) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Order.Status) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Order.Status) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.OrderItemId }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
