<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>

<ul class="select">
    <li><a href="#nogo"><b>Cash Flow</b></a>
        <div class="select_sub">
            <ul class="sub">
                <li> <%: Html.ActionLink("Manage cash flow", "Index", "CashFlow", null, null) %> </li>
                <li> <%: Html.ActionLink("Create cash flow", "Create", "CashFlow", null, null) %> </li>
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
                <li><a href="../Employee/EditEmployeeDetail">Apply leave</a></li>
                <li><a href="../Employee/EditEmployeeDetail">Manage my leave</a></li>
            </ul>
        </div>
    </li>
</ul>