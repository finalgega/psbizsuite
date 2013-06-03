<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Customer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>Customer</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.FullName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.FullName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Address) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Address) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PhoneNo) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PhoneNo) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Email) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Email) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.FaxNo) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.FaxNo) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.UserAccount.Password) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UserAccount.Password) %>
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
