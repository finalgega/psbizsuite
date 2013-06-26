<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.OrderItem>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create Order
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Assets/Css/order.css" type="text/css" rel="stylesheet" />
<h2>Create Order</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Create Order</legend>
        <table>
            <tr>
        <td><div class="editor-label">Item ID</div></td>
        <td><div class="editor-field">
            <%: @Html.DropDownListFor(model => model.OrderItemId, (SelectList)ViewBag.OrganisationList, new { onChange = "document.location.href = 'Create?InventoryId=' + this.options[this.selectedIndex].value;" }) %>
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
            <%: Html.EditorFor(model => model.UnitPrice) %>
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
</asp:Content>
