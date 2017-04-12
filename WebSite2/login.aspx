<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 189px;
            height: 18px;
        }
        .auto-style2 {
            width: 94px;
            height: 18px;
        }
        .auto-style3 {
            width: 225px;
            height: 18px;
        }
        .auto-style4 {
            width: 149px;
            height: 18px;
        }
        .auto-style5 {
            width: 189px;
            height: 17px;
        }
        .auto-style6 {
            width: 94px;
            height: 17px;
        }
        .auto-style7 {
            width: 225px;
            height: 17px;
        }
        .auto-style8 {
            width: 149px;
            height: 17px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="width: 755px;" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td style="width: 755px;  height: 300px; text-align: center;">
                    &nbsp;<asp:Label ID="Label2" runat="server" Font-Size="9pt" ForeColor="Red" Text="用户登录"
                        Width="65px"></asp:Label>
                    <table align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="width: 200px; text-align: center">
                            </td>
                            <td style="width: 94px; text-align: center;">
                    <asp:Label ID="labUserID" runat="server" Text="学号" Font-Size="9pt" Width="66px"></asp:Label></td>
                            <td style="width: 225px; text-align: left;">
                    <asp:TextBox ID="txtUserID" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox>
                   </td>
                            <td style="width: 149px; height: 2px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserID" Font-Size="9pt" Width="104px">用户学号不能为空</asp:RequiredFieldValidator>
                    </td>
                        </tr>
                       
                        
                         <tr>
                             <td style="text-align: center" class="auto-style1">
                             </td>
                            <td style="text-align: center;" class="auto-style2">
                    <asp:Label ID="labPwd" runat="server" Text="密码" Font-Size="9pt" Width="27px"></asp:Label></td>
                            <td style="text-align: left;" class="auto-style3">
                    <asp:TextBox ID="txtPwd" runat="server" Font-Size="9pt" TextMode="Password" Width="123px"></asp:TextBox></td>
                            <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd" Font-Size="9pt" Width="104px">用户密码不能为空</asp:RequiredFieldValidator></td>
                        </tr>

                        <tr>
                             <td style="text-align: center" class="auto-style5">
                             </td>
                            <td style="text-align: center;" class="auto-style6">
                 </td>
                            <td style="text-align: left;" class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="9pt"  Width="123px"></asp:TextBox> <asp:Image ID="Image1" imageUrl="/login.aspx"  runat="server" /></td>
                            <td class="auto-style8">
                                
                    </td>
                        </tr>
                      
                         
                         <tr>
                             <td style="width: 189px; text-align: center">
                             </td>
                            <td style="width: 94px; text-align: center;"></td>
                            <td style="width: 225px; text-align: left;">
                               <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click" Font-Size="9pt" />
                                &nbsp; &nbsp; <asp:HyperLink NavigateUrl="Reg.aspx" Text="注册"  runat="server" />&nbsp;&nbsp; &nbsp;</td>
                            <td style="width: 149px; height: 24px;">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
