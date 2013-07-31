<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Supplier>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>Supplier</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.FullName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.FullName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Address) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Address) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PhoneNo) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PhoneNo) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Email) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Email) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.FaxNo) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.FaxNo) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Description) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Description) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.UserAccount.Password) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UserAccount.Password) %>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

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
