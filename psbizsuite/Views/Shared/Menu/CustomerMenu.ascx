<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>


<ul class="select">
    <li><%: Html.ActionLink("View orders","ViewEditOrder","Order",null,null) %></li>
</ul>
<div class="nav-divider">&nbsp;</div>
<ul class="select">
    <li><a href="#nogo"><b>Support Ticket</b></a>
        <div class="select_sub">
            <ul class="sub">
                <li><a href="../Attendance/ViewAttendanceSummary">Send support ticket</a></li>
                <li><a href="../Employee/EditEmployeeDetail">View tickets</a></li>
            </ul>
        </div>
    </li>
</ul>
