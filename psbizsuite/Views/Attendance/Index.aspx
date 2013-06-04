<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.Attendance>>" %>

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
            <%: Html.DisplayNameFor(model => model.Date) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Time) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Location) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Employee.FullName) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Date) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Time) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Location) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Employee.FullName) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.AttendanceId }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.AttendanceId }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.AttendanceId }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
