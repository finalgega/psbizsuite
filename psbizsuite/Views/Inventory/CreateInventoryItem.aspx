﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CreateInventoryItem
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Assets/Css/inventory.css" type="text/css" rel="stylesheet" />
    <script src="../../Assets/Jquery/jquery-1.7.2.js" type="text/javascript"></script>
    <script src="../../Assets/Jquery/purr-notifications.js" type="text/javascript"></script>
    <link href="../../Assets/Css/notifications.css" type="text/css" rel="stylesheet" />
    <script>
        function displaySuccessfulMessage(e) {
            alert('Inventory Item Created Successfully!');
        }
        $( document ).ready( function ()
        {
            $( '.show-normal' ).click( function () 
            {
                var itemName = $('#MainContent_itemName').val();
                var messageTitle = "Inventory Item Added Successfully!";
                var messageBody = itemName;
                var notice = '<div class="notice">'
                          + '<div class="notice-body">' 
                              + '<img src="../../Assets/Images/shared/logo.png" alt="" />'
                              + '<h3>' + messageTitle + '</h3>'
                              + '<p>' + messageBody + '</p>'
                          + '</div>'
                          + '<div class="notice-bottom">'
                          + '</div>'
                      + '</div>';
							  
                $( notice ).purr(
                    {
                        usingTransparentPNG: true
                    }
                )		
                return true;
            }
            );
				
            $( '.show-sticky' ).click( function () 
            {
                var itemName = $('#MainContent_itemName').val();
                var messageTitle = "Inventory Item Added Successfully!";
                var messageBody = itemName;
                var notice = '<div class="notice">'
                          + '<div class="notice-body">' 
                              + '<img src="../../Assets/Images/shared/logo.png" alt="" />'
                              + '<a class="close"/>'
                              + '<h3>' + messageTitle + '</h3>'
                              + '<p>' + messageBody + '</p>'
                          + '</div>'
                          + '<div class="notice-bottom">'
                          + '</div>'
                      + '</div>';
							  
                $( notice ).purr(
                    {
                        usingTransparentPNG: true,
                        isSticky: true
                    }
                );
						
                return false;
            }
            );
        }
               );
    </script>
    <h2>CreateInventoryItem</h2>
    <form id="createInventoryForm" runat="server" method="post" action="CreateItemRecord">
        <table>
            <tr>
                <th colspan="4" id="tblFormHeader">New Inventory Item</th>
            </tr>
            <tr>
                <th>Item ID : </th>
                <td>
                    <asp:Label ID="lblItemID" runat="server" Text="1"></asp:Label>
                </td>
                <td id="tblImg" colspan="2" rowspan="4">
                    <asp:Image ID="Image1" runat="server" CssClass="imgWell" />
                </td>
            </tr>
            <tr>
                <th>Item Name : </th>
                <td>
                    <asp:TextBox ID="itemName" name="itemName" placeholder="Name of Item" required runat="server" CssClass="formValues"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Item Description : </th>
                <td>
                    <asp:TextBox TextMode="MultiLine" ID="itemDescription" placeholder="Item features, specifications,etc" CssClass="formValues" required runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Manufacturer : </th>
                <td>
                    <asp:TextBox placeholder="Manufacturer Name" ID="itemManufacturer" CssClass="formValues" required="true" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Serial Number : </th>
                <td>
                    <asp:TextBox placeholder="E.g. 203-655632-1152" ID="itemSerial" CssClass="formValues" required="true" runat="server"></asp:TextBox>
                </td>
                <th>Amount in Stock  : </th>
                <td>
                    <asp:TextBox ID="itemQuantity" type="number" placeholder="The amount currently available" min="0" required="true" runat="server" CssClass="formValues"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Cost Per Unit : </th>
                <td>
                    <asp:TextBox type="number" ID="itemCostPerUnit" placeholder="How much it cost you per unit" min="0" step="any" required CssClass="formValues" runat="server"></asp:TextBox>
                </td>
                <th>Price Per Unit : </th>
                <td>
                    <asp:TextBox type="number" ID="itemPricePerUnit" placeholder="How much are you charging?" min="0" step="any" CssClass="formValues" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Category : </th>
                <td>
                    <select name="categories" id="categories">
                        <option value="1">Electronic Parts</option>
                        <option value="2">Sundries</option>
                        <option value="3">Stationery</option>
                    </select>
                </td>
                <th>Location : </th>
                <td>
                    <asp:TextBox ID="itemLocation" placeholder="Where is it located/shall be located" CssClass="formValues" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Weight per Unit (kg) : </th>
                <td>
                    <asp:TextBox type="number" placeholder="1.5" ID="itemWeight" CssClass="formValues" runat="server" step="any" min="0"></asp:TextBox>
                </td>
                <th>Reorder Level : </th>
                <td>
                    <asp:TextBox runat="server" ID="reorderLevel" placeholder="the stock level where the quantity should be replenished" CssClass="formValues"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button Text="Create Record" UseSubmitBehavior="true" ID="inventoryFormSubmit" runat="server" CssClass="show-normal" />
                </td>
                <td>
                    <input type="button" class="show-sticky" value="HELLO NOTIFICATION!" /></td>
            </tr>
        </table>
    </form>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
