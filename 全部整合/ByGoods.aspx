<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ByGoods.aspx.cs" Inherits="ByGoods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="商品名称"></asp:Label>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </div>
        <asp:Label ID="Label3" runat="server" Text="商品价格"></asp:Label>
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="会员价"></asp:Label>
        <asp:Label ID="Label6" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label10" runat="server" Text="购买数量"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Text="会员号"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="154px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="margin-left: 6px" Text="查询" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="Label8" runat="server" Text="会员姓名"></asp:Label>
        <asp:Label ID="Label9" runat="server"></asp:Label>
        <br />
        <asp:Button ID="Button2" runat="server" Text="购买" OnClick="Button2_Click" />
    </form>
</body>
</html>
