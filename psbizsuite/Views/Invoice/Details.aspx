<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.invoice>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>invoice</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.StartDate) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.StartDate) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DueDate) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DueDate) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.OtherOptions) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.OtherOptions) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.order.Status) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.order.Status) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.invoiceId }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
