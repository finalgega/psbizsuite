<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>


<ul class="select">
    <li><a href="#nogo"><b>Customer</b></a>
         <div class="select_sub">
            <ul class="sub">
                <li><%: Html.ActionLink("View own profile", "Index", "Customer", null, null) %></li>
            </ul>
        </div>
     </li>
</ul><ul class="select">
    <li><a href="#nogo"><b>Order</b></a>
         <div class="select_sub">
            <ul class="sub">
                <li><%: Html.ActionLink("View orders", "Index", "Order", null, null) %></li>
            </ul>
        </div>
     </li>
</ul>
<div class="nav-divider">&nbsp;</div>
<ul class="select">
    <li><a href="#nogo"><b>Support Ticket</b></a>
        <div class="select_sub">
            <ul class="sub">
                <li><%: Html.ActionLink("Send support ticket", "Create", "SupportTicket", null, null) %></li>
                <li><%: Html.ActionLink("View support tickets", "Index", "SupportTicket", null, null) %></li>
            </ul>
        </div>
    </li>
</ul>
