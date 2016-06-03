/*Creacion de tablas de prueba sql injection*/
CREATE TABLE Persona(
Cedula varchar(9) PRIMARY KEY,
nombre varchar(20) not null,
apellido1 varchar(20) not null,
apellido2 varchar(20) not null,
sexo char(1) not null,
direccion varchar(100),
telefono varchar(12),
);

USE gaudyblanco
/*Insertar tuplas en la tabla Persona*/
INSERT INTO Persona (Cedula,nombre,apellido1,apellido2,sexo,direccion,telefono)
VALUES('123456789','Luis','Perez','Ramirez','M','San José','88888888')
INSERT INTO Persona (Cedula,nombre,apellido1,apellido2,sexo,direccion,telefono)
VALUES('987654321','Luis','Leandro','Jimenez','M','Cartago','89784512')
INSERT INTO Persona (Cedula,nombre,apellido1,apellido2,sexo,direccion,telefono)
VALUES('884598623','Carolina','Azofeifa','Solano','F','Desamparados','89784144')
INSERT INTO Persona (Cedula,nombre,apellido1,apellido2,sexo,direccion,telefono)
VALUES('112244556','Raquel','Chavarría','Robles','F','Tibás','99886333')
INSERT INTO Persona (Cedula,nombre,apellido1,apellido2,sexo,direccion,telefono)
VALUES('225784698','Gabriela','Salazar','Bermudez','F','San José','887744551')
INSERT INTO Persona (Cedula,nombre,apellido1,apellido2,sexo,direccion,telefono)
VALUES('874596521','Alexandra','Martinez','Porras','F','Heredia','889954712')

/*Selects con sql injection*/
/*Ejercicio 1*/
Select * from Persona WHERE cedula = '123456789' or 1=1;

/*Ejercicio 2*/
Select * from Persona WHERE nombre ='' or ''='';

/*Ejercicio 3*/
Select * from Persona; Delete from Persona
Select * from Persona;

/*Ejercicio 4*/
Select * from Persona; DROP TABLE Persona
Select * from Persona;

/*Vuelva a ejecutar el script para crear la tabla Persona e insertar las tuplas*/

/*Ejercicio 5*/
Select * from Persona where nombre= 'Ale'; DELETE FROM Persona--' 
Select * from Persona;

/*Vuelva a ejecutar el script para crear la tabla Persona e insertar las tuplas*/

/*Ejercicio 6*/
Select * from Persona where nombre= 'Ga'; DROP TABLE Persona--' 
Select * from Persona;

/*Vuelva a ejecutar el script para crear la tabla Persona e insertar las tuplas*/

/*Ejercicio 7: validar interfaz en ejercicio de interfaces*/
/*Probar el delete y drop en el filtro general de la interfaz*/

