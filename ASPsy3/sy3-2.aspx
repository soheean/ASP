<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs)
        Dim num1, num2 As Double
        Dim num4 As Double
        num1 = Convert.ToDouble(TextBox1.Text)
        num2 = Convert.ToDouble(TextBox2.Text)
        If (DropDownList1.SelectedItem.Value = "+") Then
            num4 = num1 + num2
        ElseIf (DropDownList1.SelectedItem.Value = "-") Then
            num4 = num1 - num2
        ElseIf (DropDownList1.SelectedItem.Value = "*") Then
            num4 = num1 * num2
        ElseIf (DropDownList1.SelectedItem.Value = "/") Then
            num4 = num1 / num2
        End If
        TextBox3.Text = CStr(num4)
        Response.Write(num4)
    End Sub
</script>

<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label2" runat="server" Text="输入两个数并选择运算符号点击计算按钮得到结果:"></asp:Label>
    
    </div>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>+</asp:ListItem>
        <asp:ListItem>-</asp:ListItem>
        <asp:ListItem Value="*">X</asp:ListItem>
        <asp:ListItem Value="/">÷</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" Text="="></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Width="92px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="计算" />
    </form>
</body>
</html>
