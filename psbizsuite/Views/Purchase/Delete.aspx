<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.purchase>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>purchase</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Article) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Article) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Price) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Price) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.VAT) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.VAT) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Notes) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Notes) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.TimeStamp) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.TimeStamp) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.AdvancePaymentTax) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.AdvancePaymentTax) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.supplier.FullName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.supplier.FullName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.purchasetype.Name) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.purchasetype.Name) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

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
