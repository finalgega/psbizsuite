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
        <% using (Html.BeginForm("Create", "Inventory", FormMethod.Post, new { enctype = "multipart/form-data" }))
           { %>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Inventory</legend>
            <table>
                <tr>
                    <th>
                        <%: Html.LabelFor(model => model.ItemName) %>
                    </th>
                    <td><%: Html.EditorFor(model => model.ItemName) %> </td>
                    <td><%: Html.ValidationMessageFor(model => model.ItemName) %> </td>
                </tr>
                <tr>
                    <th>
                        <%: Html.LabelFor(model => model.ItemDescription) %>
                    </th>
                    <td>
                        <%: Html.EditorFor(model => model.ItemDescription) %>
                    </td>
                    <td><%: Html.ValidationMessageFor(model => model.ItemDescription) %>
                    </td>
                </tr>
                <tr>
                    <th><%: Html.LabelFor(model => model.UnitCost) %>
                    </th>
                    <td><%: Html.EditorFor(model => model.UnitCost) %></td>
                    <td>
                        <%: Html.ValidationMessageFor(model => model.UnitCost) %></td>
                    <th>
                        <%: Html.LabelFor(model => model.UnitWeightKilo) %>
                    </th>
                    <td>
                        <%: Html.EditorFor(model => model.UnitWeightKilo) %> </td>
                    <td>
                        <%: Html.ValidationMessageFor(model => model.UnitWeightKilo) %> </td>
                </tr>
                <tr>
                    <th>
                        <%: Html.LabelFor(model => model.Quantity) %>
                    </th>
                    <td>
                        <%: Html.EditorFor(model => model.Quantity) %>
                    </td>
                    <td><%: Html.ValidationMessageFor(model => model.Quantity) %>
                    </td>
                    <th>
                        <%: Html.LabelFor(model => model.Location) %>
                    </th>
                    <td>
                        <%: Html.EditorFor(model => model.Location) %>
                    </td>
                    <td><%: Html.ValidationMessageFor(model => model.Location) %>
                    </td>
                </tr>
                <tr>
                    <th>
                        <%: Html.LabelFor(model => model.category.CatName) %>
                    </th>
                    <td>
                        <%: Html.DropDownList("Category_CatId",String.Empty) %>
                    </td>
                    <td><%: Html.ValidationMessageFor(model => model.Category_CatId) %>
                    </td>
                    <th>
                        <%: Html.LabelFor(model => model.Supplier_UserAccount_Username, "Supplier") %>
                    </th>
                    <td><%: Html.DropDownList("Supplier_UserAccount_Username","Please select the supplier the good came from") %>
                    </td>
                    <td><%: Html.ValidationMessageFor(model => model.Supplier_UserAccount_Username) %>
                    </td>
                    <th>Image :  
                    </th>
                    <td>
                        <input type="file" name="uploadFile" />
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="Create" /></td>
                </tr>
            </table>
        </fieldset>
        <% } %>
    </div>
    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
