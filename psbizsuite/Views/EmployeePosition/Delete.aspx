<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.EmployeePosition>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>EmployeePosition</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PositionId) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PositionId) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PositionName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PositionName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Responsibility) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Responsibility) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
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
