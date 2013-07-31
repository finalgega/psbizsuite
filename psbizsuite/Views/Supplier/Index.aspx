<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.Supplier>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
      <div id="page-heading">
        <h1>Manage Inventory Details </h1>
    </div>
    <table border="0" class="zeroPS" id="content-table" style="width: 100%;">
        <tr>
            <th rowspan="3" class="sized">
                <img src="../../../psbizsuite/Assets/Images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
            <th class="topleft"></th>
            <td id="tbl-border-top">&nbsp;</td>
            <th class="topright"></th>
            <th rowspan="3" class="sized">
                <img src="../../../psbizsuite/Assets/Images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
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
                                <th class="table-header-repeat line-left minwidth-1"><a href=""><%: Html.DisplayNameFor(model => model.FullName) %></a></th>
                                <th class="table-header-repeat line-left minwidth-1"><a href=""> <%: Html.DisplayNameFor(model => model.Address) %></a></th>
                                <th class="table-header-repeat line-left"><a href=""><%: Html.DisplayNameFor(model => model.PhoneNo) %></a></th>
                                <th class="table-header-repeat line-left"><a href=""><%: Html.DisplayNameFor(model => model.Email) %></a></th>
                                <th class="table-header-repeat line-left"><a href=""><%: Html.DisplayNameFor(model => model.Description) %></a></th>
                                <th class="table-header-options line-left"></th>
                            </tr>
                            <% foreach (var item in Model)
                               { %>
                            <tr>
                                <td>
                                    <input type="checkbox" />
                                </td>
                                <td>
                                    <%: Html.DisplayFor(modelItem => item.FullName) %>
                                </td>
                                <td>
                                    <%: Html.DisplayFor(modelItem => item.Address) %>
                                </td>
                                <td>
                                    <%: Html.DisplayFor(modelItem => item.PhoneNo) %>
                                </td>
                                <td>
                                    <%: Html.DisplayFor(modelItem => item.Email) %>
                                </td>
                                <td>
                                    <%: Html.DisplayFor(modelItem => item.Description) %>
                                </td>
                                <td class="options-width">
                                    <%: Html.ActionLink(" ", "Edit", new { id = item.UserAccount_Username }, new { @class = "icon-1", title="More details/Edit" }) %>
                                    <%: Html.ActionLink(" ", "Details", new { id = item.UserAccount_Username }, new { @class = "icon-3" ,title="Details" }) %>
                                    <%: Html.ActionLink(" ", "Delete", new { id = item.UserAccount_Username }, new { @class = "icon-2", title="Delete" }) %>      
                                </td>
                            </tr>
                            <% } %>
                        </table>
                        <div class="clear"></div>

                    </div>
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
    <img src="../../../psbizsuite/Assets/Images/shared/logo-Logistic.png" height="40" alt="" />
</asp:Content>
