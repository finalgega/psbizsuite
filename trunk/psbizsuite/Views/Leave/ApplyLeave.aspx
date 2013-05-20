<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Leave>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    LeaveTesting
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>LeaveTesting</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Leave</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.startLeaveDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.startLeaveDate) %>
            <%: Html.ValidationMessageFor(model => model.startLeaveDate) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.status) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.status) %>
            <%: Html.ValidationMessageFor(model => model.status) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.reason) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.reason) %>
            <%: Html.ValidationMessageFor(model => model.reason) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.endLeaveDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.endLeaveDate) %>
            <%: Html.ValidationMessageFor(model => model.endLeaveDate) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.policyType) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.policyType) %>
            <%: Html.ValidationMessageFor(model => model.policyType) %>
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
