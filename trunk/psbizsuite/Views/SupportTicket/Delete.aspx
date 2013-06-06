<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.SupportTicket>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>SupportTicket</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.EnquiryType) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.EnquiryType) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.EnquiryPriority) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.EnquiryPriority) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ReferenceId) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ReferenceId) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Details) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Details) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Reply) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Reply) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Customer.FullName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Customer.FullName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.SupportTicket2.EnquiryType) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.SupportTicket2.EnquiryType) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Employee.FullName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Employee.FullName) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
