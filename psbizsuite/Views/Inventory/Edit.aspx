<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.Inventory>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- start content-outer -->
    <div id="content-outer">
        <!-- start content -->
        <div id="content">

            <div id="page-heading">
                <h1>Edit Inventory Item Details</h1>
            </div>


            <table border="0" class="zeroPS" style="width: 100%" id="content-table">
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
                        <!--  start content-table-inner -->
                        <div id="content-table-inner">

                            <table border="0" class="zeroPS" style="width: 100%">
                                <tr style="vertical-align: top">
                                    <td>
                                        <% using (Html.BeginForm())
                                           { %>
                                        <%: Html.ValidationSummary(true) %>
                                        <%: Html.HiddenFor(model => model.InventoryId) %>
                                        <%: Html.HiddenFor(model => model.Category_CatId) %>
                                        <%: Html.HiddenFor(model => model.Image) %>
                                        <!-- start id-form -->
                                        <table border="0" class="zeroPS id-form">
                                            <tr>
                                                <th>Item Name:</th>
                                                <td><%: Html.TextBoxFor(model => model.ItemName, new { style="width: 250px;"})%>
                                                    <%: Html.ValidationMessageFor(model => model.ItemName)%></td>
                                            </tr>
                                            <tr>
                                                <th>Item Description:</th>
                                                <td><%: Html.EditorFor(model => model.ItemDescription) %>
                                                    <%: Html.ValidationMessageFor(model => model.ItemDescription) %></td>
                                            </tr>
                                            <tr>
                                                <th>Quantity:</th>
                                                <td><%: Html.EditorFor(model => model.Quantity) %>
                                                    <%: Html.ValidationMessageFor(model => model.Quantity) %></td>
                                            </tr>
                                            <tr>
                                                <th>Cost per Unit:</th>
                                                <td><%: Html.EditorFor(model => model.UnitCost) %>
                                                    <%: Html.ValidationMessageFor(model => model.UnitCost) %></td>
                                            </tr>
                                            <tr>
                                                <th>Unit Weight (kg):</th>
                                                <td><%: Html.TextAreaFor(model => model.UnitWeightKilo)%>
                                                    <%: Html.ValidationMessageFor(model => model.UnitWeightKilo) %></td>
                                            </tr>
                                            <tr>
                                                <th>Location: </th>
                                                <td><%: Html.EditorFor(model => model.Location) %>
                                                    <%: Html.ValidationMessageFor(model => model.Location) %></td>
                                            </tr>
                                            <tr>
                                                <th>SUpplier : </th>
                                                <td><%: Html.DropDownList("Supplier_UserAccount_Username","Please select the supplier the good was ordered from") %></td>
                                                <td><%: Html.ValidationMessageFor(model => model.Supplier_UserAccount_Username) %></td>
                                            </tr>
                                            <tr>
                                                <th>&nbsp;</th>
                                                <td style="vertical-align: top">
                                                    <input type="submit" class="form-submit" />
                                                    <input type="reset" class="form-reset" />
                                                </td>
                                                <td></td>
                                            </tr>

                                        </table>
                                        <!-- end id-form  -->
                                        <% } %>
                                    </td>
                                </tr>
                            </table>
                            <div class="clear"></div>
                        </div>
                        <!--  end content-table-inner  -->
                    </td>
                    <td id="tbl-border-right"></td>
                </tr>
                <tr>
                    <th class="sized bottomleft"></th>
                    <td id="tbl-border-bottom">&nbsp;</td>
                    <th class="sized bottomright"></th>
                </tr>
            </table>
        </div>
    </div>
    <div class="clear">&nbsp;</div>
    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

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
