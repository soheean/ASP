<%@ Page Language="VB" %>
<script runat="server">
    Sub Page_Load(sender As Object, e As EventArgs)
      Dim mapx1 As Object
      mapx1 = Server.CreateObject("MapX.Map.5")
      mapx1.geoset = "world.gst"
	  mapx1.bounds = mapx1.layers.bounds
	  mapx1.exportmap("d:\MapXGif\test.gif", 2)
      image1.ImageUrl = "d:\MapXGif\test.gif"
      dim i as integer
      for i=1 to mapx1.layers.count
        listbox1.items.add ( mapx1.layers(i).name)
      next i
    End Sub
</script>
<html>
<head>
</head>
<body>
    <form id="Form1" runat="server">
        <asp:Image id="Image1" style="Z-INDEX: 115; LEFT: 220px; TOP: 21px" runat="server" Width="668px" Height="442px"></asp:Image>
        <asp:ListBox id="ListBox1" style="Z-INDEX: 108; LEFT: 8px; TOP: 262px" runat="server" Width="179px" Height="184px"></asp:ListBox>
    </form>
</body>
</html>

