﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.AccountPayable>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
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