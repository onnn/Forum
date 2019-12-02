<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Forum.aspx.cs" Inherits="Forum.Forum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForumApplicationConnectionString2 %>" SelectCommand="SELECT Thread.Thread_Id, Thread.Thread_Subject, Thread.User_Id, [User].User_Id AS Expr1, [User].User_Username FROM Thread INNER JOIN [User] ON Thread.User_Id = [User].User_Id"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Thread_Id,Expr1,Thread_Subject" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="423px" Width="1472px">
        <Columns>
            <asp:BoundField DataField="Thread_Id" HtmlEncode="False" DataFormatString="<a target='_blank' href='Thread.aspx?t={0}'>Read Thread</a>" />
            <asp:BoundField DataField="Thread_Subject" HeaderText="Subject" SortExpression="Thread_Subject" />
            <asp:BoundField DataField="User_Username" HeaderText="Posted by" SortExpression="User_Username" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
</asp:Content>