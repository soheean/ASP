<script language="VB" runat="server">
Sub Enter_Click(Sender As Object, E As EventArgs)
        Application.Lock()
        Application("show") = name.Text & " " & pronunciation.Text & "   " & Now() & "<br>" & Application("show")
        Application.UnLock()
        pronunciation.Text=""             '将发言框清空
        name.Text = ""
End Sub
</script>
<html>
<body>
	<form id="Form1" runat="server">
    姓名：<asp:TextBox ID="name" runat="server"></asp:TextBox>
&nbsp;<br />请发言：<asp:textbox id="pronunciation" columns="30" runat="server" />
		<asp:button ID="Button1" text=" 发送 " onclick="Enter_Click" runat="server" />
	</form>
</body> 
</html>
