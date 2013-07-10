<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Customer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Assets/Css/order.css" type="text/css" rel="stylesheet" />
<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Customer</legend>
        Note: Usernames cannot be changed once registered <br />
        <table>
            <%: Html.HiddenFor(model => model.UserAccount_Username) %>
            <%: Html.HiddenFor(model => model.FullName) %>
            <%: Html.HiddenFor(model => model.Address) %>
            <%: Html.HiddenFor(model => model.PhoneNo) %>
            <%: Html.HiddenFor(model => model.FaxNo) %>
            <%: Html.HiddenFor(model => model.Email) %>

            <tr>
                <td><div class="editor-label">New Password</div></td>
                <td><div class="editor-field">
            <input type="password" placeholder="newpassword" name="newpassword" /></td>
            </tr>
            <tr>
                <td><div class="editor-label">Confirm your existing password</div></td>
                <td><div class="editor-field">
            <input type="password" placeholder="yourpassword" name="password" /></div></td>
            </tr>
            <tr>
                <td><div class="editor-label">Enter your One-Time Password</div></td>
                <td><div class="editor-field">
            <input type="text" placeholder="OTP" name="otp" /></div></td>
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
    <%:  Html.ActionLink("Change Password", "Change Password", "") %>
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
