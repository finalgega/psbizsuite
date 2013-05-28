<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.UserAccount>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    DirectorDashboard
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script src="../../Assets/Jquery/jquery.flot.min.js"></script>
    <script> $(document).ready(function () {
     var graphData = [{
         // Visits
         data: [[1, 2000], [2, 1300], [3, 1600], [4, 1900], [5, 1950], [6, 0], [7, 0], [8, 0], [9, 0], [10, 0], [11, 0], [12, 0]],
         color: '#71c73e'
     }
     ];


     // Lines
     $.plot($('#graph-lines'), graphData, {
         series: {
             points: {
                 show: true,
                 radius: 5
             },
             lines: {
                 show: true
             },
             shadowSize: 0
         },
         grid: {
             color: '#646464',
             borderColor: 'transparent',
             borderWidth: 20,
             hoverable: true
         },
         xaxis: {
             ticks: [[1, 'Jan'], [2, 'Feb'], [3, 'Mar'], [4, 'Apr'], [5, 'May'], [6, 'Jun'], [7, 'Jul'], [8, 'Aug'], [9, 'Sep'], [10, 'Oct'], [11, 'Nov'], [12, 'Dec']]

         },
         yaxis: {

         }
     });





     function showTooltip(x, y, contents) {
         $('<div id="tooltip">' + contents + '</div>').css({
             top: y - 16,
             left: x + 20
         }).appendTo('body').fadeIn();
     }

     var previousPoint = null;

     $('#graph-lines').bind('plothover', function (event, pos, item) {
         if (item) {
             if (previousPoint != item.dataIndex) {
                 previousPoint = item.dataIndex;
                 $('#tooltip').remove();
                 var x = item.datapoint[0],
                     y = item.datapoint[1];
                 showTooltip(item.pageX, item.pageY, y + ' earned in ' + x);
             }
         } else {
             $('#tooltip').remove();
             previousPoint = null;
         }
     });

 });
    </script>

    <style>
        /* Graph Container */

        #graph-lines {
            width: 100%;
            height: 300px;
        }


        #tooltip {
            position: absolute;
            display: none;
            padding: 5px 10px;
            border: 1px solid #e1e1e1;
        }
    </style>

    <!-- start content-outer -->
    <div id="content-outer">
        <!-- start content -->
        <div id="content">


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


                            <table style="margin: 0 auto 0 auto;">
                                <tr>
                                    <td>
                                        <div>
                                            <h2>Profit earned in the current year</h2>
                                        </div>
                                    </td>
                                    <td>
                                    <!-- retrieve data from useraccount object -->
                                        <h2>Attendace of today <%= Model.Username %></h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 500px; padding-right:100px;">
                                        <div id="graph-lines"></div>
                                    </td>
                                    <td>
                                        <table>

                                            <tr>
                                                <td>
                                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8K-XyXLwv6Bh5FDg-7F18emHXiKc2YbbJSeElymeOtGSeBXgT" /></td>
                                                <td>
                                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8K-XyXLwv6Bh5FDg-7F18emHXiKc2YbbJSeElymeOtGSeBXgT" /></td>
                                                <td>
                                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8K-XyXLwv6Bh5FDg-7F18emHXiKc2YbbJSeElymeOtGSeBXgT" /></td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8K-XyXLwv6Bh5FDg-7F18emHXiKc2YbbJSeElymeOtGSeBXgT" /></td>
                                                <td>
                                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8K-XyXLwv6Bh5FDg-7F18emHXiKc2YbbJSeElymeOtGSeBXgT" /></td>
                                                <td>
                                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8K-XyXLwv6Bh5FDg-7F18emHXiKc2YbbJSeElymeOtGSeBXgT" /></td>

                                            </tr>
                                        </table>

                                    </td>
                                </tr>

                            </table>
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

            <div class="clear">&nbsp;</div>

        </div>
        <!--  end content -->
        <div class="clear">&nbsp;</div>
    </div>
    <!--  end content-outer -->

</asp:Content>

<%--<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>--%>
