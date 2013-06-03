<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.LeavePolicy>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>LeavePolicy</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PolicyName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PolicyName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PolicyDescription) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PolicyDescription) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DaysOfLeave) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DaysOfLeave) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.MinServiceYear) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.MinServiceYear) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Paid) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Paid) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Period) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Period) %>
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
