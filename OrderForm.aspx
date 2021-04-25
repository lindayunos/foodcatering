<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/package.Master" CodeBehind="OrderForm.aspx.cs" Inherits="FoodCatering.OrderForm" %>

<asp:Content ID="OrderContent" ContentPlaceHolderID="PackagesContent" runat="server">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    	<style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 187px;
        }
        .auto-style3 {
            width: 187px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 221px;
        }
        .auto-style6 {
            height: 26px;
            width: 221px;
        }
        .auto-style7 {
            width: 187px;
            height: 29px;
        }
        .auto-style8 {
            width: 221px;
            height: 29px;
        }
        .auto-style9 {
            height: 29px;
        }
        .auto-style10 {
            margin-left: 426px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div>
       <div style="font-size:x-large" ">Customer Order Form</div>
       <br />
       
   </div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">Order ID</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8">Package</td>
            <td class="auto-style9">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Tulip</asp:ListItem>
                    <asp:ListItem>Dahlia</asp:ListItem>
                    <asp:ListItem>Orchid</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">Quantity</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">Order Date</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#99FF66" Font-Bold="True" ForeColor="Black" OnClick="Button1_Click" Text="Book" Height="40px" Width="91px" />
            &nbsp;
                
                <br />
            </td>
        </tr>
    </table>

    </form>
</body>
</html>
</asp:Content>
