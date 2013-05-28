﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.UserAccount>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Delete</title>
</head>
<body>
    <h3>Are you sure you want to delete this?</h3>
    <fieldset>
        <legend>UserAccount</legend>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.Username) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.Username) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.Password) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.Password) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.Type) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.Type) %>
        </div>
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
            <input type="submit" value="Delete" /> |
            <%: Html.ActionLink("Back to List", "Index") %>
        </p>
    <% } %>
    
</body>
</html>
