<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<div class="nav-divider">&nbsp;</div>
<div class="showhide-account">
    <!-- TODO: REROUTING -->
    <a href="<%= Url.Action("Index", "Inventory") %>">
        <img src="../../Assets/Images/shared/nav/nav_myaccount.gif" width="93" height="14" alt="" />" />
    </a>
</div>
<div class="nav-divider">&nbsp;</div>
<a href="" id="logout">
    <img src="../../Assets/Images/shared/nav/nav_logout.gif" width="64" height="14" alt="" /></a>
<div class="clear">&nbsp;</div>
<!--  end account-content -->
</div>

<!-- end nav-right -->

<!--  start nav -->
<div class="nav">
    <div class="table">
        <!-- START Nav Bar-->

        <ul class="select">
            <li><a href="#nogo"><b>Inventory</b></a>
                <div class="select_sub">
                    <ul class="sub">
                        <li><%: Html.ActionLink("Manage inventory item", "Index", "Inventory", null, null) %> </li>
                        <li><%: Html.ActionLink("Create inventory item", "Create", "Inventory", null, null) %> </li>
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
