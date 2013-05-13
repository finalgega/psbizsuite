<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CreateInventoryItem
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Assets/Css/inventory.css" type="text/css" rel="stylesheet" />
    <h2>CreateInventoryItem</h2>
    <form id="createInventoryForm" runat="server">
        <table >
            <tr>
                <th colspan="4" id="tblFormHeader">New Inventory Item</th>
            </tr>
            <tr>
                <th>Item ID : </th>
                <td>
                    <asp:Label ID="lblItemID" runat="server" Text="1"></asp:Label>
                </td>
                <td id="tblImg" colspan="2" rowspan="4">
                    <asp:Image ID="Image1" runat="server" CssClass="imgWell" />
                </td>
            </tr>
            <tr>
                <th>Item Name : </th>
                <td>
                    <input type="text" name="itemName" id="itenName" placeholder="Name of item" required />
                </td>
            </tr>
            <tr>
                <th>Item Description : </th>
                <td>
                    <input type="text" multiline="true" name="itemDescription" id="itemDescrption" placeholder="Item features, description,etc" required />
                </td>
            </tr>
            <tr>
                <th>Manufacturer : </th>
                <td>
                    <input type="text" placeholder="Manufacturer" id="txtManufacturer" name="txtManufacturer" required />
                </td>
            </tr>
            <tr>
                <th>Serial Nmber : </th>
                <td>
                    <input type="text" placeholder="S/N:203-148015-203" id="txtSerial" name="txtSerial" required />
                </td>
                <th>Amount in Stock  : </th>
                <td>
                    <input type="number" name="itemQuantity" id="itemQuantity" placeholder="How many available" min="0" required />
                </td>
            </tr>
            <tr>
                <th>Cost Per Unit : </th>
                <td>
                    <input type="number" name="itemCostPerUnit" id="itemCostPerUnit" placeholder="How much it cost you" min="0" step="any" required />
                </td>
                <th>Price Per Unit : </th>
                <td>
                    <input type="number" name="itemPricePerUnit" id="itemPricePerUnit" placeholder="How much you are charging" required step="any" />
                </td>
            </tr>
            <tr>
                <th>Category : </th>
                <td>
                    <select name="categories" id="categories">
                        <option value="1">A category</option>
                        <option value="2">B Category</option>
                    </select>
                </td>
                <th>Location : </th>
                <td>
                    <input type="text" id="txtLocation" name="txtLocation" placeholder="aisle 3-A shelf 27" />
                </td>
            </tr>
            <tr>
                <th>Weight per Unit (kg) : </th>
                <td>
                    <input type="number" placeholder="1.5" id="weight" name="weight" />
                </td>
                <th>Reorder Level : </th>
                <td>
                    <asp:TextBox runat="server" ID="reorderLevel" placeholder="the stock level where the quantity should be replenished"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="inventoryFormSubmit" id="inventoryFormSubmit" />
                </td>
            </tr>
        </table>
    </form>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
