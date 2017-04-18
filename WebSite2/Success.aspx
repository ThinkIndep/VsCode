<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Success.aspx.cs" Inherits="Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body onload="Load('login.aspx')">
    
    <div id="ShowDiv">
    
    </div>
   
</body>
    <script language="javascript">
        var secs = 3; //倒计时的秒数 
        var URL;
        function Load(url) {
            URL = url;
            for (var i = secs; i >= 0; i--) {
                window.setTimeout('doUpdate(' + i + ')', (secs - i) * 1000);
            }
        }
        function doUpdate(num) {
            document.getElementById('ShowDiv').innerHTML = '注册成功！！将在' + num + '秒后自动跳转到登录页面';
            if (num == 0) { window.location = URL; }
        }
</script>
</html>
