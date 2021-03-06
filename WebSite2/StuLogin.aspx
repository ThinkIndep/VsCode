﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StuLogin.aspx.cs" Inherits="StuLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="4"
ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" >
<FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
<Columns>
<asp:BoundField DataField="StuID" HeaderText="学号" ReadOnly="True" />
<asp:BoundField DataField="StuName" HeaderText="姓名" ReadOnly="True" />
<asp:BoundField DataField="StuGender" HeaderText="性别" ReadOnly="True"/>
<asp:BoundField DataField="StuNation" HeaderText="民族" ReadOnly="True"/>
<asp:BoundField DataField="StuCollege" HeaderText="学院"  ReadOnly="True"/>
<asp:BoundField DataField="StuMajor" HeaderText="专业" ReadOnly="True"/>
<asp:BoundField DataField="StuPassword" HeaderText="密码" />
<asp:BoundField DataField="StuInterest" HeaderText="兴趣" />
<asp:BoundField DataField="StuPhone" HeaderText="电话" />
<asp:BoundField DataField="StuEmail" HeaderText="邮箱" />


<asp:CommandField HeaderText="编辑" ShowEditButton="True" />

</Columns>
<RowStyle ForeColor="#000066" />
<SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
<PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
<HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
</asp:GridView>
    </div>
    </form>
</body>
</html>
