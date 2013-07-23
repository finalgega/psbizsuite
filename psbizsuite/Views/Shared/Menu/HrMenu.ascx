<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>

<ul class="select">
    <li><a href="#nogo"><b>Attendance</b></a></li>
</ul>
<div class="nav-divider">&nbsp;</div>
<ul class="select">
    <li><a href="#nogo"><b>Employee</b></a>
        <div class="select_sub">
            <ul class="sub">
                <li> <%: Html.ActionLink("Manage employee profile", "Index", "Employee", null, null) %> </li>
                <li> <%: Html.ActionLink("Add new employee", "Create", "Employee", null, null) %> </li>
                <li> <%: Html.ActionLink("Manage employee position", "Index", "EmployeePosition", null, null) %> </li>
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
                <li><%: Html.ActionLink("Manage my leave", "MyList", "LeaveRequest", null, null) %></li>
                <li><%: Html.ActionLink("Manage leave policies", "Index", "LeavePolicy", null, null) %></li>
                <li><%: Html.ActionLink("Manage leave requests", "AllList", "LeaveRequest", null, null) %>></li>
            </ul>
        </div>
    </li>
</ul>
<div class="nav-divider">&nbsp;</div>
<ul class="select">
    <li><a href="#nogo"><b>Payroll</b></a><div class="select_sub">
        <ul class="sub">
            <li><a href="#">Calculate payroll</a></li>
            <li><a href="#">View payroll history</a></li>
        </ul>
    </div>
    </li>
</ul>





