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
                <li> <%: Html.ActionLink("Manage employee position", "Index", "EmployePosition", null, null) %> </li>
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
                <li><a href="../Attendance/ViewAttendanceSummary">Manage leave policy</a></li>
                <li><a href="../Employee/EditEmployeeDetail">Manage leave request</a></li>
            </ul>
        </div>
    </li>
</ul>
<div class="nav-divider">&nbsp;</div>
<ul class="select">
    <li><a href="#nogo"><b>Payroll</b></a><div class="select_sub">
        <ul class="sub">
            <li><a href="../Attendance/ViewAttendanceSummary">Calculate payroll</a></li>
            <li><a href="../Employee/EditEmployeeDetail">View payroll history</a></li>
        </ul>
    </div>
    </li>
</ul>





