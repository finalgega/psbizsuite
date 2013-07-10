<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.invoice>" %>

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

                                        <% using (Html.BeginForm("Create","Invoice"))
                                           { %>
                                        <%: Html.AntiForgeryToken() %>
                                        <%: Html.ValidationSummary(true) %>

                                        <!-- start id-form -->
                                        <table border="0" class="zeroPS id-form">
                                          
                                            <tr>
                                                <th>Due Date:</th>
                                                <td><%: Html.EditorFor(model => model.ProposalDetails) %>
                                                <%: Html.ValidationMessageFor(model => model.ProposalDetails) %></td>
                                            </tr>
                                            
                                            <tr>
                                                <th>Notes:</th>
                                                <td><%: Html.EditorFor(model => model.Name) %>
                                                <%: Html.ValidationMessageFor(model => model.Name) %></td>
                                            </tr>
                                            <tr>
                                                <th>Amount Payable:</th>
                                                <td><%: Html.TextBoxFor(model => model.AdvancePaymentTax )%>
                                                    <%: Html.ValidationMessageFor(model => model.AdvancePaymentTax) %></td>
                                                
                                            </tr>
                                            <tr>
                                                <th>Paid:</th>
                                                <td><%: Html.EditorFor(model => model.Paid) %>
                                                <%: Html.ValidationMessageFor(model => model.Paid) %></td>
                                            </tr>
                                            <tr>
                                                <th>Order:</th>
                                                <td><%: Html.DropDownList("Order_OrderId") %>
                                                <%: Html.ValidationMessageFor(model => model.Order_OrderId) %></td>
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
        <legend>invoice</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.InvoiceNumber) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.InvoiceNumber) %>
            <%: Html.ValidationMessageFor(model => model.InvoiceNumber) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Name) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Name) %>
            <%: Html.ValidationMessageFor(model => model.Name) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Notes) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Notes) %>
            <%: Html.ValidationMessageFor(model => model.Notes) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ProposalDetails) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ProposalDetails) %>
            <%: Html.ValidationMessageFor(model => model.ProposalDetails) %>
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
            <%: Html.LabelFor(model => model.Paid) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Paid) %>
            <%: Html.ValidationMessageFor(model => model.Paid) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Order_OrderId, "order") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("Order_OrderId", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.Order_OrderId) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div> -->

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
             <img src="../../Assets/Images/shared/nav/nav_myaccount.gif" width="93" height="14" alt="" />
         </a>
 </asp:Content>  
  <asp:Content ID="Content5" ContentPlaceHolderID="LogoImg" runat="server">
         <img src="../../Assets/Images/shared/logo-Accounting.png" height="40" alt="" />
 </asp:Content>  
