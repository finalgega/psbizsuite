<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.LeaveRequest>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>LeaveRequest</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.StartDate) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.StartDate) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.EndDate) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.EndDate) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Reason) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Reason) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Employee.FullName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Employee.FullName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.leavepolicy.PolicyName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.leavepolicy.PolicyName) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.LeaveRequestId }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
