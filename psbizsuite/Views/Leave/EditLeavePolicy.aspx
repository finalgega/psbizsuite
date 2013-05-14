<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    EditLeavePolicy
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- start content-outer -->
    <div id="content-outer">
        <!-- start content -->
        <div id="content">

            <div id="page-heading">
                <h1>Edit Annual Leave Policy</h1>
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
                                        <!-- start id-form -->
                                        <table border="0" class="zeroPS id-form">
                                            <tr>
                                                <th>Policy Name:</th>
                                                <td>
                                                    <input type="text" class="inp-form" disabled value="Annual Leave for 1 year of service" /></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>Policy Description: </th>
                                                <td>
                                                    <textarea rows="" cols="" class="form-textarea">An employee's annual leave entitlement under Part IV of the Employment Act</textarea>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>Leave Days:</th>
                                                <td> <input type="text" class="inp-form"  value="7" /></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>Service Years:</th>
                                                  <td>
                                                      <select>
                                                      <%for( int i=1; i<=12; i++ ){%>
                                                        <option><%= i %></option>
                                                      <% } %>
                                                      </select>
                                                      <select>
                                                          <option>Year</option>
                                                          <option>Month</option>
                                                      </select>
                                                  </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>Paid Leave:</th>
                                                <td>
                                                    <select>
                                                        <option selected="selected">Paid</option>
                                                        <option>UnPaid</option>
                                                    </select>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>Period</th>
                                                <td>
                                                    <select>
                                                        <option selected="selected">Yearly</option>
                                                        <option>Monthly</option>
                                                    </select>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td>
                                                    <img src="../../Assets/mages/shared/blank.gif" width="10" height="1" alt="blank" /></td>
                                            </tr>
                                            <tr>
                                                <th>&nbsp;</th>
                                                <td style="vertical-align: top">
                                                    <input type="button" value="Edit" class="form-submit" />
                                                    <input type="reset" value="" class="form-reset" />
                                                </td>
                                                <td></td>
                                            </tr>
                                        </table>
                                        <!-- end id-form  -->

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


            <div class="clear">&nbsp;</div>

        </div>
        <!--  end content -->
        <div class="clear">&nbsp;</div>
    </div>
    <!--  end content-outer -->


</asp:Content>

<asp:Content ID="NavHR" ContentPlaceHolderID="NavContent" runat="server">
 <%--   <ul class="select">
        <li><a href="#nogo"><b>Attendance</b><!--[if IE 7]><!--></a><!--<![endif]-->
    </ul>
    <div class="nav-divider">&nbsp;</div>
    <ul class="select">
        <li><a href="#nogo"><b>Employee Details</b><!--[if IE 7]><!--></a><!--<![endif]-->
    </ul>
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
