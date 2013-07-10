<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Inventory>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>Inventory</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ItemDescription) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ItemDescription) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Image) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Image) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.UnitCost) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UnitCost) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.UnitWeightKilo) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UnitWeightKilo) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Quantity) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Quantity) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Location) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Location) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.TimeStamp) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.TimeStamp) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Supplier.FullName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Supplier.FullName) %>
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
 <asp:Content ID="Content4" ContentPlaceHolderID="MyAccount" runat="server">
         <a href='<%: Url.Action("Edit/" + User.Identity.Name, "Employee") %>'>
             <img src="../../Assets/Images/shared/nav/nav_myaccount.gif" width="93" height="14" alt="" />
         </a>
 </asp:Content>  
  <asp:Content ID="Content5" ContentPlaceHolderID="LogoImg" runat="server">
         <img src="../../Assets/Images/shared/logo-Logistic.png" height="40" alt="" />
 </asp:Content>  