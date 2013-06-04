<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.SupportTicket>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Send Support Ticket
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Send Support Ticket</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>SupportTicket</legend>

        <h2>Contact Us</h2>
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
        <div class="editor-label">
            Enquiry
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Question) %>
            <%: Html.ValidationMessageFor(model => model.Question) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Answer) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Answer) %>
            <%: Html.ValidationMessageFor(model => model.Answer) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Customer_UserAccount_Username, "Customer") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("Customer_UserAccount_Username", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.Customer_UserAccount_Username) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ReferenceId, "SupportTicket2") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("ReferenceId", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.ReferenceId) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Employee_UserAccount_Username, "Employee") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("Employee_UserAccount_Username", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.Employee_UserAccount_Username) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
