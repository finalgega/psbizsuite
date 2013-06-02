<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.EmployeePosition>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>EmployeePosition</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.PositionId) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.PositionId) %>
            <%: Html.ValidationMessageFor(model => model.PositionId) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.PositionName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.PositionName) %>
            <%: Html.ValidationMessageFor(model => model.PositionName) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Responsibility) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Responsibility) %>
            <%: Html.ValidationMessageFor(model => model.Responsibility) %>
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
