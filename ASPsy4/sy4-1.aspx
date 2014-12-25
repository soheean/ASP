<script language="VB" runat="server">
    Sub page_load(ByVal Sender As Object, ByVal E As EventArgs)
       
        Dim IP, IPCstr
        IP = Request.ServerVariables("REMOTE_ADDR")
        Response.Write("来访者地址： " & IP)
        IPCstr = Left(IP, 7)
        
        If IPCstr <> "162.105" Then
            Response.Write("你是非法用户！ ")
        Else
            Response.Write("欢迎光临！ ")
        End If
         
            
        'Message.Text = "您的IP地址是：" & Request.ServerVariables("Remote_host") & "<BR>客户端主机名为" & ipH.HostName
    End Sub
</script>
<html>
<body>
   <h4 align="center"></h4>
   <form id="Form1" runat=server>
	 <asp:label id="Message"  runat="server"/>
   </form>
</body>
</html>

