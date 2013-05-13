<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Accounting.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    GenerateIR
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">
        <h2>Add New Invoice</h2>
        <p>&nbsp;</p>
        <table style="width: 100%">
            <tr>
                <td style="width: 61px">&nbsp;</td>
                <td class="yellow-right" style="width: 61px">Client:</td>
                <td>
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Sample Company</asp:ListItem>
                        <asp:ListItem>Sample2</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 61px">&nbsp;</td>
                <td class="yellow-right" style="width: 61px">Invoice Date</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Enabled="False" EnableTheming="False">29th January 2013</asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 61px">&nbsp;</td>
                <td class="yellow-right" style="width: 61px">Due date:</td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td style="width: 61px">&nbsp;</td>
                <td class="yellow-right" style="width: 61px">
                    <br />
                    Invoice ID</td>
                <td>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="0001111"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 61px">&nbsp;</td>
                <td class="yellow-right" style="width: 61px">
                    <br />
                    Other Options</td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Tax(25%)" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td style="width: 61px">&nbsp;</td>
                <td class="yellow-right" style="width: 61px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 61px">&nbsp;</td>
                <td class="yellow-right" colspan="2">
<!--  start content-table-inner ...................................................................... START -->
                    <div id="content-table-inner">

                    <!--  start table-content  -->
                        <div id="table-content">
                            <table id="product-table" border="0" class="zeroPS" style="width: 100%;">
                                <tr>
                       
                                    <th class="table-header-repeat line-left minwidth-1"><a href="">Quantity</a></th>
                                    <th class="table-header-repeat line-left minwidth-1" style="width: 267px"><a href="">Description</a></th>
                                     <th class="table-header-repeat line-left minwidth-1" colspan="2"><a href="">Price</a></th>
                                     <th class="table-header-repeat line-left minwidth-1"><a href="">Total</a></th>
                                    
                                </tr>
                                <tr>
                                    
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" Width="44px">8</asp:TextBox>
                                    </td>
                                    <td style="width: 267px">
                                        <asp:TextBox ID="TextBox2" runat="server" Width="223px">Company item</asp:TextBox>
                                    </td>
                                    <td colspan="2">
                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                            <asp:ListItem>$</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:TextBox ID="TextBox3" runat="server">50.00</asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList3" runat="server">
                                            <asp:ListItem>$</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:TextBox ID="TextBox4" runat="server">400.00</asp:TextBox>
                                    </td>
                                    
                                </tr>
                                
                                <tr>
                                    
                                    <td>
                                        <asp:Button ID="Button1" runat="server" Text="+" />
                                    </td>
                                    <td colspan="4">&nbsp;</td>
                                    
                                </tr>
                                
                                <tr>
                                    
                                    <td>&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                    <td colspan="2">Subtotal:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $400.00<br />
                                        Tax:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + $100.00<br />
                                        Grand Total:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $500.00</td>
                                    
                                </tr>
                                
                            </table>
                        </div>
                    <!--  end content-table  -->
                    </div>
                </td>
            </tr>
            <tr>
                <td style="width: 61px; height: 18px;"></td>
                <td class="yellow-right" style="width: 61px; height: 18px;"></td>
                <td style="height: 18px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="61px" Text="Add Invoice" Width="146px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            </tr>
            </table>
    </form>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
