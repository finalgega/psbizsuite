﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ViewInventory
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   <!--  start page-heading -->
    <div id="page-heading">
        <h1>ViewInventory</h1>
    </div>
    <!-- end page-heading -->

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
                        <form id="mainForm" action="">
                            <table border="0" class="zeroPS" style="width: 100%;" id="product-table">
                                <tr>
                                   
                                    <th class="table-header-repeat line-left minwidth-1"><a href="">Inventory ID</a></th>
                                    <th class="table-header-repeat line-left minwidth-1"><a href="">Inventory Name</a></th>
                                    <th class="table-header-repeat line-left minwidth-1"><a href="">Inventory Description</a></th>
                                    <th class="table-header-repeat line-left"><a href="">Cost Per Unit</a></th>
                                    <th class="table-header-repeat line-left"><a href="">Price Per Unit</a></th>
                                    <th class="table-header-repeat line-left"><a href="">Category</a></th>
                                    <th class="table-header-options line-left"><a href="">Location</a></th>
                                </tr>
                                <tr>
                               
                                    <td>1</td>
                                    <td>2TB WD Caviar Harddisk Drive 7200rpm</td>
                                    <td>2 Terabytes Hard Disk Drive 7200rpm</td>
                                    <td>61..90</td>
                                    <td>88.00</td>
                                    <td>Electronic Parts</td>
                                    <td class="options-width">
                                        Warehouse 3 Aisle 4 Shelve 5-A</td>
                                </tr>
                                <tr class="alternate-row">
                                    
                                    <td>2</td>
                                    <td>Asus P77 Motherboard</td>
                                    <td>Has a socket for 778 Intel CPU chip series. 4 RAM slots, </td>
                                    <td>88.90</td>
                                    <td>168.00</td>
                                    <td>Electronic Parts</td>
                                    <td class="options-width">
                                        Warehouse 3 Aisle 4 Shelve 5-B</td>
                                </tr>
                            </table>
                        </form>
                    </div>
                    <!--  end content-table  -->


                   
                    <!--  start paging..................................................... -->
                    <table border="0" class="zeroPS" id="paging-table">
                        <tr>
                            <td>
                                <a href="" class="page-far-left"></a>
                                <a href="" class="page-left"></a>
                                <div id="page-info">Page <strong>1</strong> / 2</div>
                                <a href="" class="page-right"></a>
                                <a href="" class="page-far-right"></a>
                            </td>
                            <td>
                                <select class="styledselect_pages">
                                    <option value="">Number of rows</option>
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                            </td>
                        </tr>
                    </table>
                    <!--  end paging................ -->

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
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
