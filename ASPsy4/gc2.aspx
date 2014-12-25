<script language="VB" runat="server">
    Sub page_load(ByVal Sender As Object, ByVal E As EventArgs)
        Dim ip As System.Net.IPAddress
        ip = System.Net.IPAddress.Parse(Request.UserHostAddress)
        Dim ipH As System.Net.IPHostEntry
        ipH = System.Net.Dns.GetHostEntry(ip)
        Message.Text = "您的IP地址是：" & Request.ServerVariables("Remote_ADDR") & "<BR>客户端主机名为" & ipH.HostName
    End Sub
</script>
<html>
<body>
   <h4 align="center">ServerVariables数据集合示例</h4>
   <form id="Form1" runat=server>
	 <asp:label id="Message"  runat="server"/>
   </form>
</body>
</html>

