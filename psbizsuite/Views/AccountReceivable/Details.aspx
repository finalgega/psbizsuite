<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.AccountReceivable>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>AccountReceivable</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Status) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Status) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.TotalAmount) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.TotalAmount) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Order.Status) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Order.Status) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.AccountReceivableId }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
