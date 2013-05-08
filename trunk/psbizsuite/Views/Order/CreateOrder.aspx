<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CreateOrder
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

<h2>CreateOrder</h2>
        <p>
            <asp:Label ID="SearchInventory" runat="server" Text="Search Inventory"></asp:Label>
            <asp:TextBox ID="SearchInventoryField" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="SearchInventoryResults" runat="server" Text="Search Inventory Results"></asp:Label>
            <asp:DropDownList ID="SearchInventoryResultsDDL" runat="server">
                <asp:ListItem>Printer</asp:ListItem>
                <asp:ListItem>Black Ink</asp:ListItem>
            </asp:DropDownList>
        </p>

    </form>

</asp:Content>
