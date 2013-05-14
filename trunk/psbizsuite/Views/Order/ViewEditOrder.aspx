<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    View/EditOrder
</asp:Content>

<asp:Content ID="NavOrder" ContentPlaceHolderID="NavContent" runat="server">
    <%--<ul class="select">
        <li><a href="#nogo"><b>Order</b><!--[if IE 7]><!--></a><!--<![endif]-->
            <div class="select_sub">
                <ul class="sub">
                    <li><a href="#nogo">Create Order</a></li>
                    <li><a href="#nogo">View/Edit Order</a></li>
                </ul>
            </div>
    </ul>
    <div class="nav-divider">&nbsp;</div>
    <ul class="select">
        <li><a href="#nogo"><b>Customer Profile</b><!--[if IE 7]><!--></a><!--<![endif]-->
            <div class="select_sub">
                <ul class="sub">
                    <li><a href="#nogo">Create Customer Profile</a></li>
                    <li><a href="#nogo">View/Edit Customer Profile</a></li>
                </ul>
            </div>
    </ul>
    <div class="nav-divider">&nbsp;</div>
    <ul class="select">
        <li><a href="#nogo"><b>Support</b><!--[if IE 7]><!--></a><!--<![endif]-->
            <div class="select_sub">
                <ul class="sub">
                    <li><a href="#nogo">Send Support Ticket</a></li>
                    <li><a href="#nogo">View Support Tickets</a></li>
                    <li><a href="#nogo">Reply Support Tickets</a></li>
                </ul>
            </div>
    </ul>
    <div class="nav-divider">&nbsp;</div>--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Assets/Css/order.css" type="text/css" rel="stylesheet" />
    <form id="form1" runat="server">

<h2>View/Edit Order</h2>
        <table>
            <tr>
                <td><asp:Label ID="OrderItem1" runat="server" Text="Order Item 1"></asp:Label></td>
                <td><asp:Label ID="OrderItem1Desc" runat="server" Text="Printer - $499"></asp:Label></td>
                <td><img src="../../Assets/Images/ItemImg.jpg" width="80" height="80" /></td>
                <td><input id="OrderItem1Rm" type="checkbox" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="OrderItem2" runat="server" Text="Order Item 2"></asp:Label></td>
                <td><asp:Label ID="OrderItem2Desc" runat="server" Text="Black Ink - $50"></asp:Label></td>
                <td></td>
                <td><input id="OrderItem2Rm" type="checkbox" /></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="RemoveItem" runat="server" Text="Remove Item from Order" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="SearchInventory" runat="server" Text="Search Inventory"></asp:Label></td>
                <td><asp:TextBox ID="SearchInventoryField" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="SearchInventoryResults" runat="server" Text="Search Inventory Results"></asp:Label></td>
                <td><asp:DropDownList ID="SearchInventoryResultsDDL" runat="server">
                <asp:ListItem>Printer</asp:ListItem>
                <asp:ListItem>Black Ink</asp:ListItem>
                </asp:DropDownList></td>
            </tr>
            <tr>
                <td><asp:Label ID="ItemImage" runat="server" Text="Item Image"></asp:Label></td>
                <td><img src="../../Assets/Images/ItemImg.jpg" width="80" height="80" /></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="AddItem" runat="server" Text="Add Item to Order" /></td>
            </tr>
            <tr><td></td></tr>
        </table>
           
    </form>

</asp:Content>
