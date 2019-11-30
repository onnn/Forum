<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Forum.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forum Application</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="welcomeLbl" runat="server" Text="Welcome!" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

        </div>
        <p>
            <asp:Button ID="loginBtn" runat="server" OnClick="loginBtn_Click" Text="Login" />
            <asp:Button ID="registerBtn" runat="server" OnClick="registerBtn_Click" Text="Register" />

        </p>
    </form>
</body>
</html>
