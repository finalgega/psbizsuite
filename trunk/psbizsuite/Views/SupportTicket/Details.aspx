<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.SupportTicket>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>SupportTicket</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Question) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Question) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Answer) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Answer) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Customer.FullName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Customer.FullName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.SupportTicket2.Question) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.SupportTicket2.Question) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Employee.FullName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Employee.FullName) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.SupportTicketId }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
