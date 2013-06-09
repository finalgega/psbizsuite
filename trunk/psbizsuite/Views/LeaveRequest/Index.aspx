<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.LeaveRequest>>" %>

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
            <%: Html.DisplayNameFor(model => model.EndDate) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Reason) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Employee.FullName) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.leavepolicy.PolicyName) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.StartDate) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.EndDate) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Reason) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Employee.FullName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.leavepolicy.PolicyName) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.LeaveRequestId }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.LeaveRequestId }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.LeaveRequestId }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
