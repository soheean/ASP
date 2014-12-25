<script language="VB" runat="server">
	 Sub Page_Load(Sender As Object, E As EventArgs)
		Dim username As String,userage As Integer
		username=Session("user_name")             '获取Session的值
		userage=Session("age")               '获取Session的值
		message.text= username & "您好，您的年龄是" & userage.Tostring
	End Sub
</script>
<html>
<body>
   <asp:label id="message" runat="server"/>
</body>
</html>
