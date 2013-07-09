<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Customer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ViewCustomerDetails
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Assets/Css/order.css" type="text/css" rel="stylesheet" />
<h2>View Customer Details</h2>

<fieldset>
    <legend>Customer</legend>
    <table>
        <tr>
    <td><div class="display-label">
        Full Name
    </div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.FullName) %>
    </div></td></tr>

        <tr>
    <td><div class="display-label">
        Address
    </div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.Address) %>
    </div></td></tr>

        <tr>
    <td><div class="display-label">
        Phone Number
    </div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.PhoneNo) %>
    </div></td></tr>

        <tr>
    <td><div class="display-label">
        Email Address
    </div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.Email) %>
    </div></td></tr>

        <tr>
    <td><div class="display-label">
        Fax Number
    </div></td>
    <td><div class="display-field">
        <%: Html.DisplayFor(model => model.FaxNo) %>
    </div></td></tr>

        <tr>
    <td><div class="display-label">
        Password
    </div></td>
    <td><div class="display-field">
        ***PROTECTED***
    </div></td></tr>
        </table>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new { id=Model.UserAccount_Username }) %> |
    <%:  Html.ActionLink("EditPassword", "EditPassword", new { id=Model.UserAccount_Username }) %> |
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
