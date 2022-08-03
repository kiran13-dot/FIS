<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Ass1.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="welcomeNote" runat="server" /><br /><br />
            <asp:Button ID="logoutbtn" runat="server" Text="Logout" OnClick="logoutbtn_Click" />
        </div>
    </form>
</body>
</html>
