<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg" %>
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
    </head>

    <body>
        <form id="form1" runat="server">
            <div>
                <table style="width: 755px;" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="width: 755px;  height: 300px; text-align: center;">
                            &nbsp;
                            <asp:Label ID="Label2" runat="server" Font-Size="9pt" ForeColor="Red" Text="新用户注册" Width="65px"></asp:Label>
                            <table align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td style="width: 200px; text-align: center">
                                    </td>
                                    <td style="width: 94px; text-align: center;">
                                        <asp:Label ID="labUserID" runat="server" Text="学号" Font-Size="9pt" Width="66px"></asp:Label>
                                    </td>
                                    <td style="width: 225px; text-align: left;">
                                        <asp:TextBox ID="txtUserID" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox>
                                       <!-- <asp:Button ID="btnTest" runat="server" Font-Size="9pt" OnClick="btnTest_Click" Text="检测学号" CausesValidation="False" />-->
                                    </td>
                                    <td style="width: 149px; height: 2px;">
                                        <asp:Label ID="Label1" runat="server" Font-Size="9pt" ForeColor="#FF0066" Text="（请输入10位有效数字）" Width="142px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td stye="width: 200px; text-align: center">
                                    </td>
                                    <td style="width: 9l4px; text-align: center;">
                                        <asp:Label ID="labLoginName" runat="server" Text="姓名" Font-Size="9pt" Width="66px"></asp:Label>
                                    </td>
                                    <td style="width: 225px; text-align: left;">
                                        <asp:TextBox ID="txtLoginName" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox>
                                    </td>
                                    <td style="width: 149px; height: 25px;">
                                        <asp:RequiredFieldValidator ID="rfvLoginName" runat="server" ControlToValidate="txtLoginName" Font-Size="9pt" Height="1px" Width="117px">姓名不能为空</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 200px; text-align: center">
                                    </td>
                                    <td style="width: 94px; text-align: center;">
                                        <asp:Label ID="labSex" runat="server" Text="性别" Font-Size="9pt" Width="27px"></asp:Label>
                                    </td>
                                    <td style="width: 225px; text-align: left;">
                                        <asp:DropDownList ID="ddlSex" runat="server" Width="127px" Font-Size="9pt">
                                            <asp:ListItem>男</asp:ListItem>
                                            <asp:ListItem>女</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 149px">
                                    </td>
                                </tr>
                                        <tr>
                                    <td style="width: 200px; text-align: center">
                                    </td>
                                    <td style="width: 94px; text-align: center;">
                                        <asp:Label ID="labNation" runat="server" Text="民族" Font-Size="9pt" Width="27px"></asp:Label>
                                    </td>
                                    <td style="width: 225px; text-align: left;">
                                        <asp:DropDownList ID="ddlNationality" runat="server"  Width="127px" Font-Size="9pt">
                    <asp:ListItem Text="汉族" Value="汉族" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="阿昌族" Value="阿昌族"></asp:ListItem>
                    <asp:ListItem Text="白族" Value="白族"></asp:ListItem>
                    <asp:ListItem Text="保安族" Value="保安族"></asp:ListItem> 
                    <asp:ListItem Text="布朗族" Value="布朗族"></asp:ListItem>
                    <asp:ListItem Text="布依族" Value="布依族"></asp:ListItem>
                    <asp:ListItem Text="朝鲜族" Value="朝鲜族"></asp:ListItem>
                    <asp:ListItem Text="达斡尔族" Value="达斡尔族"></asp:ListItem>
                    <asp:ListItem Text="傣族" Value="傣族"></asp:ListItem>
                    <asp:ListItem Text="德昂族" Value="德昂族"></asp:ListItem>
                    <asp:ListItem Text="侗族" Value="侗族"></asp:ListItem>
                    <asp:ListItem Text="东乡族" Value="东乡族"></asp:ListItem>
                    <asp:ListItem Text="独龙族" Value="独龙族"></asp:ListItem>
                    <asp:ListItem Text="鄂伦春族" Value="鄂伦春族"></asp:ListItem>
                    <asp:ListItem Text="俄罗斯族" Value="俄罗斯族"></asp:ListItem>
                    <asp:ListItem Text="鄂温克族" Value="鄂温克族"></asp:ListItem>
                    <asp:ListItem Text="高山族" Value="高山族"></asp:ListItem>
                    <asp:ListItem Text="仡佬族" Value="仡佬族"></asp:ListItem>
                    <asp:ListItem Text="哈尼族" Value="哈尼族"></asp:ListItem>
                    <asp:ListItem Text="哈萨克族" Value="哈萨克族"></asp:ListItem>
                    <asp:ListItem Text="赫哲族" Value="赫哲族"></asp:ListItem>
                    <asp:ListItem Text="回族" Value="回族"></asp:ListItem>
                    <asp:ListItem Text="基诺族" Value="基诺族"></asp:ListItem>
                    <asp:ListItem Text="京族" Value="京族"></asp:ListItem>
                    <asp:ListItem Text="景颇族" Value="景颇族"></asp:ListItem>
                    <asp:ListItem Text="柯尔克孜族" Value="柯尔克孜族"></asp:ListItem>
                    <asp:ListItem Text="拉祜族" Value="拉祜族"></asp:ListItem>
                    <asp:ListItem Text="黎族" Value="黎族"></asp:ListItem>
                    <asp:ListItem Text="傈僳族" Value="傈僳族"></asp:ListItem>
                    <asp:ListItem Text="珞巴族" Value="珞巴族"></asp:ListItem>
                    <asp:ListItem Text="满族" Value="满族"></asp:ListItem>
                    <asp:ListItem Text="毛南族" Value="毛南族"></asp:ListItem>
                    <asp:ListItem Text="门巴族" Value="门巴族"></asp:ListItem>
                    <asp:ListItem Text="蒙古族" Value="蒙古族"></asp:ListItem>
                    <asp:ListItem Text="苗族" Value="苗族"></asp:ListItem>
                    <asp:ListItem Text="仫佬族" Value="仫佬族"></asp:ListItem>
                    <asp:ListItem Text="纳西族" Value="纳西族"></asp:ListItem>
                    <asp:ListItem Text="怒族" Value="怒族"></asp:ListItem>
                    <asp:ListItem Text="普米族" Value="普米族"></asp:ListItem>
                    <asp:ListItem Text="羌族" Value="羌族"></asp:ListItem>
                    <asp:ListItem Text="撒拉族" Value="撒拉族"></asp:ListItem>
                    <asp:ListItem Text="畲族" Value="畲族"></asp:ListItem>
                    <asp:ListItem Text="水族" Value="水族"></asp:ListItem>
                    <asp:ListItem Text="塔吉克族" Value="塔吉克族"></asp:ListItem>
                    <asp:ListItem Text="塔塔尔族" Value="塔塔尔族"></asp:ListItem>
                    <asp:ListItem Text="土族" Value="土族"></asp:ListItem>
                    <asp:ListItem Text="土家族" Value="土家族"></asp:ListItem>
                    <asp:ListItem Text="佤族" Value="佤族"></asp:ListItem>
                    <asp:ListItem Text="锡伯族" Value="锡伯族"></asp:ListItem>
                    <asp:ListItem Text="乌兹别克族" Value="乌兹别克族"></asp:ListItem>
                    <asp:ListItem Text="瑶族" Value="瑶族"></asp:ListItem>
                    <asp:ListItem Text="彝族" Value="彝族"></asp:ListItem>
                    <asp:ListItem Text="裕固族" Value="裕固族"></asp:ListItem>
                    <asp:ListItem Text="裕固族" Value="裕固族"></asp:ListItem>
                    <asp:ListItem Text="维吾尔族" Value="维吾尔族"></asp:ListItem>
                    <asp:ListItem Text="壮族" Value="壮族"></asp:ListItem>
         </asp:DropDownList>
                                    </td>
                                    <td style="width: 149px">
                                    </td>
                                </tr>
                                        <tr>
                                    <td style="width: 200px; text-align: center">
                                    </td>
                                    <td style="width: 94px; text-align: center;">
                                        <asp:Label ID="labCollege" runat="server" Text="学院" Font-Size="9pt" Width="27px" ></asp:Label>
                                    </td>
                                    <td style="width: 225px; text-align: left;">
                                        <asp:DropDownList ID="ddlCollege" runat="server" Width="127px" Font-Size="9pt" OnSelectedIndexChanged="ddlCollege_SelectedIndexChanged" AutoPostBack="true">
                                           
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 149px">
                                    </td>
                                </tr>
                              <tr>
                                    <td style="width: 200px; text-align: center">
                                    </td>
                                    <td style="width: 94px; text-align: center;">
                                        <asp:Label ID="labMajor" runat="server" Text="专业" Font-Size="9pt" Width="27px"></asp:Label>
                                    </td>
                                    <td style="width: 225px; text-align: left;">
                                        <asp:DropDownList ID="ddlMajor" runat="server" Width="127px" Font-Size="9pt">
                                           
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 149px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 189px; text-align: center">
                                    </td>
                                    <td style="width: 94px; text-align: center;">
                                        <asp:Label ID="labPwd" runat="server" Text="密码" Font-Size="9pt" Width="27px"></asp:Label>
                                    </td>
                                    <td style="width: 225px; text-align: left;">
                                        <asp:TextBox ID="txtPwd" runat="server" Font-Size="9pt" TextMode="Password" Width="123px"></asp:TextBox>
                                    </td>
                                    <td style="width: 149px">
                                        <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd" Font-Size="9pt" Width="104px">用户密码不能为空</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 189px; height: 23px; text-align: center">
                                    </td>
                                    <td style="width: 94px; text-align: center; height: 23px;">
                                        <asp:Label ID="labSecPwd" runat="server" Text="重复密码" Font-Size="9pt" Width="52px"></asp:Label>
                                    </td>
                                    <td style="width: 225px; text-align: left;">
                                        <asp:TextBox ID="txtSecPwd" runat="server" Font-Size="9pt" TextMode="Password" Width="123px" ondisposed="txtSecPwd_Disposed"></asp:TextBox>
                                    </td>
                                    <td style="width: 149px; height: 23px;">
                                        <asp:CompareValidator ID="ccvPwd" runat="server" Width="134px" ControlToCompare="txtPwd" ControlToValidate="txtSecPwd" Font-Size="9pt">用户输入的密码必须一致</asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td stye="width: 200px; text-align: center">
                                    </td>
                                    <td style="width: 9l4px; text-align: center;">
                                        <asp:Label ID="labInterest" runat="server" Text="兴趣" Font-Size="9pt" Width="66px"></asp:Label>
                                    </td>
                                    <td style="width: 225px; text-align: left;">
                                        <asp:TextBox ID="txtInterest" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox>
                                    </td>
                                    <td style="width: 149px; height: 25px;">
                                        
                                    </td>
                                </tr>
                                       <tr>
                                    <td style="width: 189px; text-align: center">
                                    </td>
                                    <td style="width: 94px; text-align: center;">
                                        <asp:Label ID="labPhone" runat="server" Text="电话" Font-Size="9pt" Width="57px"></asp:Label>
                                    </td>
                                    <td style="width: 225px; text-align: left;">
                                        <asp:TextBox ID="txtPhone" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox>
                                    </td>
                                    <td style="width: 149px">
                                        <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ValidationExpression="^1(3|4|5|7|8)\d{9}$" Font-Size="9pt" Width="132px">您输入的手机号码格式不正确，请重新输入</asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 189px; text-align: center">
                                    </td>
                                    <td style="width: 94px; text-align: center;">
                                        <asp:Label ID="labEmail" runat="server" Text="Email地址" Font-Size="9pt" Width="57px"></asp:Label>
                                    </td>
                                    <td style="width: 225px; text-align: left;">
                                        <asp:TextBox ID="txtEmail" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox>
                                    </td>
                                    <td style="width: 149px">
                                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="9pt" Width="132px">您输入的Email地址格式不正确，请重新输入</asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                 <tr>
                                    <td style="width: 189px; text-align: center">
                                    </td>
                                    <td style="width: 94px; text-align: center;">
                                         <asp:Label ID="labRole" runat="server" Text="注册类型" Font-Size="9pt" Width="57px"></asp:Label>
                                    </td>
                                    <td style="width: 225px; text-align: left;">
                                        <asp:RadioButton ID="radRole" runat="server"  Text="教师" Checked="true" GroupName="role"/>
        <asp:RadioButton ID="radRole2" runat="server" Text="学生" GroupName="role" />
                                    </td>
                                    <td style="width: 149px">
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 189px; text-align: center">
                                    </td>
                                    <td style="width: 94px; text-align: center;"></td>
                                    <td style="width: 225px; text-align: left;">
                                      
                                        <asp:Button ID="btnRegister" runat="server" Text="注册" OnClick="btnRegister_Click" Font-Size="9pt" /> &nbsp;&nbsp;
                                        <asp:Button ID="btnCancel" runat="server" Text="重置" OnClick="btnCancel_Click" Font-Size="9pt" CausesValidation="False" />&nbsp;&nbsp; &nbsp;</td>
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
