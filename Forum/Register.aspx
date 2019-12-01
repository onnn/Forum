<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Forum.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form container text-white">
           <div class="center">

            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Register"></asp:Label>
            <br />
            <asp:Label ID="errorLbl" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Text="Registration information incorrect. Please try again." Visible="False"></asp:Label>
            
            
               <br />
            
            
            <label for="fNameTxt">First Name:</label>
            <asp:TextBox ID="fNameTxt" runat="server" class="form-control" placeholder="First name"></asp:TextBox>

            <asp:RequiredFieldValidator ID="FirstNameRequiredValidator" runat="server" ControlToValidate="fNameTxt" ErrorMessage="This field is required." ForeColor="Red"></asp:RequiredFieldValidator>

                           <br />

               <br />

            <asp:Label ID="lNameLbl" runat="server" Text="Last Name:"></asp:Label>
            <asp:TextBox ID="lNameTxt" runat="server"  class="form-control" placeholder="Last name" ></asp:TextBox>

            <asp:RequiredFieldValidator ID="LastNameRequiredValidator" runat="server" ControlToValidate="lNameTxt" ErrorMessage="This field is required." ForeColor="Red"></asp:RequiredFieldValidator>


                           <br />


               <br />


            <label for="emailTxt">Email:</label>
            <asp:TextBox ID="emailTxt" runat="server" AutoCompleteType="Email" TextMode="Email" placeholder="Email" class="form-control"></asp:TextBox>

            <asp:RequiredFieldValidator ID="EmailRequiredValidator" runat="server" ControlToValidate="emailTxt" ErrorMessage="This field is required." ForeColor="Red"></asp:RequiredFieldValidator>

                           <br />

               <br />

            <asp:Label ID="usernameLbl" runat="server" Text="Username:"></asp:Label>
            <asp:TextBox ID="usernameTxt" runat="server" AutoCompleteType="DisplayName"  class="form-control" placeholder="Username"></asp:TextBox>

            <asp:RequiredFieldValidator ID="UsernameRequiredValidator" runat="server" ControlToValidate="usernameTxt" ErrorMessage="This field is required." ForeColor="Red"></asp:RequiredFieldValidator>

                           <br />

            <asp:CompareValidator ID="passwordsMatchValidator" runat="server" ControlToCompare="passwordTxt" ControlToValidate="confirmPasswordTxt" ErrorMessage="Passwords do not match." ForeColor="Red"></asp:CompareValidator>

               <br />

            <asp:Label ID="passwordLbl" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="passwordTxt" runat="server" TextMode="Password"  class="form-control" placeholder="Password"></asp:TextBox>

            <asp:RequiredFieldValidator ID="PasswordRequiredValidator" runat="server" ControlToValidate="passwordTxt" ErrorMessage="This field is required." ForeColor="Red"></asp:RequiredFieldValidator>

                           <br />

               <br />

            <asp:Label ID="confirmPasswordLbl" runat="server" Text="Confirm Password:"></asp:Label>
            <asp:TextBox ID="confirmPasswordTxt" runat="server" TextMode="Password"  class="form-control" placeholder="Password Confirm"></asp:TextBox>

            <asp:RequiredFieldValidator ID="ConfirmPasswordRequiredValidator" runat="server" ControlToValidate="confirmPasswordTxt" ErrorMessage="This field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                           <br />

                           <br />

            <asp:Button ID="registerBtn" runat="server" OnClick="registerBtn_Click" Text="Register" class="btn btn-secondary btn-lg"/>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForumApplicationConnectionString %>" SelectCommand="SELECT * FROM [User]" ProviderName="<%$ ConnectionStrings:ForumApplicationConnectionString.ProviderName %>"></asp:SqlDataSource>
        </div>
           </div>
</asp:Content>