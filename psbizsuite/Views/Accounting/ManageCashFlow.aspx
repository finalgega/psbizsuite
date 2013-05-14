<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ManageCashFlow
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">
        <h2>Cash Flow</h2>
        <p>Jan 01, 2013 - Jan 31, 2013
            <asp:HyperLink ID="HyperLink1" runat="server" BackColor="White" Font-Underline="True" ForeColor="#6699FF">Change</asp:HyperLink>
        </p>
        <p>&nbsp;</p>
                            <table id="product-table" border="0" class="zeroPS" style="width: 100%;">
                                <tr>
                       
                                    <th class="table-header-repeat line-left minwidth-1"><a href="">Date</a></th>
                                    <th class="table-header-repeat line-left minwidth-1" style="width: 267px"><a href="">Title</a></th>
                                     <th class="table-header-repeat line-left minwidth-1"><a href="">Payment</a></th>
                                     <th class="table-header-repeat line-left minwidth-1"><a href="">Deposit</a></th>
                               
                                    
                                    <th class="table-header-repeat line-left minwidth-1"><a href="">Balance</a></th>
                               
                                    
                                </tr>
                                <tr>
                                    
                                    <td>
                                        Jan 01, 2013</td>
                                    <td style="width: 267px">
                                        Buying of office equipment</td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text="$5000.00" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                    
                                    <td>
                                        $30,000.00</td>
                                    
                                </tr>
                                
                                <tr>
                                    
                                    <td>
                                        Jan 02, 2013</td>
                                    <td style="width: 267px">
                                        Rental of office space</td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="$1500.00" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                    
                                    <td>
                                        $28,500.00</td>
                                    
                                </tr>
                                
                                <tr>
                                    
                                    <td>
                                        Jan 15, 2013</td>
                                    <td style="width: 267px">
                                        Sale of products</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="$1000.00" ForeColor="Lime"></asp:Label>
                                    </td>
                                    
                                    <td>
                                        $29,500.00</td>
                                    
                                </tr>
                                
                                </table>
                        </form>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
