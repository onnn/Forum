<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Forum.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="alert alert-success" role="alert">
  <h4 class="alert-heading">It doesn't look like you're logged in!</h4>
  <p>In order to use the site, you're going to need to login.</p>
            <p>Don't have an account? Create one! Don't worry, it's easy!</p>
  <hr />
  <p class="mb-0">
      <asp:Button ID="loginBtn" runat="server" OnClick="loginBtn_Click" Text="Login" CssClass="btn btn-primary btn-lg active" />
      <asp:Button ID="registerBtn" runat="server" OnClick="registerBtn_Click" Text="Register" CssClass="btn btn-primary btn-lg active"/>
  </p>
</div>
</asp:Content>
