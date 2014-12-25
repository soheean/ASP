<script language="VB" runat="server">
	Sub Page_Load(sender As Object, e As EventArgs)
        If Request.Form("user_name") <> "" Then
        Session("user_name") = Request.Form("user_name")
        End If
    End Sub
</script>
<html>
<body>
    <h2 align = "center">请填写个人信息</h2>
    <form id="Form1" method = "post" runat="server">
        姓名<input type = "text" name = "user_name" ><br />
        <input type = "submit" value = "确定">
    </form>
</body>
</html>


