<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.cashflow>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>cashflow</legend>

        <%: Html.HiddenFor(model => model.CashFlowId) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Date) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Date) %>
            <%: Html.ValidationMessageFor(model => model.Date) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Description) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Description) %>
            <%: Html.ValidationMessageFor(model => model.Description) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CashIn) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CashIn) %>
            <%: Html.ValidationMessageFor(model => model.CashIn) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CashOut) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CashOut) %>
            <%: Html.ValidationMessageFor(model => model.CashOut) %>
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
