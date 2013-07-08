﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>

<ul class="select">
    <li><a href="#nogo"><b>Purchases</b></a>
        <div class="select_sub">
            <ul class="sub">
                <li> <%: Html.ActionLink("Add Purchases", "Create", "Purchase", null, null) %> </li>
                <li> <%: Html.ActionLink("Manage Purchases", "Index", "Purchase", null, null) %> </li>
            </ul>
         </div>                                                    
    </li>
</ul>
  <div class="nav-divider">&nbsp;</div>
<ul class="select">
    <li><a href="#nogo"><b>Invoice</b></a>
        <div class="select_sub">
            <ul class="sub">
                <li> <%: Html.ActionLink("Manage invoice", "Index", "Invoice", null, null) %> </li>
                <li> <%: Html.ActionLink("Create new invoice", "Create", "Invoice", null, null) %> </li>
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