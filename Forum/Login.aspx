<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Forum.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="loginLbl" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Login"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForumApplicationConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="errorLbl" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Text="Login information incorrect. Please try again." Visible="False"></asp:Label>
        </div>
        <p>
            <asp:Label ID="usernameLbl" runat="server" Text="Username:"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="usernameTxt" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="usernameValidator" runat="server" ControlToValidate="usernameTxt" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Username field is required.</asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="passwordLbl" runat="server" Text="Password:"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="passwordTxt" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="passwordValidator" runat="server" ControlToValidate="passwordTxt" ErrorMessage="Password field is required." ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="loginBtn" runat="server" Height="28px" OnClick="loginBtn_Click" Text="Login" />
        </p>
        <p>
            <asp:LinkButton ID="registerBtn" runat="server" OnClick="registerBtn_Click">Not a member yet? Register here!</asp:LinkButton>
        </p>
    </form>
</body>
</html>
