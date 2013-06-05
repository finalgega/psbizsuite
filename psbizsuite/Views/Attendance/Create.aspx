<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Attendance>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Attendance</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Date) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Date) %>
            <%: Html.ValidationMessageFor(model => model.Date) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Time) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Time) %>
            <%: Html.ValidationMessageFor(model => model.Time) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Location) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Location) %>
            <%: Html.ValidationMessageFor(model => model.Location) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Employee_UserAccount_Username, "Employee") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("Employee_UserAccount_Username", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.Employee_UserAccount_Username) %>
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
