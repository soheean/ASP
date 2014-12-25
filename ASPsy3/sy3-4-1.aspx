<%@ Page Language="VB" Debug="true" %>

<script Language="VB" runat="server">

    Protected Sub submit_Click(sender As Object, e As System.EventArgs)
        Dim a1, a2, a3, a4 As String
        Dim sum As Integer
        a1 = Request.Form("t1").ToString()
        a2 = Request.Form("t2").ToString()
        a3 = Request.Form("t3").ToString()
        a4 = Request.Form("t4").ToString()
        sum = 0
        If a1 = "数值型" Then
            sum = sum + 25
        End If
        If a2 = "CDate" Then
            sum = sum + 25
        End If
        If a3 = "片上系统" Then
            sum = sum + 40
        End If
        If a4 = "LCase,Split" Then
            sum = sum + 10
        End If
        
        If sum < 60 Then
            Label1.Text = "得分为:" + CStr(sum) & "努力吧！"
            'Response.Write("你的得分是:" & CStr(sum) & " 应该努力学习！ ")
        ElseIf sum < 80 Then
            Label1.Text = "得分为:" + CStr(sum) & "及格不是极限，继续努力！"
            'Response.Write("你的得分是:" & CStr(sum) & " 仅仅及格是不够的，继续努力！ ")
        ElseIf sum < 100 Then
            Label1.Text = "得分为:" + CStr(sum) & "就差一步满分了！"
            'Response.Write("你的得分是:" & CStr(sum) & " 继续努力，争取满分！ ")
        Else
            Label1.Text = "得分为:" + CStr(sum) & "Good Job!"
            'Response.Write("你的得分是:" & CStr(sum) & " 你真棒！ ")
        End If
    End Sub
</script>

<html>
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">

     <h1><center>在线考试程序</center></h1>
    <div>
    <table width="750" border="1" align="center">
 <tr>
 <td colspan="4">1、1+1得到的结果是什么类型？</td>
 </tr>
 <tr>
 <td width="25%"><input type="radio" name="t1" value="字符串型">
 A、字符串型</td>
<td width="25%"><input type="radio" name="t1" value="日期型">
 B、日期型</td>
 <td width="25%"><input type="radio" name="t1" value="数值型">
 C、数值型</td>
 <td width="25%"><input type="radio" name="t1" value="布尔型">
D、布尔型</td>
 </tr>
 
 <tr>
<td colspan="4">2、日期转换函数是下列哪一个？</td>
 </tr>
 <tr>
 <td><input type="radio" name="t2" value="CDate">
 A、 CDate</td>
 <td><input type="radio" name="t2" value="CInt">
 B、 CInt</td>
 <td><input type="radio" name="t2" value="CStr">
 C、 CStr</td>
 <td><input type="radio" name="t2" value="CDb1">
 D、 CDb1</td>
 </tr>
 <tr>
 <td colspan="4"> 3、SOC又称为？</td>
 </tr>
 <tr>
 <td width="25%"><input type="radio" name="t3" value="中央处理器">

 A、中央处理器 </td>
 <td width="25%"><input type="radio" name="t3" value="片上系统">
 B、片上系统 </td>
 <td width="25%"><input type="radio" name="t3" value="CPU处理器">
 C、CPU处理器 </td>
<td width="25%"><input type="radio" name="t3" value="单片机">
 D、单片机 </td>
 </tr>
 
 <tr>
 <td colspan="4">4、下列属于字符串处理函数的是： </td>
 </tr>
 <tr>
 <td><input type="checkbox" name="t4" value="LCase">
 A、LCase</td>
<td> <input type="checkbox" name="t4" value="Split">
 B、Split</td>
 <td> <input type="checkbox" name="t4" value="Year">
 C、Year</td>
 <td> <input type="checkbox" name="t4" value="Day">
 D、Day</td>
 </tr>
 </table>


<asp:Button ID="submit" runat="server" Text="提交" onclick="submit_Click" 
            style="z-index: 1; left: 426px; top: 371px; position: absolute; width: 74px" />

 &nbsp;</div>
    
 <input type="reset" name="Submit2" value="重做" 
         style="position: absolute; z-index: 1; left: 648px; top: 374px; height: 19px; width: 56px"><p>
         &nbsp;</p>
     <asp:Label ID="Label1" runat="server" 
         style="z-index: 1; left: 221px; top: 420px; position: absolute; width: 744px; height: 42px"></asp:Label>
    </form>
    </body>
</html>
