<script language="VB" runat="server">
	Sub Enter_Click(Sender As Object, E As EventArgs)
		If Page.IsValid=True Then    '如果通过验证，则显示有关信息
			Dim strMessage As String                               
            strMessage = "用户名：" & user_name.Text
            strMessage = strMessage & "<br>用户姓名：" & myname.Text
			strMessage=strMessage & "<br>用户密码：" & password1.text    
            strMessage = strMessage & "<br>出生日期：" & age.Text
            strMessage = strMessage & "<br>电话：" & Tel.Text
            strMessage = strMessage & "<br>电子信箱：" & email.Text
			message.text=strMessage                                
		End IF
	End sub
</script>
<html>
<body>
    <h4 align="center">个人注册</h4>
    <form id="Form1" runat="server">
        用户名：<asp:textbox id="user_name" runat="server"/>
	<asp:RequiredFieldValidator id="require1" ControlToValidate="user_name" ErrorMessage="必须输入用户名"  runat="server"/>
	<asp:RegularExpressionValidator id="Regular1" ControlToValidate="user_name" ValidationExpression="[a-zA-Z][a-zA-Z0-9_]{0,}" ErrorMessage="第1个字符必须是字母,且只能包含字母、数字和下划线" runat="server" />
    
    <p>用户姓名：<asp:textbox id="myname" runat="server"/>
    <asp:RequiredFieldValidator id="RequiredFieldValidator1" ControlToValidate="myname" ErrorMessage="必须输入用户姓名"  runat="server"/>


	<p>用户密码：<asp:textbox id="password1" textmode="Password" runat="server"/>
	<p>确认密码：<asp:textbox id="password2" textmode="Password" runat="server"/>
	<asp:RequiredFieldValidator id="require2" ControlToValidate="password1" ErrorMessage="必须输入密码"  runat="server"/>
	<asp:CompareValidator id="Compare1" ControlToValidate="password1" ControlToCompare="password2" ErrorMessage="密码和确认密码必须一致" runat="server" />


	<p>出生日期：<asp:textbox id="age" runat="server"/>
	<asp:RequiredFieldValidator id="require3" ControlToValidate="age" ErrorMessage="必须输入出生日期"  runat="server"/>
	<asp:RegularExpressionValidator id="Regular4" ControlToValidate="age" ValidationExpression="[\d]{4}[-\ ][\d]{1,2}[-\ ][\d]{1,2}" ErrorMessage="必须输入正确的出生日期" runat="server" />


    
    <p>电话：<asp:textbox id="Tel" runat="server"/>
    <asp:RequiredFieldValidator id="RequiredFieldValidator2" ControlToValidate="Tel" ErrorMessage="必须输入电话号码"  runat="server"/>
    <asp:RegularExpressionValidator id="Regular3" ControlToValidate="Tel" ValidationExpression="[0-9]{3,4}-[0-9]{7,8}" ErrorMessage="必须输入正确的电话号码" runat="server" />

	<p>E—mail：<asp:textbox id="email" columns="50" runat="server"/>
	<asp:RequiredFieldValidator id="require4" ControlToValidate="email" ErrorMessage="必须输入E-mail地址"  runat="server"/>
	<asp:RegularExpressionValidator id="Regular2" ControlToValidate="email" ValidationExpression=".{1,}@.{1,}\.[a-zA-Z]{2,3}" ErrorMessage="必须输入正确的E-mail地址" runat="server" />

		<p><asp:button id="Enter" text="提 交"  onClick="Enter_Click" runat="server" />
		<p><asp:label id="message" runat="server"/>
    </form>
</body>
</html>

