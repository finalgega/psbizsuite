﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.invoice>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>invoice</legend>

        <%: Html.HiddenFor(model => model.InvoiceId) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.InvoiceNumber) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.InvoiceNumber) %>
            <%: Html.ValidationMessageFor(model => model.InvoiceNumber) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Name) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Name) %>
            <%: Html.ValidationMessageFor(model => model.Name) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Notes) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Notes) %>
            <%: Html.ValidationMessageFor(model => model.Notes) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ProposalDetails) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ProposalDetails) %>
            <%: Html.ValidationMessageFor(model => model.ProposalDetails) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.TimeStamp) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.TimeStamp) %>
            <%: Html.ValidationMessageFor(model => model.TimeStamp) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.AdvancePaymentTax) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.AdvancePaymentTax) %>
            <%: Html.ValidationMessageFor(model => model.AdvancePaymentTax) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Paid) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Paid) %>
            <%: Html.ValidationMessageFor(model => model.Paid) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Order_OrderId, "order") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("Order_OrderId", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.Order_OrderId) %>
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