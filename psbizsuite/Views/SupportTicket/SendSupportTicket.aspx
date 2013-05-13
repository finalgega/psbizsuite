<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    SendSupportTicket
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
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

<h2>Send Support Ticket</h2>
        <p>Contact Us at:<br />
            292 Outlook Road<br />
            #02-1020<br />
            Singapore 801292<br />
            Telephone: 61212302<br />
            Fax: 61212309
        </p>
        <br /><br /><br />
        Email Us:<br />
        <table>
            <tr>
                <td><asp:Label ID="CustName" runat="server" Text="Customer Name"></asp:Label></td>
                <td><input id="CustNameField" type="text" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="CustPhone" runat="server" Text="Customer Phone Number"></asp:Label></td>
                <td><input id="CustPhoneField" type="text" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="CustEmail" runat="server" Text="Customer Email"></asp:Label></td>
                <td><input id="CustEmailField" type="text" /></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td><asp:Label ID="EnquiryType" runat="server" Text="Enquiry Type"></asp:Label></td>
                <td>
                    <select id="EnquiryTypeDDL">
                        <option>General Enquiry</option>
                        <option>Order Enquiry</option>
                        <option>Feedback</option>
                    </select></td>
            </tr>
            <tr>
                <td><asp:Label ID="EnquiryPriority" runat="server" Text="Enquiry Priority"></asp:Label></td>
                <td>
                    <select id="EnquiryPriorityDDL">
                        <option>Critical</option>
                        <option>Important</option>
                        <option>No Reply Required</option>
                    </select></td>
            </tr>
            <tr>
                <td><asp:Label ID="IsEnquiryNew" runat="server" Text="Is Enquiry New?"></asp:Label></td>
                <td>
                    <asp:RadioButtonList ID="IsEnquiryNewRadio" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>New Enquiry</asp:ListItem>
                    <asp:ListItem>Existing Enquiry</asp:ListItem>
                    </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <select id="ExistingEnquiry">
                        <option>Enquiry #1</option>
                    </select></td>
            </tr>
            <tr>
                <td><asp:Label ID="SupportTicket" runat="server" Text="Your enquiry"></asp:Label></td>
                <td><textarea id="SupportTicketField" cols="20" rows="2"></textarea></td>
            </tr>
            <tr>
                <td>
                    <input id="SendEnquiry" type="submit" value="Send enquiry" />
                </td>
            </tr>
        </table>
           
    </form>

</asp:Content>
