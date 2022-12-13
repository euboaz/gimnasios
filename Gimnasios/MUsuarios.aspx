<%@ Page Title="Mantenimiento Usuarios - Admin" Language="C#" MasterPageFile="~/MPAdmin.Master" AutoEventWireup="true" CodeBehind="MUsuarios.aspx.cs" Inherits="Gimnasios.MUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">        
            &nbsp;&nbsp;&nbsp;
        
            <link href="CSS/mantUsuarios.css" rel="stylesheet" />
            <br />
            <br />
            <br />
&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" CssClass="mydatagrid" HeaderStyle-CssClass="header" RowStyle-CssClass="rows">
            </asp:GridView>
            <br />
            <br />
&nbsp;&nbsp; Email: <asp:TextBox ID="TEmail" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Clave: <asp:TextBox ID="TClave" runat="server"></asp:TextBox>
            <br />
&nbsp;&nbsp;
            <br />
&nbsp;&nbsp; Rol:&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DDLRol" runat="server">
                <asp:ListItem>admin</asp:ListItem>
                <asp:ListItem Selected="True">user</asp:ListItem>
            </asp:DropDownList>
            <br />



            <br />
            <br />
&nbsp;&nbsp;


            <asp:Button ID="Button2" runat="server" Text="Añadir" OnClick="Button2_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Modificar" OnClick="Button3_Click" />
            &nbsp;
            <asp:Button ID="Button4" runat="server" Text="Eliminar" OnClick="Button4_Click" />

</asp:Content>
