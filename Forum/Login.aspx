<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Forum.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forum Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="css/stylesheet1.css" >

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
       <div class="form container text-white">

            <asp:Label ID="loginLbl" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Login"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForumApplicationConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="errorLbl" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Text="Login information incorrect. Please try again." Visible="False"></asp:Label>
        <p>
            <label for="usernameTxt">Username:</label>
            <asp:TextBox ID="usernameTxt" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="usernameValidator" runat="server" ControlToValidate="usernameTxt" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Username field is required.</asp:RequiredFieldValidator>
        </p>
            <p>
             <label for="passwordTxt">Password:</label>
            <asp:TextBox ID="passwordTxt" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="passwordValidator" runat="server" ControlToValidate="passwordTxt" ErrorMessage="Password field is required." ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            &nbsp;<asp:Button ID="loginBtn" runat="server" Height="28px" OnClick="loginBtn_Click" Text="Login" class="btn btn-secondary btn-lg"/>
                        <br />

        </p>
        <p>
           
            <asp:LinkButton ID="registerBtn" runat="server" OnClick="registerBtn_Click" CausesValidation="False">Not a member yet? Register here!</asp:LinkButton>
        </p>
     </div>
    </form>
</body>
</html>
