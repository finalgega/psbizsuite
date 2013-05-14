<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ViewSupportTicket
</asp:Content>

<%--<asp:Content ID="NavOrder" ContentPlaceHolderID="NavContent" runat="server">
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
    <div class="nav-divider">&nbsp;</div>
</asp:Content>--%>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Assets/Css/order.css" type="text/css" rel="stylesheet" />
    <form id="form1" runat="server">

<h2>View Support Ticket</h2>
       
        <table>
            <tr>
                <td><asp:Label ID="EnquirySort" runat="server" Text="Sort Enquiry"></asp:Label></td>
                <td>
                    <select id="EnquirySortDDL">
                        <option>Date</option>
                        <option>Replied</option>
                        <option>Not Yet Replied</option>
                        <option>No Reply Required</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="EnquirySelect" runat="server" Text="Select an enquiry"></asp:Label></td>
                <td><asp:DropDownList ID="EnquirySelectDDL" runat="server">
                <asp:ListItem>Enquiry 1 - General</asp:ListItem>
                <asp:ListItem>Enquiry 2 - Feedback</asp:ListItem>
                </asp:DropDownList></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
            </tr>
            
            <tr>
                <td><asp:Label ID="SupportTicket" runat="server" Text="Customer enquiry"></asp:Label></td>
                <td><textarea id="SupportTicketField" cols="20" rows="2" readonly="readonly"></textarea></td>
            </tr>

        </table>
           
    </form>

</asp:Content>
