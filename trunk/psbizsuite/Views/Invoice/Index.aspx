<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.invoice>>" %>

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
            <%: Html.DisplayNameFor(model => model.StartDate) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.DueDate) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.OtherOptions) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.order.Status) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.StartDate) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DueDate) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.OtherOptions) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.order.Status) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.invoiceId }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.invoiceId }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.invoiceId }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
