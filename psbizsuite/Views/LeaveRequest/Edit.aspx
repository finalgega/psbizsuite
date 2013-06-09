<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.LeaveRequest>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>LeaveRequest</legend>

        <%: Html.HiddenFor(model => model.LeaveRequestId) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.StartDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.StartDate) %>
            <%: Html.ValidationMessageFor(model => model.StartDate) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.EndDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.EndDate) %>
            <%: Html.ValidationMessageFor(model => model.EndDate) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Reason) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Reason) %>
            <%: Html.ValidationMessageFor(model => model.Reason) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Employee_UserAccount_Username, "Employee") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("Employee_UserAccount_Username", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.Employee_UserAccount_Username) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.LeavePolicy_LeavePolicyId, "leavepolicy") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("LeavePolicy_LeavePolicyId", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.LeavePolicy_LeavePolicyId) %>
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
