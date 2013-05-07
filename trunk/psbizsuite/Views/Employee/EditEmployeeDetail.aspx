<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    EditEmployeeDetail
</asp:Content>



<asp:Content ID="NavHR" ContentPlaceHolderID="NavContent" runat="server">
    <ul class="select">
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
    <div class="nav-divider">&nbsp;</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- start content-outer -->
    <div id="content-outer">
        <!-- start content -->
        <div id="content">

            <div id="page-heading">
                <h1>Sabev George</h1>
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
                                                <th>Full Name:</th>
                                                <td>
                                                    <input type="text" class="inp-form" /></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>NRIC: </th>
                                                <td>
                                                    <input type="text" class="inp-form" disabled /></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>Contact No:</th>
                                                <td>
                                                    <input type="text" class="inp-form" />
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>Date Of Birth:</th>

                                                <td class="noheight">
                                                    <form id="chooseDateForm" action="#">
                                                        <table border="0" class="zeroPS">
                                                            <tr style="vertical-align: top">

                                                                <td>


                                                                    <select id="d" class="styledselect-day">
                                                                        <option value="">dd</option>
                                                                        <option value="1">1</option>
                                                                        <option value="2">2</option>
                                                                        <option value="3">3</option>
                                                                        <option value="4">4</option>
                                                                        <option value="5">5</option>
                                                                        <option value="6">6</option>
                                                                        <option value="7">7</option>
                                                                        <option value="8">8</option>
                                                                        <option value="9">9</option>
                                                                        <option value="10">10</option>
                                                                        <option value="11">11</option>
                                                                        <option value="12">12</option>
                                                                        <option value="13">13</option>
                                                                        <option value="14">14</option>
                                                                        <option value="15">15</option>
                                                                        <option value="16">16</option>
                                                                        <option value="17">17</option>
                                                                        <option value="18">18</option>
                                                                        <option value="19">19</option>
                                                                        <option value="20">20</option>
                                                                        <option value="21">21</option>
                                                                        <option value="22">22</option>
                                                                        <option value="23">23</option>
                                                                        <option value="24">24</option>
                                                                        <option value="25">25</option>
                                                                        <option value="26">26</option>
                                                                        <option value="27">27</option>
                                                                        <option value="28">28</option>
                                                                        <option value="29">29</option>
                                                                        <option value="30">30</option>
                                                                        <option value="31">31</option>
                                                                    </select>
                                                                </td>
                                                                <td>
                                                                    <select id="m" class="styledselect-month">
                                                                        <option value="">mmm</option>
                                                                        <option value="1">Jan</option>
                                                                        <option value="2">Feb</option>
                                                                        <option value="3">Mar</option>
                                                                        <option value="4">Apr</option>
                                                                        <option value="5">May</option>
                                                                        <option value="6">Jun</option>
                                                                        <option value="7">Jul</option>
                                                                        <option value="8">Aug</option>
                                                                        <option value="9">Sep</option>
                                                                        <option value="10">Oct</option>
                                                                        <option value="11">Nov</option>
                                                                        <option value="12">Dec</option>
                                                                    </select>
                                                                </td>
                                                                <td>
                                                                    <select id="y" class="styledselect-year">
                                                                        <option value="">yyyy</option>
                                                                        <option value="2005">2005</option>
                                                                        <option value="2006">2006</option>
                                                                        <option value="2007">2007</option>
                                                                        <option value="2008">2008</option>
                                                                        <option value="2009">2009</option>
                                                                        <option value="2010">2010</option>
                                                                    </select>

                                                                </td>
                                                                <td><a href="" id="date-pick">
                                                                    <img src="../../Assets/Images/forms/icon_calendar.jpg" alt="" /></a></td>
                                                            </tr>
                                                        </table>
                                                    </form>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>Position:</th>
                                                <td>
                                                    <input type="text" class="inp-form" /></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>Salary</th>
                                                <td>
                                                    <input type="text" class="inp-form" />
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>Employment Start Date:</th>
                                                <td class="noheight">
                                                    <form id="Form1" action="#">
                                                        <table border="0" class="zeroPS">
                                                            <tr style="vertical-align: top">

                                                                <td>
                                                                    <select id="Select1" class="styledselect-day">
                                                                        <option value="">dd</option>
                                                                        <option value="1">1</option>
                                                                        <option value="2">2</option>
                                                                        <option value="3">3</option>
                                                                        <option value="4">4</option>
                                                                        <option value="5">5</option>
                                                                        <option value="6">6</option>
                                                                        <option value="7">7</option>
                                                                        <option value="8">8</option>
                                                                        <option value="9">9</option>
                                                                        <option value="10">10</option>
                                                                        <option value="11">11</option>
                                                                        <option value="12">12</option>
                                                                        <option value="13">13</option>
                                                                        <option value="14">14</option>
                                                                        <option value="15">15</option>
                                                                        <option value="16">16</option>
                                                                        <option value="17">17</option>
                                                                        <option value="18">18</option>
                                                                        <option value="19">19</option>
                                                                        <option value="20">20</option>
                                                                        <option value="21">21</option>
                                                                        <option value="22">22</option>
                                                                        <option value="23">23</option>
                                                                        <option value="24">24</option>
                                                                        <option value="25">25</option>
                                                                        <option value="26">26</option>
                                                                        <option value="27">27</option>
                                                                        <option value="28">28</option>
                                                                        <option value="29">29</option>
                                                                        <option value="30">30</option>
                                                                        <option value="31">31</option>
                                                                    </select>
                                                                </td>
                                                                <td>
                                                                    <select id="Select2" class="styledselect-month">
                                                                        <option value="">mmm</option>
                                                                        <option value="1">Jan</option>
                                                                        <option value="2">Feb</option>
                                                                        <option value="3">Mar</option>
                                                                        <option value="4">Apr</option>
                                                                        <option value="5">May</option>
                                                                        <option value="6">Jun</option>
                                                                        <option value="7">Jul</option>
                                                                        <option value="8">Aug</option>
                                                                        <option value="9">Sep</option>
                                                                        <option value="10">Oct</option>
                                                                        <option value="11">Nov</option>
                                                                        <option value="12">Dec</option>
                                                                    </select>
                                                                </td>
                                                                <td>
                                                                    <select id="Select3" class="styledselect-year">
                                                                        <option value="">yyyy</option>
                                                                        <option value="2005">2005</option>
                                                                        <option value="2006">2006</option>
                                                                        <option value="2007">2007</option>
                                                                        <option value="2008">2008</option>
                                                                        <option value="2009">2009</option>
                                                                        <option value="2010">2010</option>
                                                                    </select>

                                                                </td>

                                                            </tr>
                                                        </table>
                                                    </form>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>Start Working Hour:</th>
                                                <td>
                                                    <input type="text" class="inp-form" /></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>End Working Hour:</th>
                                                <td>
                                                    <input type="text" class="inp-form" /></td>
                                                <td>
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
