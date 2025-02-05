create database DDCrudAngular

go

use DDCrudAngular

create table Empleado(
IdEmpleado int primary key identity,
NombreCompleto varchar(50),
Correo varchar(50),
Sueldo decimal(10,2),
FechaContrato date
)

go

insert into Empleado(NombreCompleto,Correo,Sueldo,FechaContrato)
values ('Maria Mendez','maria@gmail.com',4500,'2024-01-12')

select * from Empleado
exec sp_listaEmpleados
create proc sp_listaEmpleados
as	
begin
	select IdEmpleado,NombreCompleto,Correo,Sueldo,CONVERT(char(10),FechaContrato,103)[FechaContrato] from Empleado
end

go

create proc sp_listaEmpleado(
@IdEmpleado int
)
as	
begin
	select IdEmpleado,NombreCompleto,Correo,Sueldo,CONVERT(char(10),FechaContrato,103)[FechaContrato] from Empleado where IdEmpleado = @IdEmpleado
end

go

create proc sp_CrearEmpleado(
@NombreCompleto varchar(50),
@Correo varchar(50),
@Sueldo decimal(10,2),
@FechaContrato varchar(10)
)
as
begin
	set dateformat dmy

	insert into Empleado
	(NombreCompleto,
	Correo,
	Sueldo,
	FechaContrato)
	values 
	(@NombreCompleto,
	@Correo,
	@Sueldo,
	convert(date,@FechaContrato))
end

create proc sp_EditarEmpleado(
@IdEmpleado int,
@NombreCompleto varchar(50),
@Correo varchar(50),
@Sueldo decimal(10,2),
@FechaContrato varchar(10)
)
as
begin
	set dateformat dmy

	update Empleado
	set
	NombreCompleto = @NombreCompleto,
	Correo = @Correo,
	Sueldo = @Sueldo,
	FechaContrato = convert(date,@FechaContrato)
	where IdEmpleado = @IdEmpleado
end

create proc sp_EliminarEmpleado(
@IdEmpleado int
)
as
begin
	delete from Empleado where IdEmpleado = @IdEmpleado
end