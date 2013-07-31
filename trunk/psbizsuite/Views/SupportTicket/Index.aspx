<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.SupportTicket>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../../psbizsuite/Assets/Css/order.css" type="text/css" rel="stylesheet" />
<h2>Index</h2>

<p>
    
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.EnquiryType) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.EnquiryPriority) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.ReferenceId) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Details) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Reply) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Customer.FullName) %>
        </th>
        
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.EnquiryType) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.EnquiryPriority) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ReferenceId) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Details) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Reply) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Customer.FullName) %>
        </td>
        
        <td>
            <%: Html.ActionLink("Reply", "Edit", new { id=item.SupportTicketId }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.SupportTicketId }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.SupportTicketId }) %>
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
             <img src="../../../psbizsuite/Assets/Images/shared/nav/nav_myaccount.gif" width="93" height="14" alt="" />
         </a>
 </asp:Content>  
  <asp:Content ID="Content5" ContentPlaceHolderID="LogoImg" runat="server">
         <img src="../../../psbizsuite/Assets/Images/shared/logo-Sale.png" height="40" alt="" />
 </asp:Content> 