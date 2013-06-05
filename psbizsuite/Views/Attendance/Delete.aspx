<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Attendance>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>Attendance</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Date) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Date) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Time) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Time) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Location) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Location) %>
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
