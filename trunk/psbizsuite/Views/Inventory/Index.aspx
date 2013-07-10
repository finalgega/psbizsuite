<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.Inventory>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .tbl-class {
            padding-left:3%;
        }
        .tbl-class th,td {
            padding: 20px;
            }
    </style>
<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table class="tbl-class" border="1">
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.ItemName) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.ItemDescription) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.UnitCost) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.UnitWeightKilo) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Quantity) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Location) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.TimeStamp) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Supplier.FullName) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(model => item.ItemName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ItemDescription) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.UnitCost) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.UnitWeightKilo) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Quantity) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Location) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.TimeStamp) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Supplier.FullName) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.InventoryId }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.InventoryId }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.InventoryId }) %>
        </td>
    </tr>
<% } %>

</table>

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