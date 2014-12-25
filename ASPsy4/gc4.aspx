<script language="VB" runat="server">
Sub usertype_change(Sender As Object, E As EventArgs)
        If user_type.SelectedItem.Value = "teacher" Then
            Response.Redirect("http://www.cuit.edu.cn") '如是教师用户，重定向到教师页面
        ElseIf user_type.SelectedItem.Value = "student" Then
            Response.Redirect("http://www.sina.com") '如是学生用户，重定向到学生页面
        End If
End Sub
</script>
<html>
<body>
	<h4 align="center">Redirect方法示例</h4>
	<form id="Form1" runat=server>
		请选择用户类型：
		<asp:dropdownlist id="user_type" AutoPostBack="True" OnSelectedIndexChanged="usertype_change" runat="server">
			<asp:listitem ></asp:listitem>
			<asp:listitem value="teacher">教师用户</asp:listitem>
			<asp:listitem value="student">学生用户</asp:listitem>
		</asp:dropdownlist >
	</form>
</body>
</html>

