<script language="VB" runat="server">
Sub Page_Load(Sender As Object, E As EventArgs)
Dim vNum As Integer			'定义一个访问次数变量
 If Request.Cookies("vNumber") Is Nothing Then 
		'如果是第1次访问，就令访问次数为1
	vNum=1
 Else
		'如果不是第1次访问，就令访问次数在原有次数上加1			
            vNum = Request.Cookies("vNumber").Value + 1
 End If
   Response.Cookies("vNumber").value=vNum'将新的访问次数保存到Cookies中
   Response.Cookies("vNumber").Expires=DateTime.Now.AddYears(1) '设置有效期为1年后
  message.text="您是第" & vNum & "次访问本站"   
End Sub
</script>
<html>
<body>
	<h4 align="center">Cookies示例</h4>
	<form id="Form1" runat=server>
		<asp:Label id="message" runat="server" />
	</form>
</body>
</html>

