<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label4" runat="server" Text="商品名称"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="查询" />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" OnRowDeleting="GridView1_RowDeleting" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand" PageSize="3" OnRowUpdating="GridView1_RowUpdating" OnRowEditing="GridView1_RowEditing">
            <Columns>
                <asp:TemplateField HeaderText="名称">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("GoodName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="价格">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 2px" Text='<%# Bind("price") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="会员价">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("mprice") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="库存">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Stock") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="购买">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">购买</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:TemplateField HeaderText="编辑">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" Text="修改" CommandName="update" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" CommandArgument='<%# Bind("Id") %>' CommandName="del" OnClick="Button2_Click" OnClientClick="return confirm(&quot;这个是属性删除&quot;)" Text="删除" />
                        &nbsp;
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="类型">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("TypeName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Stock") %>'></asp:Label>
            </EmptyDataTemplate>
        </asp:GridView>
    </form>
</body>
</html>
