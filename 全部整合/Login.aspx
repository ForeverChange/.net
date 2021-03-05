<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .kuai {
            display:inline-block;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="账号"></asp:Label>            
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RFL1" ControlToValidate="TextBox1" Text="账号不可以为空"></asp:RequiredFieldValidator>
        </div>
        <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:RequiredFieldValidator runat="server" ID="RFL2" ControlToValidate="TextBox2" Text="密码不可以为空" ></asp:RequiredFieldValidator><br />
        <asp:Label ID="Label3" runat="server" Text="确认密码"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:CompareValidator runat="server" ID="CV1" Text="两次密码不可以不一样" ControlToCompare="TextBox3" ControlToValidate="TextBox2"> </asp:CompareValidator><br />
      <asp:Label ID="Label4" runat="server" Text="数字区间"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
         <asp:RangeValidator runat="server" ID="RV1" Text="区间是0-100" MaximumValue="100" MinimumValue="0" ControlToValidate="TextBox4"></asp:RangeValidator><br />
        <asp:Label ID="Label5" runat="server" Text="上传文件"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" /><br />
        <asp:Label ID="Label6" runat="server" Text="性别:"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="kuai" RepeatDirection="Horizontal">
            <asp:ListItem Value="0">男</asp:ListItem>
            <asp:ListItem Value="1">女</asp:ListItem>
        </asp:RadioButtonList><br />
           <asp:Label ID="Label7" runat="server" Text="爱好:" ></asp:Label>
        <asp:CheckBoxList runat="server" ID="CbList" CssClass="kuai" RepeatDirection="Horizontal">
            <asp:ListItem  Value="0">唱歌</asp:ListItem>
            <asp:ListItem  Value="1">跳舞</asp:ListItem>
            <asp:ListItem  Value="2">打篮球</asp:ListItem>
        </asp:CheckBoxList><br />
        <asp:DropDownList runat="server" ID="DdList">
            <asp:ListItem ></asp:ListItem>
        </asp:DropDownList>
        <p>
            <asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click" />           
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="登录" /><br />
             <asp:HyperLink runat="server" Text="这里也可以跳" NavigateUrl="~/Test.aspx"></asp:HyperLink>
        </p>
    </form>
</body>
</html>
