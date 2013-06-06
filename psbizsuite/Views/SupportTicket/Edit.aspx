<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.SupportTicket>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>SupportTicket</legend>

        <%: Html.HiddenFor(model => model.SupportTicketId) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.EnquiryType) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.EnquiryType) %>
            <%: Html.ValidationMessageFor(model => model.EnquiryType) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.EnquiryPriority) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.EnquiryPriority) %>
            <%: Html.ValidationMessageFor(model => model.EnquiryPriority) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ReferenceId) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ReferenceId) %>
            <%: Html.ValidationMessageFor(model => model.ReferenceId) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Details) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Details) %>
            <%: Html.ValidationMessageFor(model => model.Details) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Reply) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Reply) %>
            <%: Html.ValidationMessageFor(model => model.Reply) %>
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
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
