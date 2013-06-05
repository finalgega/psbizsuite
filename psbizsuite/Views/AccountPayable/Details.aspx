<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.AccountPayable>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>AccountPayable</legend>

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
        <%: Html.DisplayNameFor(model => model.ReferenceId) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ReferenceId) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.AccountPayableId }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
