<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
        <ul class="select">
            <li><a href="#nogo"><b>Inventory</b></a>
                <div class="select_sub">
                    <ul class="sub">
                        <li><%: Html.ActionLink("Manage inventory item", "Index", "Inventory", null, null) %> </li>
                        <li><%: Html.ActionLink("Create inventory item", "Create", "Inventory", null, null) %> </li>
                        <li><%: Html.ActionLink("Generate Inventory Report","GenerateReport","Inventory") %></li>
                    </ul>
                </div>
            </li>
        </ul>
<div class="nav-divider">&nbsp;</div>
<ul class="select">
    <li><a href="#nogo"><b>Category</b></a>
        <div class="select_sub">
            <ul class="sub">
                <li><%: Html.ActionLink("Manage Categories","Index","Category",null,null) %></li>
                <li><%: Html.ActionLink("Create Category","Create","Category",null,null) %></li>
            </ul>
        </div>
</ul>
        <div class="nav-divider">&nbsp;</div>
        <ul class="select">
            <li><a href="#nogo"><b>Supplier</b></a>
                <div class="select_sub">
                    <ul class="sub">
                        <li><%: Html.ActionLink("Manage Suppliers","Index","Supplier",null,null) %></li>
                        <li><%: Html.ActionLink("Create Supplier","CreateSupplier","Supplier") %></li>
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
