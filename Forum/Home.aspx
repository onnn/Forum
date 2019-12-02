<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Forum.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forum Home</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="css/stylesheet1.css" >

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<body>
        
    <form id="form1" runat="server">
        <ul class="nav justify-content-center">
  <li class="nav-item text-white">
      <button type="button" class="btn btn-dark">
    <a class="nav-link text-white" href="/Home.aspx">Home</a>
          </button>
  </li>
    <li class="nav-item">
              <button type="button" class="btn btn-dark">
    <a class="nav-link text-white" href="/Forum.aspx">Forums</a>
                            </button>
  </li>
  <li class="nav-item">
                    <button type="button" class="btn btn-dark">
    <a class="nav-link text-white" href="/Login.aspx">Login</a>
                                                    </button>
  </li>
  <li class="nav-item">
                          <button type="button" class="btn btn-dark">
    <a class="nav-link text-white" href="/Register.aspx">Register</a>
                                                                                  </button>
  </li>
  
</ul>
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
         
    </form>
</body>
</html>
