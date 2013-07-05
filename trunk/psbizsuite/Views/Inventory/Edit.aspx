<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Inventory>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Inventory</legend>

        <%: Html.HiddenFor(model => model.InventoryId) %>
          <%: Html.HiddenFor(model => model.Category_CatId) %>
        <%: Html.HiddenFor(model => model.Image) %>
        
        <div class="editor-label">
            <%: Html.LabelFor(model => model.ItemName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ItemName) %>
            <%: Html.ValidationMessageFor(model => model.ItemName) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.ItemDescription) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ItemDescription) %>
            <%: Html.ValidationMessageFor(model => model.ItemDescription) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.UnitCost) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.UnitCost) %>
            <%: Html.ValidationMessageFor(model => model.UnitCost) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.UnitWeightKilo) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.UnitWeightKilo) %>
            <%: Html.ValidationMessageFor(model => model.UnitWeightKilo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Quantity) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Quantity) %>
            <%: Html.ValidationMessageFor(model => model.Quantity) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Location) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Location) %>
            <%: Html.ValidationMessageFor(model => model.Location) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Supplier_UserAccount_Username, "Supplier") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("Supplier_UserAccount_Username", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.Supplier_UserAccount_Username) %>
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
