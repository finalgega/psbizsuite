<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.OrderItem>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create Order
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../../psbizsuite/Assets/Css/order.css" type="text/css" rel="stylesheet" />
<h2>Create Order</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Create Order</legend>
        <table>
            <tr>
        <td><div class="editor-label">Item ID</div></td>
        <td><div class="editor-field">
            <%: @Html.DropDownListFor(model => model.OrderItemId, (SelectList)ViewData["dropdownlist"], new { onChange = "document.location.href = 'Create?InventoryId=' + this.options[this.selectedIndex].value;" }) %>
            <%: Html.ValidationMessageFor(model => model.OrderItemId) %>
        </div></td>
            </tr>

            <tr>
        <td><div class="editor-label">Quantity</div></td>
        <td><div class="editor-field">
            <%: Html.EditorFor(model => model.Quantity) %>
            <%: Html.ValidationMessageFor(model => model.Quantity) %>
        </div></td>
            </tr>

            <tr>
        <td><div class="editor-label">Unit Price</div></td>
        <td><div class="editor-field">
            <%: Html.DisplayFor(model => model.UnitPrice) %>
            <%= TempData["price"] %>
            <%: Html.ValidationMessageFor(model => model.UnitPrice) %>
        </div></td>
            </tr>

            <tr>
        <td><div class="editor-label">Special Comments</div></td>
        <td><div class="editor-field">
            <%: Html.EditorFor(model => model.Description) %>
            <%: Html.ValidationMessageFor(model => model.Description) %>
        </div></td>
            </tr>
            
            <tr>
                <td><input type="submit" value="Add to Order" /></td>
            </tr>
        </table>
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
         <img src="../../../psbizsuite/Assets/Images/shared/logo-Sale.png" height="40" alt="" />
 </asp:Content> 