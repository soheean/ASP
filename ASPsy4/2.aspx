<script language="VB" runat="server">
	Sub page_load(Sender As Object, E As EventArgs)
		Dim user_name As String     '定义一个用户名变量
		Dim age As Integer 
		
		'定义一个年龄变量
		user_name=Request.QueryString("user_name")    '获取用户名
        age = Request.QueryString("age")                '获取年龄
		Message.Text=user_name & "您好"
		Message.Text=Message.Text &  "，您的年龄是" & age.ToString &",您的性别是" & Request.QueryString("sex") 
	End Sub
</script>
<html>
<body>
   <h4 align="center">Request对象示例</h4>
   <form id="Form1" runat=server>
	 <asp:label id="Message"  runat=server/>
   </form>
</body>
</html>

