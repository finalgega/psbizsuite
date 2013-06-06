﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.SupportTicket>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Assets/Css/order.css" type="text/css" rel="stylesheet" />
<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
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
</asp:Content>
