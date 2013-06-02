<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.EmployeePosition>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>EmployeePosition</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PositionId) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PositionId) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PositionName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PositionName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Responsibility) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Responsibility) %>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
