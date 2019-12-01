<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Forum.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Register"></asp:Label>
            <br />
            <asp:Label ID="errorLbl" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Text="Registration information incorrect. Please try again." Visible="False"></asp:Label>
            <br />
            <asp:Label ID="fNameLbl" runat="server" Text="First name:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="fNameTxt" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="FirstNameRequiredValidator" runat="server" ControlToValidate="fNameTxt" ErrorMessage="This field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lNameLbl" runat="server" Text="Last Name:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="lNameTxt" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="LastNameRequiredValidator" runat="server" ControlToValidate="lNameTxt" ErrorMessage="This field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="emailLbl" runat="server" Text="Email:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="emailTxt" runat="server" AutoCompleteType="Email" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="EmailRequiredValidator" runat="server" ControlToValidate="emailTxt" ErrorMessage="This field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="usernameLbl" runat="server" Text="Username:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="usernameTxt" runat="server" AutoCompleteType="DisplayName"></asp:TextBox>
            <asp:RequiredFieldValidator ID="UsernameRequiredValidator" runat="server" ControlToValidate="usernameTxt" ErrorMessage="This field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="passwordsMatchValidator" runat="server" ControlToCompare="passwordTxt" ControlToValidate="confirmPasswordTxt" ErrorMessage="Passwords do not match." ForeColor="Red"></asp:CompareValidator>
            <br />
            <asp:Label ID="passwordLbl" runat="server" Text="Password:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="passwordTxt" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="PasswordRequiredValidator" runat="server" ControlToValidate="passwordTxt" ErrorMessage="This field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="confirmPasswordLbl" runat="server" Text="Confirm Password:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="confirmPasswordTxt" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ConfirmPasswordRequiredValidator" runat="server" ControlToValidate="confirmPasswordTxt" ErrorMessage="This field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="registerBtn" runat="server" OnClick="registerBtn_Click" Text="Register" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForumApplicationConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
