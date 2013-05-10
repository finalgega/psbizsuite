<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CreateCustomerProfile
</asp:Content>

<asp:Content ID="NavOrder" ContentPlaceHolderID="NavContent" runat="server">
    <ul class="select">
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
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

<h2>Create Customer Profile</h2>
        <table>
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
            <tr>
                <td><asp:RadioButtonList ID="IsCustNew" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>New Customer</asp:ListItem>
                <asp:ListItem>Existing Customer</asp:ListItem>
                </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td><asp:Label ID="SearchCustomer" runat="server" Text="Search Inventory"></asp:Label></td>
                <td><asp:TextBox ID="SearchCustomerField" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="SearchCustomerResults" runat="server" Text="Search Customer Results"></asp:Label></td>
                <td><asp:DropDownList ID="SearchCustomerResultsDDL" runat="server">
                <asp:ListItem>Bill</asp:ListItem>
                <asp:ListItem>Lara</asp:ListItem>
                </asp:DropDownList></td>
            </tr>
        </table>
           
            <!-- Insert Create Customer here -->
    </form>

</asp:Content>
