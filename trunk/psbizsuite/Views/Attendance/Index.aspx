<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.Attendance>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <script>


      $(function () {
          $('#calendar').datepicker({
              inline: true,
              maxDate: '0',
          });
          $('#calendar').change(function () {
              var rawDate = $(this).datepicker("getDate");
              var formattedDate = $.datepicker.formatDate("yy-mm-dd", rawDate);
              window.location = "Attendance/Filter?date=" + formattedDate;
            
          });

      });
    </script>
    <link href="../../../psbizsuite/Assets/Css/datePicker.css" rel="stylesheet">

    <h2>View Employees' Attendances</h2>
    <!-- start content-outer -->
    <div id="content-outer">
        <!-- start content -->
        <div id="content">


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
                            <table style="margin: 0 auto 0 auto;">
                                <tr>
                                    <td>
                                        <div id="calendar"></div>
                                        <input type="hidden" id="datepicker_send" name="datepicker_send">
                                    </td>
                                    <td style=" vertical-align: top;">
                                        <table class="zeroPS" id="product-table" style="margin-left:100px; width:347px; max-height:294px" >
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
                                                <th class="table-header-repeat line-left minwidth-1"style="height:28px">
                                                    <a>Location</a>
                                                </th>
                                            </tr>
                                
                                            <% foreach(var item in Model){ %>
                                            <tr>
                                                <td>          
                                                     <%: Html.DisplayFor(modelItem => item.Employee_UserAccount_Username) %>
                                                </td>
                                                <td>
                                                     <%: Html.DisplayFor(modelItem => item.ClockInTime) %>
                                                </td>
                                                <td>
                                                     <%: Html.DisplayFor(modelItem => item.ClockOutTime) %>
                                                </td>
                                                 <td>
                                                     <%: Html.DisplayFor(modelItem => item.Location) %>
                                                </td>
                                            </tr>
                                            <% } %>   
                                       
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
             <img src="../../../psbizsuite/Assets/Images/shared/nav/nav_myaccount.gif" width="13" height="14" alt="" />
         </a>
 </asp:Content>  

 <asp:Content ID="Content5" ContentPlaceHolderID="LogoImg" runat="server">
         <img src="../../../psbizsuite/Assets/Images/shared/logo-Hr.png" height="40" alt="" />
 </asp:Content>  