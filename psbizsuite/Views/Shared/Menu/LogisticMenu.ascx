<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<ul class="select">
    <li><a href="#nogo"><b>Inventory</b></a>
        <div class="select_sub">
            <ul class="sub">
                <li> <%: Html.ActionLink("Manage inventory item", "Index", "Inventory", null, null) %> </li>
                <li> <%: Html.ActionLink("Create inventory item", "Create", "Inventory", null, null) %> </li>
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
