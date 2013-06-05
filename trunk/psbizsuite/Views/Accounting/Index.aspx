<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<psbizsuite.Models.AccountPayable>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<!-- you need different approach because your page needs 2 models 
    To retrieve receiveableAccount list: ViewBag.receivable
    To retrieve payableAccount list: ViewBag.payable
    To iterate the list: 
    foreach(var item in ViewBag.receivable){
        item.TotalAmount
    }
          -->
    <%
    
    foreach (var item in ViewBag.payable)
    {
        Console.WriteLine(item.TotalAmount);
    }
    
     %>
 

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavContent" runat="server">
</asp:Content>
