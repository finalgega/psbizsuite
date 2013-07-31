<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.category>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>category</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CatId) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CatId) %>
            <%: Html.ValidationMessageFor(model => model.CatId) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CatName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CatName) %>
            <%: Html.ValidationMessageFor(model => model.CatName) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CatDescription) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CatDescription) %>
            <%: Html.ValidationMessageFor(model => model.CatDescription) %>
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
    <% if (User.IsInRole("HR Manager")) %>
    <% Html.RenderPartial("../Shared/Menu/HrMenu"); %>
    <% if (User.IsInRole("Sale")) %>
    <% Html.RenderPartial("../Shared/Menu/SaleMenu"); %>
    <% if (User.IsInRole("Customer")) %>
    <% Html.RenderPartial("../Shared/Menu/CustomerMenu"); %>
    <% if (User.IsInRole("Logistic")) %>
    <% Html.RenderPartial("../Shared/Menu/LogisticMenu"); %>
    <% if (User.IsInRole("Accountant")) %>
    <% Html.RenderPartial("../Shared/Menu/AccountantMenu"); %>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MyAccount" runat="server">
    <a href='<%: Url.Action("Edit/" + User.Identity.Name, "Employee") %>'>
        <img src="../../../psbizsuite/Assets/Images/shared/nav/nav_myaccount.gif" width="93" height="14" alt="" />
    </a>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="LogoImg" runat="server">
    <img src="../../../psbizsuite/Assets/Images/shared/logo-Logistic.png" height="40" alt="" />
</asp:Content>
