<%@ Page Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FoodCatering.Login" %>

<asp:Content ID="LoginContent" ContentPlaceHolderID="looginContent" runat="server">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="Content/login.css" rel="stylesheet" />
</head>

<body>
    <div class ="loginbox">
        <h2>LOG IN </h2>
        <form runat="server">
            <asp:Label Text="Username"  CssClass="lblemail" runat="server" />
            <asp:TextBox runat="server" CssClass="email" placeholder="Enter Username" ID="username" />
            <asp:Label Text="Password"  CssClass="lblpwd" runat="server" />
            <asp:TextBox runat="server" CssClass="pwd" placeholder="Enter Password" ID="TextBoxpwd"  />
            <asp:Button Text="Log In" CssClass="btnsubmit" runat="server" OnClick="Login_Click" />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </form>
    </div>
</body>
</html>
</asp:Content>

