<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Accounting.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ViewIR
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">
        <h2>&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Invoice ID:"></asp:Label>
            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>0001111</asp:ListItem>
            </asp:DropDownList>
        </h2>
        <p>&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Date of Invoice: 29th January 2013"></asp:Label>
            &nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Due date: 29th February 2013"></asp:Label>
        </p>
        <p>&nbsp;</p>
        <p>&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="To: Sample Company(Client)"></asp:Label>
        </p>
        <p>&nbsp;</p>
        <p>&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text="From: Seller Company"></asp:Label>
            &nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
                            <table id="product-table" border="0" class="zeroPS" style="width: 100%;">
                                <tr>
                       
                                    <th class="table-header-repeat line-left minwidth-1"><a href="">Quantity</a></th>
                                    <th class="table-header-repeat line-left minwidth-1" style="width: 267px"><a href="">Description</a></th>
                                     <th class="table-header-repeat line-left minwidth-1" colspan="2"><a href="">Price</a></th>
                                     <th class="table-header-repeat line-left minwidth-1"><a href="">Total</a></th>
                                    
                                </tr>
                                <tr>
                                    
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text="8"></asp:Label>
                                    </td>
                                    <td style="width: 267px">
                                        <asp:Label ID="Label3" runat="server" Text="Company item"></asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:Label ID="Label1" runat="server" Text="$50.00"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="$400.00"></asp:Label>
                                    </td>
                                    
                                </tr>
                                
                                <tr>
                                    
                                    <td>&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                    <td colspan="2">Subtotal:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $400.00<br />
                                        Tax:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + $100.00<br />
                                        Grand Total:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $500.00</td>
                                    
                                </tr>
                                
                            </table>
                        </form>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
