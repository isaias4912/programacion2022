CREATE DATABASE peluqueria_canina;
DROP SCHEMA peluqueria_canina;
use peluqueria_canina;

CREATE TABLE Dueno
(
DNI int,
Nombre varchar (25),
Apellido varchar (25),
Teléfono int,
Dirección varchar (25),
CONSTRAINT DNI PRIMARY KEY (DNI)
);

CREATE TABLE Perro 
(
Id_Perro int,
Nombre varchar (25),
Fecha_nac date ,
Sexo varchar(25),
DNI_Dueno int,
CONSTRAINT id_Perro PRIMARY KEY (Id_Perro),
CONSTRAINT f_dni FOREIGN KEY (DNI_Dueno) REFERENCES Dueno (DNI)
);

CREATE TABLE Historial
(
Id_Historial int,
Fecha date ,
Perro int,
Descripción text,
Monto float,
CONSTRAINT Id_historial PRIMARY KEY (Id_Historial),
CONSTRAINT Id_Perro FOREIGN KEY (Id_Perro) REFERENCES Perro (Id_Perro) 
);
INSERT INTO dueno(
DNI,Nombre,Apellido,Telefono,Dirección)VALUES
('38986916','Sebastian','Sacco',155940929,'Bernasconi 2132'),
('47303685','Bautista','Gonzalez',154940929,'Henry Aran 2880'),
('33505685','Lucia','Albarracin',152789429,'Villanueva 78'),
('35088090','Constanza','Palacios',155890256,'Elias Yofre 100');

insert into perro(
ID_Perro,Nombre,Fecha_nac,Sexo,DNI_Dueno)VALUE
(1,'Balto','2022-01-14','macho',38986916),
(2,'Kenshi','2016-03-08','macho',47303685),
(3,'Roco','2022-04-28','macho',33505685),
(4,'Lola','2020-12-15','hembra',35088090);

insert into historial(
id_Historial,Fecha,Perro,Descripción,Monto)VALUES
(1,'2022-02-02',3,'corte-baño',2500.00),
(2,'2022-04-15',2,'baño',1500.00),
(3,'2020-09-06',4,'recorte uñas-corte-baño',3500.00),
(4,'2022-06-14',1,'recorte uñas-baño',2500.00);

SELECT * FROM Historial
WHERE Fecha <= '2021-01-01'

DELETE FROM Perro
WHERE Id_Perro= '2'
















