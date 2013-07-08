<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.purchase>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>
        .address {
            width: 300px;
            height: 80px;
            resize: none;
        }
    </style>
    
    <!-- start content-outer -->
    <div id="content-outer">
        <!-- start content -->
        <div id="content">

            <div id="page-heading">
                <h1>Add New Invoice</h1>
            </div>


            <table border="0" class="zeroPS" style="width: 100%" id="content-table">
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
                        <!--  start content-table-inner -->
                        <div id="content-table-inner">

                            <table border="0" class="zeroPS" style="width: 100%">
                                <tr style="vertical-align: top">
                                    <td>

                                        <% using (Html.BeginForm("Create","Purchase"))
                                           { %>
                                        <%: Html.AntiForgeryToken() %>
                                        <%: Html.ValidationSummary(true) %>

                                        <!-- start id-form -->
                                        <table border="0" class="zeroPS id-form">
                                            <tr>
                                                <th>PurchaseID:</th>
                                                <td><%: Html.EditorFor(model => model.PurchaseID) %>
                                                <%: Html.ValidationMessageFor(model => model.PurchaseID) %></td>
                                            </tr>
                                            <tr>
                                                <th>Purchase Name:</th>
                                                <td><%: Html.EditorFor(model => model.Article) %>
                                                <%: Html.ValidationMessageFor(model => model.Article) %></td>
                                            </tr>
                                            <tr>
                                                <th>Price:</th>
                                                <td><%: Html.EditorFor(model => model.Price) %>
                                                <%: Html.ValidationMessageFor(model => model.Price) %></td>
                                            </tr>
                                            <tr>
                                                <th>Value Added Tax:</th>
                                                <td><%: Html.EditorFor(model => model.VAT) %>
                                                <%: Html.ValidationMessageFor(model => model.VAT) %></td>
                                            </tr>
                                            <tr>
                                                <th>AdvancePaymentTax:</th>
                                                <td><%: Html.TextBoxFor(model => model.AdvancePaymentTax )%>
                                                <%: Html.ValidationMessageFor(model => model.AdvancePaymentTax)%></td>
                                            </tr>
                                            <tr>
                                                <th>Notes:</th>
                                                <td><%: Html.EditorFor(model => model.Notes) %>
                                                <%: Html.ValidationMessageFor(model => model.Notes) %></td>
                                            </tr>
                                            <tr>
                                                <th>Supplier</th>
                                                <td><%: Html.DropDownList("Supplier_UserAccount_Username", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.Supplier_UserAccount_Username) %></td>
                                            </tr>
                                            <tr>
                                                <th>Purchase Type</th>
                                                <td><%: Html.DropDownList("Purchasetype_PurchaseTypeID", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.Purchasetype_PurchaseTypeID) %></td>
                                            </tr>
                                            
                                            <tr>
                                                <th>&nbsp;</th>
                                                <td style="vertical-align: top">
                                                    <input type="submit" class="form-submit" />
                                                    
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
    
    
    
    <!--
<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>purchase</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Article) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Article) %>
            <%: Html.ValidationMessageFor(model => model.Article) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Price) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Price) %>
            <%: Html.ValidationMessageFor(model => model.Price) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.VAT) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.VAT) %>
            <%: Html.ValidationMessageFor(model => model.VAT) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Notes) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Notes) %>
            <%: Html.ValidationMessageFor(model => model.Notes) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.TimeStamp) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.TimeStamp) %>
            <%: Html.ValidationMessageFor(model => model.TimeStamp) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.AdvancePaymentTax) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.AdvancePaymentTax) %>
            <%: Html.ValidationMessageFor(model => model.AdvancePaymentTax) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Supplier_UserAccount_Username, "supplier") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("Supplier_UserAccount_Username", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.Supplier_UserAccount_Username) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Purchasetype_PurchaseTypeID, "purchasetype") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("Purchasetype_PurchaseTypeID", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.Purchasetype_PurchaseTypeID) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>
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
