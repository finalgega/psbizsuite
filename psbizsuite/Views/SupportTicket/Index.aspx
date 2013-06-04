<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.SupportTicket>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.Question) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Answer) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Customer.FullName) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.SupportTicket2.Question) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Employee.FullName) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Question) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Answer) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Customer.FullName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.SupportTicket2.Question) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Employee.FullName) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.SupportTicketId }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.SupportTicketId }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.SupportTicketId }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
