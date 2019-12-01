<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Forum.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


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
</asp:Content>