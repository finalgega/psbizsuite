﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Inventory>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Assets/Css/inventory.css" type="text/css" rel="stylesheet" />
<h2>Create</h2>
<div class="contentWrapper">
<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Inventory</legend>
        <div class="FormWrapper">
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
            <%: Html.LabelFor(model => model.category.CatName) %>
        </div> 
      
        <div class="editor-field">
            <%: Html.DropDownList("Category_CatId",String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.Category_CatId) %>
        </div> 
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Supplier_UserAccount_Username, "Supplier") %>
        </div>
  
        <div class="editor-field">
            <%: Html.DropDownList("Supplier_UserAccount_Username","Please select the supplier the good came from") %>
            <%: Html.ValidationMessageFor(model => model.Supplier_UserAccount_Username) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
            </div>
    </fieldset>
<% } %>
       </table>
    </div>
<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
