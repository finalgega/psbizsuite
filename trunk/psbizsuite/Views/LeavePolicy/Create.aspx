<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.LeavePolicy>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>LeavePolicy</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.PolicyName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.PolicyName) %>
            <%: Html.ValidationMessageFor(model => model.PolicyName) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.PolicyDescription) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.PolicyDescription) %>
            <%: Html.ValidationMessageFor(model => model.PolicyDescription) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DaysOfLeave) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DaysOfLeave) %>
            <%: Html.ValidationMessageFor(model => model.DaysOfLeave) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.MinServiceYear) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.MinServiceYear) %>
            <%: Html.ValidationMessageFor(model => model.MinServiceYear) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Paid) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Paid) %>
            <%: Html.ValidationMessageFor(model => model.Paid) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Period) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Period) %>
            <%: Html.ValidationMessageFor(model => model.Period) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
