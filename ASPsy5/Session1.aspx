<script language="VB" runat="server">
	Sub Page_Load(Sender As Object, E As EventArgs)
		Session("user_name")="卓云"         '给Session赋值
		Session("age")=22
	End Sub
</script>
<html>
<body>
	该程序仅用来存入Session值，请自己打开Session2.aspx查看结果
</body> 
</html>

