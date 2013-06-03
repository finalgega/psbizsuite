<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Customer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>Customer</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.FullName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.FullName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Address) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Address) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PhoneNo) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PhoneNo) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Email) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Email) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.FaxNo) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.FaxNo) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.UserAccount.Password) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UserAccount.Password) %>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
