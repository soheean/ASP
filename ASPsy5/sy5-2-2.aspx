<script language="VB" runat="server">
	Sub Page_Load(sender As Object, e As EventArgs)
        If Session("user_name") = "" Then
        Response.Redirect("sy5-2-1.aspx")
        End If
    End Sub
</script>
<html>
<body>
    <%
    Response.Write(Session("user_name") & "你好，欢迎光临本站！"）
     %>
</body>
</html>
