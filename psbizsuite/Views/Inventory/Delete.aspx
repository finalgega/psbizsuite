﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Inventory>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>Inventory</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ItemDescription) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ItemDescription) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Image) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Image) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.UnitCost) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UnitCost) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.UnitWeightKilo) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UnitWeightKilo) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Quantity) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Quantity) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Location) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Location) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.TimeStamp) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.TimeStamp) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Supplier.FullName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Supplier.FullName) %>
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