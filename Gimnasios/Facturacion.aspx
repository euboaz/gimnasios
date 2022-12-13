<%@ Page Title="" Language="C#" MasterPageFile="~/MPAdmin.Master" AutoEventWireup="true" CodeBehind="Facturacion.aspx.cs" Inherits="Gimnasios.Facturacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/gridview.css" rel="stylesheet" />
    <link href="CSS/boton.css" rel="stylesheet" />
     <div>
            <table style="width: 100%;" border="2">
                <tr>
                    <td class="auto-style3">Codigo</td>
                    <td class="auto-style2"><strong>Producto</strong></td>
                    <td class="auto-style2"><strong>Cantidad</strong></td>
                    <td class="auto-style2"><strong>Precio</strong></td>
                </tr>

                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="tcodigo" runat="server" OnTextChanged="tcodigo_TextChanged" TextMode="Number"></asp:TextBox>&nbsp;&nbsp;
                        </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tnombre" runat="server" Width="216px" Enabled="False"></asp:TextBox></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tcantidad" runat="server" TextMode="Number"></asp:TextBox></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tprecio" runat="server" Enabled="False"></asp:TextBox></td>
                </tr>


                 <tr>
                    <td class="auto-style3">Codigo cliente</td>
                    <td class="auto-style2"><strong>Nombre Cliente</strong></td>
                    <td class="auto-style2"><strong>Fecha</strong></td>
                    <td class="auto-style2"><strong>Numero factura</strong></td>
                </tr>
                 <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="tcodigocliente" runat="server" OnTextChanged="tcodigo_TextChanged" TextMode="Number"></asp:TextBox>&nbsp;&nbsp;
                        </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tnombrecliente" runat="server" Width="216px" Enabled="False"></asp:TextBox></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tfecha" runat="server" TextMode="Number"></asp:TextBox></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tnumerofactura" runat="server" Enabled="False"></asp:TextBox></td>
                </tr>

               
                
                
            </table>
        </div>
        
        <asp:Button ID="Button1" CssClass="button button2" runat="server" Text="INGRESAR" OnClick="Button1_Click" />
        <div> 
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None"
                AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                PageSize="7" >
                <Columns>
                    <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" />
                    <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" />
                </Columns>
            </asp:GridView>
        </div>

        <div>
            <table style="width: 100%;" border="1">
                <tr>
                    <td style="text-align:center"><strong>SUBTOTAL</strong></td>
                    <td style="text-align:center"><strong>IVA</strong></td>
                    <td style="text-align:center"><strong>TOTAL</strong></td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:Label ID="LSB" runat="server" Font-Size="Large" Text="0"></asp:Label>
                    </td>
                    <td style="text-align:center">
                        <asp:Label ID="LIVA" runat="server" Font-Size="Large" Text="0"></asp:Label>
                    </td>
                    <td style="text-align:center">
                        <asp:Label ID="LTOTAL" runat="server" Font-Size="Large" Text="0"></asp:Label>
                    </td>
                    
                </tr>
                
            </table>
        </div>

         <asp:Button ID="Bfacturar" CssClass="button button3" runat="server" Text="FACTURAR" OnClick="Bfacturar_Click" />


</asp:Content>
