<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ViewAttendanceSummary
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
      <script>
    
          $(function () {
              $('#calendar').datePicker({
                  inline: true,
              });
            
          });
  </script>
    <style>
       table.jCalendar th	{

	font-weight: bold;
	padding:20px;
    font-size:12px;
	}
        table.jCalendar td {
            font-size: 12px;
            padding: 20px;
        }
	#calendar h2
        {
        font-size: 15px;
        }

    </style>
    Hi <div id="calendar"></div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
