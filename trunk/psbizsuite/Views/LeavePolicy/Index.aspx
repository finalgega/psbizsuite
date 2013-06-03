<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.LeavePolicy>>" %>

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
            Policy Name:
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.PolicyDescription) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.DaysOfLeave) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.MinServiceYear) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Paid) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Period) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.PolicyName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.PolicyDescription) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DaysOfLeave) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.MinServiceYear) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Paid) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Period) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.LeavePolicyId }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.LeavePolicyId }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.LeavePolicyId }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
