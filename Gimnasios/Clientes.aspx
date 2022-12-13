<%@ Page Title="" Language="C#" MasterPageFile="~/MPAdmin.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="Gimnasios.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br style="color: #FF0000" />
    <br />
&nbsp;&nbsp;
    <span style="color: #FF0000"><strong>&nbsp;&nbsp;&nbsp;
    </strong></span>
    <br />
    <br style="color: #FF0000" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #FF0000"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span><strong>
    <br style="color: #FF0000" />
</strong><span style="color: #FF0000"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server">
</asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DATOS PERSONALES DEL CLIENTE:<br />
    </strong></span><strong>
    <br style="color: #FF0000" />
    </strong>
    <span style="color: #FF0000"><strong>&nbsp;


    Usuario: </strong> </span> <strong> <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="email" DataValueField="email" style="color: #FF0000" DataSourceID="SqlDataSource1" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>

    </strong>

    <span style="color: #FF0000"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Provincia:&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource2" DataTextField="Codigo_Provincia" DataValueField="Codigo_Provincia" style="color: #FF0000" AutoPostBack="True" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged">
</asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;CODIGO CLIENTE :
<asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="codigo_Usuario" DataValueField="codigo_Usuario" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DB_GimnasioConnectionString %>" SelectCommand="SELECT [codigo_Usuario] FROM [Mae_Usuarios] WHERE ([email] = @email)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="email" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<br />
<br />
&nbsp;Nombre:&nbsp;&nbsp;&nbsp; </strong> </span><strong> <asp:TextBox ID="TextBox1" runat="server" style="color: #FF0000"></asp:TextBox>
    
    </strong>
    
    <span style="color: #FF0000"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Canton:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="Codigo_Canton" DataValueField="Codigo_Canton" style="color: #FF0000" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
    </asp:DropDownList>
    &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;
    
    Apellidos:&nbsp; </strong> </span> <strong> <asp:TextBox ID="TextBox2" runat="server" style="color: #FF0000"></asp:TextBox>

    </strong>

    <span style="color: #FF0000"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Distrito:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList5" runat="server" style="color: #FF0000" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Codigo_Canton" DataValueField="Codigo_Canton" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
    </asp:DropDownList>
    <br />
    <br />
&nbsp;

    Telefono:&nbsp;&nbsp; </strong> </span> <strong> <asp:TextBox ID="TextBox3" runat="server" style="color: #FF0000"></asp:TextBox>

    </strong>

    <span style="color: #FF0000"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Direccion (Comentarios):&nbsp;
    <asp:TextBox ID="TextBox4" runat="server" Width="357px" style="color: #FF0000"></asp:TextBox>
    &nbsp;
    <br />
    <br />
&nbsp;

    Codigo de Rutina: </strong> </span> <strong> <asp:DropDownList ID="DropDownList2" runat="server" DataTextField="id_rutina" DataValueField="id_rutina" style="color: #FF0000" DataSourceID="SqlDataSource6"></asp:DropDownList>

    <br style="color: #FF0000" />
    <br style="color: #FF0000" />
    <br style="color: #FF0000" />
</strong><span style="color: #FF0000"><strong>&nbsp;&nbsp;

    </strong></span><strong>

    <asp:Button ID="Button1" runat="server" Text="Agregar" style="color: #FF0000" OnClick="Button1_Click" />
    </strong><span style="color: #FF0000"><strong>&nbsp;&nbsp;
    </strong></span><strong>
    <asp:Button ID="Button2" runat="server" Text="Modificar" style="color: #FF0000" OnClick="Button2_Click" />
    </strong><span style="color: #FF0000"><strong>&nbsp;&nbsp;
    </strong></span><strong>
    <asp:Button ID="Button3" runat="server" Text="Eliminar" style="color: #FF0000" OnClick="Button3_Click" />
    <br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_GimnasioConnectionString %>" SelectCommand="SELECT [email] FROM [Mae_Usuarios] WHERE ([rol] = @rol)">
    <SelectParameters>
        <asp:Parameter DefaultValue="user" Name="rol" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB_GimnasioConnectionString %>" SelectCommand="SELECT [Codigo_Provincia] FROM [Provincia]"></asp:SqlDataSource>
</strong>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DB_GimnasioConnectionString %>" SelectCommand="SELECT [Codigo_Canton] FROM [Canton] WHERE ([Codigo_Provincia] = @Codigo_Provincia)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList6" Name="Codigo_Provincia" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DB_GimnasioConnectionString %>" SelectCommand="SELECT [Codigo_Canton] FROM [Distrito] WHERE ([Codigo_Canton] = @Codigo_Canton)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList4" Name="Codigo_Canton" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DB_GimnasioConnectionString %>" SelectCommand="SELECT [id_rutina] FROM [Mae_Rutinas]"></asp:SqlDataSource>
<br />
    <br />
</asp:Content>
