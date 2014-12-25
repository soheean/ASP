<script language="VB" runat="server">
	Sub Page_Load(Sender As Object, E As EventArgs)
		message.text=Application("show")    '获取Application信息
	End Sub
</script>
<html>
<head>
	<meta http-equiv="refresh" content="5">
</head>
<body>
   <asp:label id="message" runat="server"/>
</body> 
</html>

