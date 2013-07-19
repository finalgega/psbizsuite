<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Customer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create Customer
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Assets/Css/order.css" type="text/css" rel="stylesheet" />
<h2>Create Customer</h2>

<% using (Html.BeginForm()) { %>
    <%= Html.ValidationSummary(true) %>

    <fieldset>
        <%=TempData["errorMsg"] %>
        <legend>Customer</legend>
        <table>
            <tr>
                <td><div class="editor-label">Full Name</div></td>
                <td><div class="editor-field">
            <%: Html.EditorFor(model => model.FullName) %>
            <%: Html.ValidationMessageFor(model => model.FullName) %></div></td>
            </tr><tr>
                <td><div class="editor-label">User Name</div></td>
                <td><div class="editor-field">
            <%: Html.EditorFor(model => model.UserAccount_Username) %>
            <%: Html.ValidationMessageFor(model => model.UserAccount_Username) %></div></td>
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
                    <input type="submit" value="Create Customer" />
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
    <% if (User.IsInRole("HR Manager")) %>
    <% Html.RenderPartial("../Shared/Menu/HrMenu"); %>
    <% if (User.IsInRole("Sale")) %>
    <% Html.RenderPartial("../Shared/Menu/SaleMenu"); %>
    <% if (User.IsInRole("Customer")) %>
    <% Html.RenderPartial("../Shared/Menu/CustomerMenu"); %>
    <% if (User.IsInRole("Logistic")) %>
    <% Html.RenderPartial("../Shared/Menu/LogisticMenu"); %>
    <% if (User.IsInRole("Accountant")) %>
    <% Html.RenderPartial("../Shared/Menu/AccountantMenu"); %>
</asp:Content>

 <asp:Content ID="Content4" ContentPlaceHolderID="MyAccount" runat="server">
         <a href='<%: Url.Action("Edit/" + User.Identity.Name, "Employee") %>'>
             <img src="../../Assets/Images/shared/nav/nav_myaccount.gif" width="93" height="14" alt="" />
         </a>
 </asp:Content> 

 <asp:Content ID="Content5" ContentPlaceHolderID="LogoImg" runat="server">
         <img src="../../Assets/Images/shared/logo-Sale.png" height="40" alt="" />
 </asp:Content>   