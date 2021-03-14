 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddQuestions.aspx.cs" Inherits="AddQuestions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 120px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 增加试题<br />
            <br />
            学期:
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 科目:
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <p>
            题干:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            选项A
            <asp:TextBox ID="TextBox2" runat="server" Width="322px"></asp:TextBox>
        </p>
        <p>
            选项B <asp:TextBox ID="TextBox3" runat="server" Width="327px"></asp:TextBox>
        </p>
        <p>
            选项C
            <asp:TextBox ID="TextBox4" runat="server" Width="326px"></asp:TextBox>
        </p>
        <p>
            选项D
            <asp:TextBox ID="TextBox5" runat="server" Width="323px"></asp:TextBox>
        </p>
        <p>
            答案: <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>D</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p class="auto-style1">
            <asp:Button ID="Button1" runat="server" Text="保    存" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
