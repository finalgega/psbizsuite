<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.invoice>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>invoice</legend>

    
    <br/>
    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Name) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Name) %>
    </div>

    <br/>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ProposalDetails) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ProposalDetails) %>
    </div>
    <br/>
    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.TimeStamp) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.TimeStamp) %>
    </div>
    <br/>
    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.AdvancePaymentTax) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.AdvancePaymentTax) %>
    </div>
    <br/>
    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Paid) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Paid) %>
    </div>
    <br/>
    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.order.Status) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.order.Status) %>
    </div>
    <br/>
</fieldset>
<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

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
  <asp:Content ID="Content4" ContentPlaceHolderID="MyAccount" runat="server">
         <a href='<%: Url.Action("Edit/" + User.Identity.Name, "Employee") %>'>
             <img src="../../Assets/Images/shared/nav/nav_myaccount.gif" width="93" height="14" alt="" />
         </a>
 </asp:Content>  
  <asp:Content ID="Content5" ContentPlaceHolderID="LogoImg" runat="server">
         <img src="../../Assets/Images/shared/logo-Accounting.png" height="40" alt="" />
 </asp:Content>  