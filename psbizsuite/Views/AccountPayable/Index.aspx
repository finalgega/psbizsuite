<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.AccountPayable>>" %>

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
            <%: Html.DisplayNameFor(model => model.Status) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.TotalAmount) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.ReferenceId) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Status) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.TotalAmount) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ReferenceId) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.AccountPayableId }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.AccountPayableId }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.AccountPayableId }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
