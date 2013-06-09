<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.LeaveRequest>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>LeaveRequest</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.StartDate) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.StartDate) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.EndDate) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.EndDate) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Reason) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Reason) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Employee.FullName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Employee.FullName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.leavepolicy.PolicyName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.leavepolicy.PolicyName) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
