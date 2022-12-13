<%@ Page Title="" Language="C#" MasterPageFile="~/MPAdmin.Master" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="Gimnasios.Reportes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 style="color: #FF3300">GENERADOR DE REPORTES</h1>


    <span style="color: #FF3300">&nbsp;&nbsp;&nbsp;


    Usuario a Consultar:&nbsp; </span> <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="email" DataValueField="email" style="color: #FF3300"></asp:DropDownList>


    <br />
    <strong>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_GimnasioConnectionString %>" SelectCommand="SELECT [email] FROM [Mae_Usuarios] WHERE ([rol] = @rol)">
    <SelectParameters>
        <asp:Parameter DefaultValue="user" Name="rol" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</strong>
    <br />
&nbsp;<asp:GridView ID="GridView1" runat="server" style="color: #FF3300" Width="206px"></asp:GridView>
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;

    
    <asp:Button ID="BUsuarios" runat="server" Text="Informacion Usuario" style="color: #FF3300" OnClick="BUsuarios_Click" /> 
    &nbsp;&nbsp;&nbsp; 
    <asp:Button ID="BCliente" runat="server" Text="Informacion Cliente" style="color: #FF3300" OnClick="BCliente_Click" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Direcciones" runat="server" Text="Direcciones" style="color: #FF3300" OnClick="Direcciones_Click" />
    &nbsp;&nbsp;<asp:Button ID="Rutinas" runat="server" Text="Rutina Usuario" style="color: #FF3300" OnClick="Rutinas_Click" />


&nbsp;
    <asp:Button ID="Rutinas0" runat="server" Text="Facturas Usuario" style="color: #FF3300" OnClick="Rutinas_Click" />


</asp:Content>
