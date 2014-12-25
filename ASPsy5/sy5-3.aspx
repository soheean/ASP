<%@ Page Language="VB"%>
<%@ Import Namespace="System.Datetime"%>
<script runat="server">
	Sub Page_Load(Sender As Object, E As EventArgs)
		message.Text = "您来访的时间是" & Datetime.Now.toString()
        message1.Text = Application("StatCount")
	End Sub
</script>
<html>
<head>
	<title>显示来访时间</title>
</head>
<body>
	<h2 align="center">CS主页</h2>
	<asp:label id="message" runat=server/>
    <br />
    <asp:label id="message2" Text = "访问人数" runat=server/>
    <asp:label id="message1" runat=server/>
</body>
</html>
