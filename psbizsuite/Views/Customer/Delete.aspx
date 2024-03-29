﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Customer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../../psbizsuite/Assets/Css/order.css" type="text/css" rel="stylesheet" />
<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
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
        </table>
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

 <asp:Content ID="Content4" ContentPlaceHolderID="MyAccount" runat="server">
         <a href='<%: Url.Action("Edit/" + User.Identity.Name, "Employee") %>'>
             <img src="../../../psbizsuite/Assets/Images/shared/nav/nav_myaccount.gif" width="93" height="14" alt="" />
         </a>
 </asp:Content>  
 <asp:Content ID="Content5" ContentPlaceHolderID="LogoImg" runat="server">
         <img src="../../../psbizsuite/Assets/Images/shared/logo-Sale.png" height="40" alt="" />
 </asp:Content>   