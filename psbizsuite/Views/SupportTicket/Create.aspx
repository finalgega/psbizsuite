﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.SupportTicket>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Send Support Ticket
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Send Support Ticket</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
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
                <td><div class="editor-label">Enquiry Type</div></td>
                <td><div class="editor-field">
            <%: Html.RadioButtonFor(model => model.EnquiryType, "General Enquiry") %> General Enquiry
            <%: Html.RadioButtonFor(model => model.EnquiryType, "Order Enquiry") %> Order Enquiry
            <%: Html.RadioButtonFor(model => model.EnquiryType, "Feedback") %> Feedback
            <%: Html.ValidationMessageFor(model => model.EnquiryType) %></div></td>
            </tr>
        <tr>
            <td><div class="editor-label">Enquiry Priority</div></td>
            <td><div class="editor-field">
            <%: Html.RadioButtonFor(model => model.EnquiryPriority, "Critical") %> Critical
            <%: Html.RadioButtonFor(model => model.EnquiryPriority, "Important") %> Important
            <%: Html.RadioButtonFor(model => model.EnquiryPriority, "No Reply Required") %> No Reply Required
            <%: Html.ValidationMessageFor(model => model.EnquiryPriority) %></div></td>
        </tr>
        
        <tr>
            <td><div class="editor-label">Existing Enquiry</div></td>
            <td><div class="editor-field">
            <%: Html.DropDownListFor(model => model.ExistingEnquiry, new SelectList(, "id", "name", Model.SupportTicketId), "Select existing enquiry" %>
            <%: Html.ValidationMessageFor(model => model.ExistingEnquiry) %></div></td>
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
</asp:Content>
