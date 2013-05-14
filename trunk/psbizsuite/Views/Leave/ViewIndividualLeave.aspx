<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ViewIndividualLeave
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <!--  start page-heading -->
    <div id="page-heading">
        <h1>Manage Leaves</h1>
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
                                   
                                    <th class="table-header-repeat line-left minwidth-1"><a href="">Applied By</a></th>
                                    <th class="table-header-repeat line-left minwidth-1"><a href="">Days of leave</a></th>
                                    <th class="table-header-repeat line-left minwidth-1"><a href="">Start Date</a></th>
                                    <th class="table-header-repeat line-left"><a href="">End Date</a></th>
                                    <th class="table-header-repeat line-left"><a href="">Policy</a></th>
                                    <th class="table-header-repeat line-left"><a href="">Status</a></th>
                                    <th class="table-header-options line-left"><a href="">Options</a></th>
                                </tr>
                                <tr>
                               
                                    <td>Sabev George</td>
                                    <td>1</td>
                                    <td>5/8/2013</td>
                                    <td>5/8/2013</td>
                                    <td>Medical leave</td>
                                    <td>Pending</td>
                                    <td class="options-width">
                                        <a href="" title="Approve" class="icon-5 info-tooltip"></a>
                                        <a href="" title="Not approve" class="icon-2 info-tooltip"></a>
                                    </td>
                                </tr>
                                <tr class="alternate-row">
                                    
                                    <td>Sabev George</td>
                                    <td>1</td>
                                    <td>5/8/2013</td>
                                    <td>5/8/2013</td>
                                    <td>Medical leave</td>
                                    <td>Pending</td>
                                    <td class="options-width">
                                        <a href="" title="Approve" class="icon-5 info-tooltip"></a>
                                        <a href="" title="Not approve" class="icon-2 info-tooltip"></a>
                                    </td>
                                </tr>
                                <tr>
                                 
                                    <td>Sabev George</td>
                                    <td>1</td>
                                    <td>5/8/2013</td>
                                    <td>5/8/2013</td>
                                    <td>Medical leave</td>
                                    <td>Pending</td>
                                    <td class="options-width">
                                        <a href="" title="Approve" class="icon-5 info-tooltip"></a>
                                        <a href="" title="Not approve" class="icon-2 info-tooltip"></a>
                                    </td>
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

<asp:Content ID="NavHR" ContentPlaceHolderID="NavContent" runat="server">
    <%--<ul class="select">
        <li><a href="#nogo"><b>Attendance</b><!--[if IE 7]><!--></a><!--<![endif]--></ul>
    <div class="nav-divider">&nbsp;</div>
    <ul class="select">
        <li><a href="#nogo"><b>Employee Details</b><!--[if IE 7]><!--></a><!--<![endif]--></ul>
    <div class="nav-divider">&nbsp;</div>
    <ul class="select">
        <li><a href="#nogo"><b>Leave</b><!--[if IE 7]><!--></a><!--<![endif]-->
            <div class="select_sub">
                <ul class="sub">
                    <li><a href="#nogo">Manage Leave</a></li>
                    <li><a href="#nogo">Manage Policy</a></li>
                </ul>
            </div>
    </ul>
    <div class="nav-divider">&nbsp;</div>
    <ul class="select">
        <li><a href="#nogo"><b>Payroll</b><!--[if IE 7]><!--></a><!--<![endif]-->
    </ul>
    <div class="nav-divider">&nbsp;</div>--%>
</asp:Content>