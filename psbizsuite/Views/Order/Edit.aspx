<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.OrderItem>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>OrderItem</legend>

        <%: Html.HiddenFor(model => model.OrderItemId) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Description) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Description) %>
            <%: Html.ValidationMessageFor(model => model.Description) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.UnitPrice) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.UnitPrice) %>
            <%: Html.ValidationMessageFor(model => model.UnitPrice) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Quantity) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Quantity) %>
            <%: Html.ValidationMessageFor(model => model.Quantity) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Order_OrderId, "Order") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("Order_OrderId", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.Order_OrderId) %>
        </div>

        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
