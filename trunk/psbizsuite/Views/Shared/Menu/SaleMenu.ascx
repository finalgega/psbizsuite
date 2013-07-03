<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<ul class="select">
    <li><a href="#nogo"><b>Order</b></a>
        <div class="select_sub">
            <ul class="sub">
                <li> <%: Html.ActionLink("Manage orders", "Index", "Order", null, null) %> </li>
                <li> <%: Html.ActionLink("Create order", "Create", "Order", null, null) %> </li>
            </ul>
            </div>
    </li>
</ul>
<div class="nav-divider">&nbsp;</div>
<ul class="select">
    <li><a href="#nogo"><b>Customer</b></a>
        <div class="select_sub">
            <ul class="sub">
                <li> <%: Html.ActionLink("Manage customers", "Index", "Customer", null, null) %> </li>
                <li> <%: Html.ActionLink("Create customer profile", "Create", "Customer", null, null) %> </li>
            </ul>
         </div>
    </li>
</ul>
<div class="nav-divider">&nbsp;</div>
<ul class="select">
    <li><a href="#nogo"><b>Support Ticket</b></a>
         <div class="select_sub">
            <ul class="sub">
                <li> <%: Html.ActionLink("Manage support ticket", "Index", "SupportTicketController", null, null) %> </li>
            </ul>
         </div>
    </li>
</ul>
<div class="nav-divider">&nbsp;</div>
<ul class="select">
    <li><a href="#nogo"><b>Leave</b></a>
        <div class="select_sub">
            <ul class="sub">
                <li><%: Html.ActionLink("Apply leave", "Create", "LeaveRequest", null, null) %></li>
                <li><%: Html.ActionLink("Manage my leave", "MyList", "LeaveRequest", null, null) %>
            </ul>
        </div>
    </li>
</ul>
