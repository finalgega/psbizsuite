<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<psbizsuite.Models.UserAccount>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Details</title>
</head>
<body>
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
    <p>
        <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
</body>
</html>
