create database NEWDB_Gimnasio

create table Mae_Usuarios
(
codigo_Usuario int identity (1,1),
email nvarchar(30) PRIMARY KEY not null,
clave nvarchar(30) not null,
rol nvarchar(15) not null,
)

--Procedimientos de Tabla de Usuarios

-----------------------------------------------------------------------------------------

create procedure consultarUsuarios
as
begin
select * from Mae_Usuarios
end


create procedure consultarusuarioespe
@email nvarchar(30)
as
begin
select * from Mae_Usuarios where  email=@email
end


-----------------------------------------------------------------------------------------
create procedure agregarUsuarios

@email nvarchar(30),
@clave nvarchar(30),
@rol nvarchar(15)
as
begin
insert into Mae_Usuarios (email,clave,rol) values (@email,@clave,@rol)
end


exec agregarUsuarios 'euboaz@hotmail.com','123abc','admin'
-----------------------------------------------------------------------------------------

create procedure validarUsuario
@email nvarchar(30),
@clave nvarchar(30)
as
begin
select * from Mae_Usuarios where email=@email and clave = @clave
end

-----------------------------------------------------------------------------------------
create procedure modificarUsuarios
@email nvarchar(30),
@clave nvarchar(30),
@rol nvarchar(15)
as
begin
update Mae_Usuarios set clave = @clave, rol = @rol where email = @email
end

-----------------------------------------------------------------------------------------
create procedure eliminarUsuarios
@email nvarchar(30)
as
begin
delete from Mae_Usuarios where email = @email
end
-----------------------------------------------------------------------------------------

create table Clientes
(
Codigo_Cliente int PRIMARY KEY,
Nombre nvarchar(50),
Apellido nvarchar(100),
email nvarchar(30) FOREIGN KEY REFERENCES Mae_Usuarios(email),
Telefono nvarchar(20),
id_Rutina int FOREIGN KEY REFERENCES Mae_Rutinas (id_rutina) not null
)
-----------------------------------------------------------------------------------------

create procedure consultarClientes
as
begin
select * from clientes
end

exec consultarClientes

create procedure consultarClienteespe
@email nvarchar(30)
as
begin
select * from Clientes where email =@email
end



create procedure agregarClientes
@Codigo_Cliente int,
@Nombre nvarchar(50),
@Apellido nvarchar(100),
@email nvarchar(30),
@Telefono nvarchar(20),
@id_Rutina int
as
begin
insert into Clientes (Codigo_Cliente,Nombre,Apellido,email,Telefono,id_Rutina) values (@Codigo_Cliente,@Nombre,@Apellido,@email,@Telefono,@id_Rutina)
end

exec agregarClientes 'Eusebio','Bogantes Azofeifa','euboaz2@hotmail.com','8888-8888',1


create procedure eliminarClientes
@Codigo_Cliente int
as
begin
delete from Clientes where Codigo_Cliente = @Codigo_Cliente
end

create procedure modificarClientes
@Codigo_Cliente int,
@Nombre nvarchar(50),
@Apellido nvarchar(100),
@Telefono nvarchar(20),
@id_Rutina int
as
begin
update Clientes set  Nombre = @Nombre,Apellido=@Apellido,Telefono=@Telefono,id_Rutina=@id_Rutina where Codigo_Cliente = @Codigo_Cliente
end







--Creacion de Tabla de Rutinas

create table Mae_Rutinas
(
id_rutina int identity (1,1) PRIMARY KEY,
nombre_rutina nvarchar(30)
)

-----------------------------------------------------------------------------------------

--Procedimientos de Tabla de Rutinas

create procedure agregarRutinas -- Agregar rutinas para administrador
@nombre_rutina nvarchar(30)
as
begin
insert into Mae_Rutinas (nombre_rutina) values (@nombre_rutina)
end


create procedure consultarRutinasAdmin
as
begin
select * from Mae_Rutinas
end

create procedure eliminarRutinasAdmin
@nombre_rutina nvarchar(30)
as
begin
delete from Mae_Rutinas where nombre_rutina = @nombre_rutina
end

create procedure modificarRutinasAdmin
@nombre_rutina nvarchar(30)
as
begin
update Mae_Rutinas set  nombre_rutina = @nombre_rutina where nombre_rutina = @nombre_rutina
end

-----------------------------------------------------------------------------------------

create procedure consultarRutinasClientes
@email nvarchar(30)
as
begin
select Clientes.id_rutina,Mae_Rutinas.nombre_rutina from Clientes inner join Mae_Rutinas on Clientes.id_rutina = Mae_Rutinas.id_rutina where Clientes.email = @email
end

-----------------------------------------------------------------------------------------

