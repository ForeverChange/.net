<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新闻信息列表</div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 欢迎<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            登录 
            <asp:Button ID="Button1" runat="server" Text="添加新闻" OnClick="Button1_Click" />
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ArticID" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="文章编号">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("ArticID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="文章主题">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("ArticTitle") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="主要内容">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("MainContent") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="文章作者">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("AuthorName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="审批状态">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("IsReview").ToString()=="False"?"未处理":"已处理" %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="发布时间">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Createtime") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="操作">
                   <%-- '<%# Eval("n_state").ToString()=="2"?"已审核":"未审核" %>'--%>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="del" OnClientClick="return confirm(&quot;这个是属性删除&quot;)" CommandArgument='<%# Bind("ArticID") %>'>删除</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
