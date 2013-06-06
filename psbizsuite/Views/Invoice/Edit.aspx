<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.invoice>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>invoice</legend>

        <%: Html.HiddenFor(model => model.invoiceId) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.StartDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.StartDate) %>
            <%: Html.ValidationMessageFor(model => model.StartDate) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DueDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DueDate) %>
            <%: Html.ValidationMessageFor(model => model.DueDate) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.OtherOptions) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.OtherOptions) %>
            <%: Html.ValidationMessageFor(model => model.OtherOptions) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Order_OrderId, "order") %>
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
