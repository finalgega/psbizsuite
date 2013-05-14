 <%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CreateInventoryItem
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Assets/Css/inventory.css" type="text/css" rel="stylesheet" />
    <h2>CreateInventoryItem</h2>
    <form id="createInventoryForm" runat="server">
        <table>
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
                    <asp:TextBox ID="itemName" name="itemName" placeholder="Name of Item" required runat="server" CssClass="formValues"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Item Description : </th>
                <td>
                    <asp:TextBox TextMode="MultiLine" id="itemDescription" placeholder="Item features, specifications,etc" CssClass="formValues" required runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Manufacturer : </th>
                <td>
                    <asp:TextBox placeholder="Manufacturer Name" id="itemManufacturer" CssClass="formValues" required="true" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Serial Number : </th>
                <td>
                    <asp:TextBox placeholder="E.g. 203-655632-1152" ID="itemSerial" CssClass="formValues" required="true" runat="server"></asp:TextBox>
                </td>
                <th>Amount in Stock  : </th>
                <td>
                    <asp:TextBox ID="itemQuantity" type="number" placeholder="The amount currently available" min="0" required="true" runat="server" CssClass="formValues"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Cost Per Unit : </th>
                <td>
                    <asp:TextBox type="number" ID="itemCostPerUnit" placeholder="How much it cost you per unit" min="0" step="any" required CssClass="formValues" runat="server"></asp:TextBox>
                </td>
                <th>Price Per Unit : </th>
                <td>
                    <asp:TextBox type="number" ID="itemPricePerUnit" placeholder="How much are you charging?" min="0" step="any" CssClass="formValues" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Category : </th>
                <td>
                    <select name="categories" id="categories">
                        <option value="1">Electronic Parts</option>
                        <option value="2">Sundries</option>
                        <option value="3">Stationery</option>
                     </select>
                </td>
                <th>Location : </th>
                <td>
                    <asp:TextBox ID="itemLocation" placeholder="Where is it located/shall be located" CssClass="formValues" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Weight per Unit (kg) : </th>
                <td>
                    <asp:TextBox type="number" placeholder="1.5" ID="itemWeight" CssClass="formValues" runat="server"></asp:TextBox>
                </td>
                <th>Reorder Level : </th>
                <td>
                    <asp:TextBox runat="server" ID="reorderLevel" placeholder="the stock level where the quantity should be replenished"  CssClass="formValues"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button text="Create Record" UseSubmitBehavior="true" ID="inventoryFormSubmit" runat="server" />
                </td>
            </tr>
        </table>
    </form>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
