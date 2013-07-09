<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.SupportTicket>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ViewSupportTicket
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Assets/Css/order.css" type="text/css" rel="stylesheet" />

    <h2>View Support Ticket</h2>

    <fieldset>
        <legend>SupportTicket</legend>
        <table>
            <tr>
                <td>
                    <div class="display-label">
                        Enquiry Type
                    </div>
                </td>
                <td>
                    <div class="display-field">
                        <%: Html.DisplayFor(model => model.EnquiryType) %>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="display-label">Enquiry Priority</div>
                </td>
                <td>
                    <div class="display-field">
                        <%: Html.DisplayFor(model => model.EnquiryPriority) %>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="display-label">
                        Previous Enquiry (if applicable)
                    </div>
                </td>
                <td>
                    <div class="display-field">
                        <%: Html.DisplayFor(model => model.ReferenceId) %>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="display-label">
                        Enquiry Details
                    </div>
                </td>
                <td>
                    <div class="display-field">
                        <%: Html.DisplayFor(model => model.Details) %>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="display-label">
                        Employee's reply
                    </div>
                </td>
                <td>
                    <div class="display-field">
                        <%: Html.DisplayFor(model => model.Reply) %>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="display-label">
                        Customer Name
                    </div>
                </td>
                <td>
                    <div class="display-field">
                        <%: Html.DisplayFor(model => model.Customer.FullName) %>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="display-label">
                        Replied by
                    </div>
                </td>
                <td>
                    <div class="display-field">
                        <%: Html.DisplayFor(model => model.Employee.FullName) %>
                    </div>
                </td>
            </tr>
        </table>
    </fieldset>
    <p>

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.SupportTicketId }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
    <% if (User.IsInRole("HR Manager")) %>
    <% Html.RenderPartial("../Shared/Menu/HrMenu"); %>
    <% if (User.IsInRole("Sale")) %>
    <% Html.RenderPartial("../Shared/Menu/SaleMenu"); %>
    <% if (User.IsInRole("Customer")) %>
    <% Html.RenderPartial("../Shared/Menu/CustomerMenu"); %>
    <% if (User.IsInRole("Logistic")) %>
    <% Html.RenderPartial("../Shared/Menu/LogisticMenu"); %>
    <% if (User.IsInRole("Accountant")) %>
    <% Html.RenderPartial("../Shared/Menu/AccountantMenu"); %>
</asp:Content>
