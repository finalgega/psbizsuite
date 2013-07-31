<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.purchase>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    &nbsp;&nbsp;&nbsp;<%: Html.ActionLink("Create New", "Create") %>
</p>
    <div id="page-heading">
        <h1>Purchases <%= (string)(Session["username"]) %></h1>
    </div>

    <table border="0" class="zeroPS" id="content-table" style="width: 100%;">
        <tr>
            <th rowspan="3" class="sized">
                <img src="../../Assets/Images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
            <th class="topleft"></th>
            <td id="tbl-border-top">&nbsp;</td>
            <th class="topright"></th>
            <th rowspan="3" class="sized">
                <img src="../../Assets/Images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
        </tr>
        <tr>
            <td id="tbl-border-left"></td>
            <td>
                <!--  start content-table-inner ...................................................................... START -->
                <div id="content-table-inner">

                    <!--  start table-content  -->
                    <div id="table-content">
                        <table border="0" class="zeroPS" style="width: 100%;" id="product-table">
                            <tr>
                                <th class="table-header-check"><a id="toggle-all"></a></th>
                                <th class="table-header-repeat line-left minwidth-1"><a href="">PurchaseID</a></th>
                                <th class="table-header-repeat line-left minwidth-1"><a href="">Purchase Description</a></th>
                                <th class="table-header-repeat line-left minwidth-1"><a href="">Price</a></th>
                                <th class="table-header-repeat line-left"><a href="">Value Added Tax</a></th>
                                <th class="table-header-repeat line-left"><a href="">Notes</a></th>
                                <th class="table-header-repeat line-left"><a href="">Advance Payment tax</a></th>
                                <th class="table-header-repeat line-left"><a href="">TimeStamp</a></th>
                                <th class="table-header-repeat line-left"><a href="">Supplier</a></th>
                             <th class="table-header-repeat line-left"><a href="">PurchaseType</a></th>
                          
                                
                                <th class="table-header-repeat line-left"><a href=""></a></th>
                              
                            </tr>
                            <% foreach (var item in Model)
                               { %>
                            <tr>

                                <td>
                                    <input type="checkbox" />
                                </td>
                                <td>
                                    <%: Html.DisplayFor(modelItem => item.PurchaseID) %>
                                </td>
                                 <td>
                                    <%: Html.DisplayFor(modelItem => item.Article) %>
                                </td>
                                <td >
                                    <%: Html.DisplayFor(modelItem => item.Price) %>
                                </td>
                                <td >
                                    <%: Html.DisplayFor(modelItem => item.VAT) %>
                                </td>
                                <td >
                                    <%: Html.DisplayFor(modelItem => item.Notes) %>
                                </td>
                                <td >
                                    <%: Html.DisplayFor(modelItem => item.AdvancePaymentTax) %>
                                </td>
                                <td >
                                    <%: Html.DisplayFor(modelItem => item.TimeStamp) %>
                                </td>
                                    <td >
                                    <%: Html.DisplayFor(modelItem => item.supplier.FullName) %>
                                </td>
                                        <td >
                                    <%: Html.DisplayFor(modelItem => item.purchasetype.Name) %>
                                </td>
                                
                                <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.PurchaseID }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.PurchaseID }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.PurchaseID }) %>
        </td>
                              
                            </tr>
                            <% } %>
                        </table>
                           <div class="clear"></div>

                </div>
                <!--  end content-table-inner ............................................END  -->
            </td>
            <td id="tbl-border-right"></td>
        </tr>
        <tr>
            <th class="sized bottomleft"></th>
            <td id="tbl-border-bottom">&nbsp;</td>
            <th class="sized bottomright"></th>
        </tr>
    </table>
    <div class="clear">&nbsp;</div>


    <!--
<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.Article) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Price) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.VAT) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Notes) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.TimeStamp) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.AdvancePaymentTax) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.supplier.FullName) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.purchasetype.Name) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Article) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Price) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.VAT) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Notes) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.TimeStamp) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.AdvancePaymentTax) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.supplier.FullName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.purchasetype.Name) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.PurchaseID }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.PurchaseID }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.PurchaseID }) %>
        </td>
    </tr>
<% } %>

</table>
    -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
     <% if (User.IsInRole("HR Manager")) %>
    <% Html.RenderPartial("../Shared/Menu/HrMenu"); %>
    <% if (User.IsInRole("Sale")) %>
    <% Html.RenderPartial("../Shared/Menu/SaleMenu"); %>
    <% if (User.IsInRole("Customer")) %>
    <% Html.RenderPartial("../Shared/Menu/CustomerMenu"); %>
    <% if (User.IsInRole("Logistic")) %>
    <% Html.RenderPartial("../Shared/Menu/LogisticMenu"); %>
    <% if (User.IsInRole("Accountant")) %>
    <% Html.RenderPartial("../Shared/Menu/AccountantMenu"); %>
</asp:Content>
   <asp:Content ID="Content4" ContentPlaceHolderID="MyAccount" runat="server">
         <a href='<%: Url.Action("Edit/" + User.Identity.Name, "Employee") %>'>
             <img src="../../../psbizsuite/Assets/Images/shared/nav/nav_myaccount.gif" width="93" height="14" alt="" />
         </a>
 </asp:Content>  
  <asp:Content ID="Content5" ContentPlaceHolderID="LogoImg" runat="server">
         <img src="../../../psbizsuite/Assets/Images/shared/logo-Accounting.png" height="40" alt="" />
 </asp:Content> 