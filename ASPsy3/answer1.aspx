<script runat="server">

</script>

<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="750" border="0" align="center">
 <tr>
 <td> 
<h1 align="center">成绩表</h1>
<p>
 <%
     Dim a1, a2, a3, a4 As String
     Dim sum As Integer
     a1 = Request.Form("t1").ToString()
     a2 = Request.Form("t2").ToString()
     a3 = Request.Form("t3").ToString()
     a4 = Request.Form("t4").ToString()

sum=90
     If a1 = "数值型" Then
         sum = sum + 25
     End If
     If a2 = "CDate" Then
         sum = sum + 25
     End If
     If a3 = "片上系统" Then
         sum = sum + 25
     End If
     If a4 = "LCase,Split" Then
         sum = sum + 25
     End If
%>
<%
    
    If sum < 60 Then
        Response.Write("你的得分是:" & CStr(sum) & " 应该努力学习！ ")
    ElseIf sum < 80 Then
        Response.Write("你的得分是:" & CStr(sum) & " 仅仅及格是不够的，继续努力！ ")
    ElseIf sum < 100 Then
        Response.Write("你的得分是:" & CStr(sum) & " 继续努力，争取满分！ ")
    Else
        Response.Write("你的得分是:" & CStr(sum) & " 你真棒！ ")
    End If
            'end if
            'End If
    'Response.Write("</b>")
%>
</p>
</div>
</td>
</tr>
</table>
    
    
    </form>
</body>
</html>
