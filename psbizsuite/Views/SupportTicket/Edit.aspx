<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.SupportTicket>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Reply Support Ticket
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Assets/Css/order.css" type="text/css" rel="stylesheet" />
<h2>Reply Support Ticket</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>SupportTicket</legend>
        <table>
            <%: Html.HiddenFor(model => model.SupportTicketId) %>
            <%: Html.HiddenFor(model => model.EnquiryType) %>
            <%: Html.HiddenFor(model => model.EnquiryPriority) %>
            <%: Html.HiddenFor(model => model.Customer_UserAccount_Username) %>
            <%: Html.HiddenFor(model => model.ReferenceId) %>
            <%: Html.HiddenFor(model => model.Details) %>
            <tr>
                <td><div class="display-label">Previous Enquiry</div></td>
                <td><div class="display-field"><%: Html.DisplayFor(model => model.ReferenceId) %></div></td>
            </tr>
            <tr>
                <td> <div class="editor-label">Customer Enquiry </div> </td>
                <td> <div class="display-field"><%: Html.DisplayFor(model => model.Details) %></div></td>
            </tr>
            <tr>
                <td><div class="editor-label"> Your reply </div></td>
                <td><div class="editor-field">
            <%: Html.EditorFor(model => model.Reply) %>
            <%: Html.ValidationMessageFor(model => model.Reply) %></div></td>
            </tr>
        </table>
        
        <p>
            <input type="submit" value="Reply" />
        </p>
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
             <img src="../../Assets/Images/shared/nav/nav_myaccount.gif" width="93" height="14" alt="" />
         </a>
 </asp:Content>  
  <asp:Content ID="Content5" ContentPlaceHolderID="LogoImg" runat="server">
         <img src="../../Assets/Images/shared/logo-Sale.png" height="40" alt="" />
 </asp:Content> 