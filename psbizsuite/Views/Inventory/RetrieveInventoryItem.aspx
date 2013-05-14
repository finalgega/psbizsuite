<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    RetrieveInventoryItem
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Assets/Css/inventory.css" rel="stylesheet" type="text/css" />
<h2>RetrieveInventoryItem</h2>
     <form id="retrieveInventory" method="get" runat="server">
        <table>
            <tr>
                <th>Item ID : </th>
                <td>
                    <!--<asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>-->
                    <select>
                        <option>1</option>
                    </select>
                </td>
                <td colspan="2" rowspan="4">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Assets/Images/md22.jpg"/></td>
            </tr>
            <tr>
                <th>Item Name : </th>
                <td>
                    <asp:Label ID="itemName" runat="server" Text="MD22 - 24V 5A Dual H-Bridge Motor Driver"></asp:Label>
                </td>
            </tr>
            <tr>
                <th>Item Description : </th>
                <td>
                    <asp:Label ID="itemDescrption" Text="The MD22 is a robust low/medium power motor driver, designed to supply power for two motors." runat="server" />
                </td>
            </tr>
            <tr>
                <th>Manufacturer : </th>
                <td>
                    <asp:Label runat="server" ID="manufacturer" Text="ProLight Solutions"></asp:Label>
                </td>
            </tr>
            <tr>
                <th>Serial Number : </th>
                <td>
                    <asp:Label runat="server" ID="serial" Text="Y2N4S95VQ"></asp:Label>
                </td>
                <th>Amount in Stock  : </th>
                <td>
                    <asp:Label runat="server" ID="amtInStock" Text="5"></asp:Label>
                </td>
            </tr>
            <tr>
                <th>Cost Per Unit : </th>
                <td>
                    <asp:Label runat="server" ID="costPerUnit" Text="19.90"></asp:Label>
                </td>
                <th>Price Per Unit : </th>
                <td>
                    <asp:Label runat="server" ID="pricePerUnit" Text="49.90"></asp:Label>
                </td>
            </tr>
            <tr>
                <th>Category : </th>
                <td>
                    <asp:Label runat="server" ID="category" Text="Electronic Parts"></asp:Label>
                </td>
                <th>Location : </th>
                <td>
                    <asp:Label runat="server" ID="location" Text="Warehouse 3 Shelf 3-A4"></asp:Label>
                </td>
            </tr>
            <tr>
                <th>Weight per Unit (kg) : </th>
                <td>
                    <asp:Label runat="server" ID="weightPerKilo" Text="0.08"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
