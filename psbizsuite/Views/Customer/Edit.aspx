<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Customer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Customer</legend>
        Note: Usernames cannot be changed once registered <br />
        <table>
            <%: Html.HiddenFor(model => model.UserAccount_Username) %>
            
            <tr>
                <td><div class="editor-label">Full Name</div></td>
                <td><div class="editor-field">
            <%: Html.EditorFor(model => model.FullName) %>
            <%: Html.ValidationMessageFor(model => model.FullName) %></div></td>
            </tr>
            <tr>
                <td><div class="editor-label">Address</div></td>
                <td><div class="editor-field">
            <%: Html.EditorFor(model => model.Address) %>
            <%: Html.ValidationMessageFor(model => model.Address) %></div></td>
            </tr>
            <tr>
                <td><div class="editor-label">Phone Number</div></td>
                <td><div class="editor-field">
            <%: Html.EditorFor(model => model.PhoneNo) %>
            <%: Html.ValidationMessageFor(model => model.PhoneNo) %></div></td>
            </tr>
            <tr>
                <td><div class="editor-label">Fax Number</div></td>
                <td><div class="editor-field">
            <%: Html.EditorFor(model => model.FaxNo) %>
            <%: Html.ValidationMessageFor(model => model.FaxNo) %></div></td>
            </tr>
            <tr>
                <td><div class="editor-label">Email Address</div></td>
                <td><div class="editor-field">
            <%: Html.EditorFor(model => model.Email) %>
            <%: Html.ValidationMessageFor(model => model.Email) %></div></td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Update Customer Details" />
                </td>
            </tr>
            </table>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
