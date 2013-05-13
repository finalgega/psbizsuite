<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    RetrieveInventoryItem
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>RetrieveInventoryItem</h2>
     <form id="retrieveInventory" method="get">
        <table>
            <tr>
                <th>Item ID : </th>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
                <td colspan="2" rowspan="4">
                    <asp:Image ID="Image1" runat="server" /></td>
            </tr>
            <tr>
                <th>Item Name : </th>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <th>Item Description : </th>
                <td>
                    <asp:Label ID="itemDescrption" runat="server" />
                </td>
            </tr>
            <tr>
                <th>Manufacturer : </th>
                <td>
                    <asp:Label runat="server" ID="manufacturer"></asp:Label>
                </td>
            </tr>
            <tr>
                <th>Serial Number : </th>
                <td>
                    <asp:Label runat="server" ID="serial"></asp:Label>
                </td>
                <th>Amount in Stock  : </th>
                <td>
                    <asp:Label runat="server" ID="amtInStock"></asp:Label>
                </td>
            </tr>
            <tr>
                <th>Cost Per Unit : </th>
                <td>
                    <asp:Label runat="server" ID="costPerUnit"></asp:Label>
                </td>
                <th>Price Per Unit : </th>
                <td>
                    <asp:Label runat="server" ID="pricePerUnit"></asp:Label>
                </td>
            </tr>
            <tr>
                <th>Category : </th>
                <td>
                    <asp:Label runat="server" ID="category"></asp:Label>
                </td>
                <th>Location : </th>
                <td>
                    <asp:Label runat="server" ID="location"></asp:Label>
                </td>
            </tr>
            <tr>
                <th>Weight per Unit (kg) : </th>
                <td>
                    <asp:Label runat="server" ID="weightPerKilo"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
