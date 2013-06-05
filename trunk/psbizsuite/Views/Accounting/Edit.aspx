﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.AccountPayable>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>AccountPayable</legend>

        <%: Html.HiddenFor(model => model.AccountPayableId) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Status) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Status) %>
            <%: Html.ValidationMessageFor(model => model.Status) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.TotalAmount) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.TotalAmount) %>
            <%: Html.ValidationMessageFor(model => model.TotalAmount) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ReferenceId) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ReferenceId) %>
            <%: Html.ValidationMessageFor(model => model.ReferenceId) %>
        </div>

        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>