create procedure cambiarRutinasClientes
@email nvarchar(30),
@id_Rutina int
as
begin
update Clientes set  id_Rutina = @id_Rutina where Clientes.email = @email
end

-----------------------------------------------------------------------------------------


create table Provincia
(
Codigo_Provincia int identity (1,1) PRIMARY KEY,
Nombre_Provincia nvarchar(50)
)

insert into Provincia (Nombre_Provincia) values ('Heredia')
insert into Provincia (Nombre_Provincia) values ('Alajuela')
insert into Provincia (Nombre_Provincia) values ('San Jose')

select * from Provincia

create table Canton
(
Codigo_Canton int identity (1,1) PRIMARY KEY,
Nombre_Canton nvarchar(50),
Codigo_Provincia int Foreign Key References Provincia (Codigo_Provincia)
)

insert into Canton (Nombre_Canton,Codigo_Provincia) values ('Central',3)

delete from canton where Codigo_Canton = 5 
select * from Canton

create table Distrito
(
Codigo_Distrito int identity (1,1) PRIMARY KEY,
Nombre_Distrito nvarchar(50),
Codigo_Canton int Foreign Key References Canton (Codigo_Canton)
)


select * from Provincia
select * from Canton
select * from Distrito



insert into Distrito (Nombre_Distrito,Codigo_Canton) values ('Cristo Rey',7)

create table Direcciones
(
Codigo_Direccion int identity (1,1) PRIMARY KEY,
Codigo_Cliente int Foreign Key References Clientes (Codigo_Cliente),
Codigo_Provincia int Foreign Key References Provincia (Codigo_Provincia),
Codigo_Canton int Foreign Key References Canton (Codigo_Canton),
Codigo_Distrito int Foreign Key References Distrito (Codigo_Distrito),
Comentarios nvarchar(150)
)


create procedure consultarDirecciones
as 
begin
select * from Direcciones
end

create procedure consultarDireccionesespe
@email nvarchar(30)
as
begin
select direcciones.Codigo_Provincia,Direcciones.Codigo_Canton,Codigo_Distrito,Comentarios from Direcciones inner join Clientes on Clientes.Codigo_Cliente = Direcciones.Codigo_Cliente where Clientes.email = @email
end

create procedure agregarDirecciones
@Codigo_Cliente int,
@Codigo_Provincia int,
@Codigo_Canton int,
@Codigo_Distrito int, 
@Comentarios nvarchar(150)
as
begin
insert into Direcciones (Codigo_Cliente,Codigo_Provincia,Codigo_Canton,Codigo_Distrito,Comentarios) values (@Codigo_Cliente,@Codigo_Provincia,@Codigo_Canton,@Codigo_Distrito,@Comentarios)
end


create procedure eliminarDirecciones
@Codigo_Cliente int
as
begin
delete from Direcciones where Codigo_Cliente = @Codigo_Cliente
end

create procedure modificarDirecciones
@Codigo_Cliente int,
@Codigo_Provincia int,
@Codigo_Canton int,
@Codigo_Distrito int, 
@Comentarios nvarchar(150)
as
begin
update Direcciones set  Codigo_Provincia = @Codigo_Provincia,Codigo_Canton=@Codigo_Canton,Codigo_Distrito=@Codigo_Distrito,Comentarios=@Comentarios where Codigo_Cliente = @Codigo_Cliente
end

-----------------------------------------------------------------------------------------

create table producto
(
codigo_producto int identity (1,1) PRIMARY KEY,
nombre_producto varchar(50),
precio int

)

create procedure consultarProducto
as
begin
select * from producto
end

create procedure agregarProducto
@nombre_producto varchar(50),
@precio int
as
begin 
insert into producto (nombre_producto,precio) values (@nombre_producto,@precio)
end

create procedure modificarProducto
@codigo_producto int, 
@nombre_producto varchar(50),
@precio int
as
begin 
update producto set nombre_producto=@nombre_producto,precio=@precio where codigo_producto=@codigo_producto
end

create procedure borrarProducto
@codigo_producto int
as
begin
delete from producto where codigo_producto = @codigo_producto
end

create procedure MaeFactura
 
  @cliente varchar(50),
  @total money
  as 

  begin
  DECLARE @FECHA datetime
  SET @fecha = GETDATE()
    insert into mae_factura (fecha,cliente,total) values (@FECHA,@cliente,@total)
  
  end

    create procedure DetFactura

  @linea int,
  @codigo int,
  @cantidad int,
  @precio money
  as 

  begin
    Declare @id int
	set @id = (select top 1 id from Mae_factura order by id desc)
    insert into Det_factura (id,linea,codigo,cantidad,precio) values (@id,@linea,@codigo,@cantidad,@precio)
  
  end
