<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminConsole.aspx.cs" Inherits="Forum.AdminConsole" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forum Admin Panel</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="css/stylesheet1.css" >

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
       <div class="form container text-white">

            <asp:Label ID="loginLbl" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Users"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForumApplicationConnectionString3 %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="User_Id">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    <asp:BoundField DataField="User_Id" HeaderText="User_Id" InsertVisible="False" ReadOnly="True" SortExpression="User_Id" />
                    <asp:BoundField DataField="User_Username" HeaderText="User_Username" SortExpression="User_Username" />
                    <asp:BoundField DataField="User_Password" HeaderText="User_Password" SortExpression="User_Password" />
                    <asp:BoundField DataField="User_Email" HeaderText="User_Email" SortExpression="User_Email" />
                    <asp:BoundField DataField="User_FName" HeaderText="User_FName" SortExpression="User_FName" />
                    <asp:BoundField DataField="User_LName" HeaderText="User_LName" SortExpression="User_LName" />
                </Columns>
            </asp:GridView>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="User_Id" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="User_Id" HeaderText="User_Id" InsertVisible="False" ReadOnly="True" SortExpression="User_Id" />
                    <asp:BoundField DataField="User_Username" HeaderText="User_Username" SortExpression="User_Username" />
                    <asp:BoundField DataField="User_Password" HeaderText="User_Password" SortExpression="User_Password" />
                    <asp:BoundField DataField="User_Email" HeaderText="User_Email" SortExpression="User_Email" />
                    <asp:BoundField DataField="User_FName" HeaderText="User_FName" SortExpression="User_FName" />
                    <asp:BoundField DataField="User_LName" HeaderText="User_LName" SortExpression="User_LName" />
                </Fields>
            </asp:DetailsView>
            <asp:Label ID="deleteErrorLabel" runat="server" Visible="False"></asp:Label>
            <br />
            <asp:Button ID="deleteUser" runat="server" OnClick="deleteUser_Click" Text="Delete Selected User" />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ForumApplicationConnectionString2 %>" SelectCommand="SELECT * FROM [User] WHERE ([User_Id] = @User_Id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="User_Id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
        </form>
</body>
</html>
