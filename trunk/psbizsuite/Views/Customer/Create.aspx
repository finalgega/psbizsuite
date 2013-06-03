<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Customer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Customer</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.FullName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.FullName) %>
            <%: Html.ValidationMessageFor(model => model.FullName) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Address) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Address) %>
            <%: Html.ValidationMessageFor(model => model.Address) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.PhoneNo) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.PhoneNo) %>
            <%: Html.ValidationMessageFor(model => model.PhoneNo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Email) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Email) %>
            <%: Html.ValidationMessageFor(model => model.Email) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.FaxNo) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.FaxNo) %>
            <%: Html.ValidationMessageFor(model => model.FaxNo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.UserAccount_Username, "UserAccount") %>
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
