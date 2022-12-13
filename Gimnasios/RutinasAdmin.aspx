<%@ Page Title="" Language="C#" MasterPageFile="~/MPAdmin.Master" AutoEventWireup="true" CodeBehind="RutinasAdmin.aspx.cs" Inherits="Gimnasios.RutinasAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
<br />
<br />

    <asp:GridView ID="GridView1" runat="server"></asp:GridView>

    <br style="color: #FF3300" />
<br style="color: #FF3300" />
<br style="color: #FF3300" />
<span style="color: #FF3300">&nbsp;&nbsp;

    Nombre de la Rutina: </span> <asp:TextBox ID="TNombreRutina" runat="server" style="color: #FF3300"></asp:TextBox>

    <br />
<br />
<br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Button ID="BAgregar" runat="server" Text="Agregar" OnClick="BAgregar_Click" style="color: #FF3300" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="BEliminar" runat="server" Text="Eliminar" OnClick="BEliminar_Click" style="color: #FF3300" />

</asp:Content>
