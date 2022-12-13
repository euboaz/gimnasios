<%@ Page Title="" Language="C#" MasterPageFile="~/MPUser.Master" AutoEventWireup="true" CodeBehind="RutinasClientes.aspx.cs" Inherits="Gimnasios.RutinasClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
    <span style="color: #FF3300">RUTINAS DISPONIBLES:</span><br style="color: #FF3300" />
    <asp:GridView ID="GridView1" runat="server" style="color: #FF3300"></asp:GridView>

    <br style="color: #FF3300" />
    <br style="color: #FF3300" />
    <br style="color: #FF3300" />
    <br style="color: #FF3300" />
    <br style="color: #FF3300" />
    <br style="color: #FF3300" />
    <br style="color: #FF3300" />

    <span style="color: #FF3300"><strong><span style="font-size: xx-large">Consultar mi Rutina&nbsp; </span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Usuario (Correo):&nbsp;&nbsp; </span> <asp:TextBox ID="TEmail" runat="server" style="color: #FF3300"></asp:TextBox>

    <span style="color: #FF3300">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
    <asp:Button ID="Button2" runat="server" Height="29px" OnClick="Button2_Click" style="color: #FF3300" Text="Consultar Rutinas" Width="157px" />

    <br style="color: #FF3300" />
    <br style="color: #FF3300" />
    <asp:GridView ID="GridView2" runat="server" style="color: #FF3300">
    </asp:GridView>


    <br style="color: #FF3300" />
    <br />
    .Nueva Rutina:&nbsp;
    <asp:DropDownList ID="DDID_Rutina" runat="server" DataSourceID="SqlDataSource1" DataTextField="id_rutina" DataValueField="id_rutina">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Height="44px" OnClick="Button3_Click" Text="MODIFICAR" Width="122px" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_GimnasioConnectionString %>" SelectCommand="SELECT [id_rutina] FROM [Mae_Rutinas]"></asp:SqlDataSource>
&nbsp;<br style="color: #FF3300" />
    <br style="color: #FF3300" />


    <br />
    <br />
    <br />
&nbsp;&nbsp;


    &nbsp;&nbsp;&nbsp;
    
</asp:Content>
