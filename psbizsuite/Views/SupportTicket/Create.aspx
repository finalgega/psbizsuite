<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.SupportTicket>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Send Support Ticket
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../../psbizsuite/Assets/Css/order.css" type="text/css" rel="stylesheet" />
<h2>Send Support Ticket</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <%=TempData["errorMsg"] %>
        <legend>SupportTicket</legend>

        <h2>Contact Us</h2>
        <p>Contact Us at:<br />
            292 Outlook Road<br />
            #02-1020<br />
            Singapore 801292<br />
            Telephone: 61212302<br />
            Fax: 61212309
        </p>
        <br /><br /><br />
        Email Us:<br />
        <table>
            <tr>
                <td style="vertical-align:top; padding-top:10px"><div class="editor-label">Enquiry Type</div></td>
                <td><div class="editor-field">
            <label style="padding-bottom:45px"><%: Html.RadioButtonFor(model => model.EnquiryType, "General Enquiry") %> General Enquiry </label> 
            <label><%: Html.RadioButtonFor(model => model.EnquiryType, "Order Enquiry") %> Order Enquiry </label> 
            <label><%: Html.RadioButtonFor(model => model.EnquiryType, "Feedback") %> Feedback </label> 
            <%: Html.ValidationMessageFor(model => model.EnquiryType) %></div></td>
            </tr>
        <tr>
            <td style="vertical-align:top; padding-top:10px"><div class="editor-label">Enquiry Priority</div></td>
            <td><div class="editor-field">
            <%: Html.RadioButtonFor(model => model.EnquiryPriority, "Critical") %> Critical <br />
            <%: Html.RadioButtonFor(model => model.EnquiryPriority, "Important") %> Important <br />
            <%: Html.RadioButtonFor(model => model.EnquiryPriority, "No Reply Required") %> No Reply Required <br />
            <%: Html.ValidationMessageFor(model => model.EnquiryPriority) %></div></td>
        </tr>
        
        <tr>
            <td><div class="editor-label">Existing Enquiry</div></td>
            <td><div class="editor-field">
            <%: Html.DropDownList("ReferenceId", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.ReferenceId) %></div></td>
        </tr>
        <tr>
            <td><div class="editor-label">Enquiry Details</div></td>
            <td><div class="editor-field">
            <%: Html.EditorFor(model => model.Details) %>
            <%: Html.ValidationMessageFor(model => model.Details) %></div></td>
        </tr>
        <tr>
            <td><input type="submit" value="Send Support Ticket" /></td>
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
