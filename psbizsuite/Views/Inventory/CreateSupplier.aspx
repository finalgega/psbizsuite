<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Supplier>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CreateSupplier
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create Supplier</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>UserAccount</legend>
        <table>
            <tr>
                <th><%: Html.LabelFor(model => model.FullName) %></th>
                <td><%: Html.EditorFor(model => model.FullName) %>
            </td>
                <th><%: Html.LabelFor(model => model.Description) %></th>
                <td><%: Html.EditorFor(model => model.Description) %><%: Html.ValidationMessageFor(model => model.Description) %></td>
                
            </tr>
            <tr>
            <th> <%: Html.LabelFor(model => model.Email) %></th>
            <td> <%: Html.EditorFor(model => model.Email) %>
            <%: Html.ValidationMessageFor(model => model.Email) %></td>
                <th><%: Html.LabelFor(model => model.Address) %></th>
                <td><%: Html.EditorFor(model => model.Address) %>
           </td>
           </tr>
            <tr>
                <th><%: Html.LabelFor(model => model.FaxNo) %></th>
                <td><%: Html.EditorFor(model => model.FaxNo) %></td>
                <th><%: Html.LabelFor(model => model.PhoneNo) %></th>
                <td><%: Html.EditorFor(model => model.PhoneNo) %>
                    
                </td>
            </tr>
            <tr><td></td><td><input type="submit" value="Create" /></td></tr>
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
