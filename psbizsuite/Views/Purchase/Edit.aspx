<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.purchase>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>purchase</legend>

        <%: Html.HiddenFor(model => model.PurchaseID) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Article) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Article) %>
            <%: Html.ValidationMessageFor(model => model.Article) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Price) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Price) %>
            <%: Html.ValidationMessageFor(model => model.Price) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.VAT) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.VAT) %>
            <%: Html.ValidationMessageFor(model => model.VAT) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Notes) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Notes) %>
            <%: Html.ValidationMessageFor(model => model.Notes) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.TimeStamp) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.TimeStamp) %>
            <%: Html.ValidationMessageFor(model => model.TimeStamp) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.AdvancePaymentTax) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.AdvancePaymentTax) %>
            <%: Html.ValidationMessageFor(model => model.AdvancePaymentTax) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Supplier_UserAccount_Username, "supplier") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("Supplier_UserAccount_Username", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.Supplier_UserAccount_Username) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Purchasetype_PurchaseTypeID, "purchasetype") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("Purchasetype_PurchaseTypeID", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.Purchasetype_PurchaseTypeID) %>
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
