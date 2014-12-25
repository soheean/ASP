<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        If Request.Cookies("user")("vNumber") Is Nothing Then
            Response.Write("您好，您是第 1次访问本站，请填写个人信息")
            
        
            
        ElseIf Request.Cookies("user")("vNumber") >= 1 Then '如果不是第1次访问，就令访问次数在原有次数上加1 
            Dim vNumber As Integer '定义一个访问次数变量
            Dim user_name As String
            Dim sex As String
            Dim sex_sex As String
            vNumber = Request.Cookies("user")("vNumber")
            user_name = Request.Cookies("user")("user_name")
            sex = Request.Cookies("user")("sex")
       
            Response.Cookies("user")("vNumber") = vNumber + 1 '将访问次数+1保存到Cookies中 
            Response.Cookies("user")("user_name") = user_name
            Response.Cookies("user")("sex") = sex
            Response.Cookies("user").Expires = DateTime.Now.AddYears(2) '设置有效期为2年 
            Response.Write(Request.Cookies("user")("user_name") & sex & "您好，您是第" & (vNumber + 1) & "次光临本站")
        End If
        If Request.Form("user_name") <> "" And Request.Form("sex") <> "" Then
            Response.Cookies("user")("user_name") = Request.Form("user_name")
            Response.Cookies("user")("sex") = Request.Form("sex")
            Response.Cookies("user")("vNumber") = 1
            Response.Cookies("user").Expires = DateTime.Now.AddYears(1)
        End If
    End Sub

 
</script>

<html>
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
          
    <form id="form1" method = "post" action = "sy4-2.aspx" runat="server">
     姓名：
    <asp:TextBox ID="user_name" runat="server"></asp:TextBox>
    <br />性别：
    <input type = "radio" name = "sex" value = "男">男
    <input type = "radio" name = "sex" value = "女">女
     <br />

     <input type = "submit" value = "提交">
    </form>
    
</body>
</html>

