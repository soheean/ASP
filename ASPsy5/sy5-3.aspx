<%@ Page Language="VB"%>
<%@ Import Namespace="System.Datetime"%>
<script runat="server">
	Sub Page_Load(Sender As Object, E As EventArgs)
		message.Text = "�����õ�ʱ����" & Datetime.Now.toString()
        message1.Text = Application("StatCount")
	End Sub
</script>
<html>
<head>
	<title>��ʾ����ʱ��</title>
</head>
<body>
	<h2 align="center">CS��ҳ</h2>
	<asp:label id="message" runat=server/>
    <br />
    <asp:label id="message2" Text = "��������" runat=server/>
    <asp:label id="message1" runat=server/>
</body>
</html>
