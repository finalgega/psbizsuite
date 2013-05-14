<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ViewAttendanceSummary
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <script>

        $(function () {
            $('#calendar').datepicker({
                inline: true,
                maxDate: '0'
            });

        });
    </script>
    <link href="../../Assets/Css/datePicker.css" rel="stylesheet">

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
                                        <div id="calendar"></div>
                                    </td>
                                    <td>
                                        <table class="zeroPS" id="product-table" style="margin-left:100px; width:347px; height:294px" >
                                            <tr>
                                                <th class="table-header-repeat line-left minwidth-1" style="height:28px">
                                                    <a>Name</a>
                                                </th>
                                                <th class="table-header-repeat line-left minwidth-1"style="height:28px">
                                                    <a>Time In</a>
                                                </th>
                                                <th class="table-header-repeat line-left minwidth-1"style="height:28px">
                                                   <a>Time Out</a>
                                                </th>
                                            </tr>
                                            <tr>
                                                <td>
                                                    John
                                                </td>
                                                <td>
                                                    09:00
                                                </td>
                                                <td>
                                                    18:00
                                                </td>
                                            </tr>
                                             <tr>
                                                <td>
                                                    John
                                                </td>
                                                <td>
                                                    09:00
                                                </td>
                                                <td>
                                                    18:00
                                                </td>
                                            </tr>
                                             <tr style="color:red;">
                                                <td>
                                                    John
                                                </td>
                                                <td>
                                                    09:30
                                                </td>
                                                <td>
                                                    18:00
                                                </td>
                                            </tr>
                                             <tr>
                                                <td>
                                                    John
                                                </td>
                                                <td>
                                                    09:00
                                                </td>
                                                <td>
                                                    18:00
                                                </td>
                                                  <tr>
                                                <td>
                                                    John
                                                </td>
                                                <td>
                                                    09:00
                                                </td>
                                                <td>
                                                    18:00
                                                </td>
                                            </tr>
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

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
