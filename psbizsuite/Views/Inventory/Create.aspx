<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Inventory>" %>

<script runat="server">

    protected void Unnamed_DataBinding(object sender, EventArgs e)
    {

    }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Assets/Css/inventory.css" type="text/css" rel="stylesheet" />
<h2>Create</h2>
<div class="contentWrapper">
<% using (Html.BeginForm("Inventory","Create",FormMethod.Post,new{ enctype= "multipart/form-data"})) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Inventory</legend>

            <%: Html.LabelFor(model => model.ItemName) %>

            <%: Html.EditorFor(model => model.ItemName) %>
            <%: Html.ValidationMessageFor(model => model.ItemName) %>

            <%: Html.LabelFor(model => model.ItemDescription) %>

            <%: Html.EditorFor(model => model.ItemDescription) %>
            <%: Html.ValidationMessageFor(model => model.ItemDescription) %>

            <%: Html.LabelFor(model => model.UnitCost) %>

            <%: Html.EditorFor(model => model.UnitCost) %>
            <%: Html.ValidationMessageFor(model => model.UnitCost) %>

            <%: Html.LabelFor(model => model.UnitWeightKilo) %>
       
            <%: Html.EditorFor(model => model.UnitWeightKilo) %>
            <%: Html.ValidationMessageFor(model => model.UnitWeightKilo) %>
       
            <%: Html.LabelFor(model => model.Quantity) %>

            <%: Html.EditorFor(model => model.Quantity) %>
            <%: Html.ValidationMessageFor(model => model.Quantity) %>
       
            <%: Html.LabelFor(model => model.Location) %>
        
            <%: Html.EditorFor(model => model.Location) %>
            <%: Html.ValidationMessageFor(model => model.Location) %>
       
            <%: Html.LabelFor(model => model.category.CatName) %>
       
            <%: Html.DropDownList("Category_CatId",String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.Category_CatId) %>
        
            <%: Html.LabelFor(model => model.Supplier_UserAccount_Username, "Supplier") %>
        
            <%: Html.DropDownList("Supplier_UserAccount_Username","Please select the supplier the good came from") %>
            <%: Html.ValidationMessageFor(model => model.Supplier_UserAccount_Username) %>
      
           Image :  
            <input type="image" name="imageFile" />
        <p>
            <input type="submit" value="Create"" />
        </p>
    </fieldset>
<% } %>
    </div>
<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
