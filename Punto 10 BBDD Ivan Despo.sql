CREATE DATABASE peluqueria_canina;
DROP SCHEMA peluqueria_canina;
use peluqueria_canina;

CREATE TABLE Dueno
(
DNI integer,
Nombre varchar (30),
Apellido varchar (30),
Teléfono varchar(60),
Dirección varchar (30),
CONSTRAINT DNI PRIMARY KEY (DNI)
);

CREATE TABLE Perro 
(
Id_Perro integer,
Nombre varchar (30),
Fecha_nac date ,
Sexo varchar(30),
DNI_Dueno integer,
CONSTRAINT id_Perro PRIMARY KEY (Id_Perro),
CONSTRAINT f_dni FOREIGN KEY (DNI_Dueno) REFERENCES Dueno (DNI)
);

CREATE TABLE Historial
(
Id_Historial integer,
Fecha date ,
Perro integer,
Descripción varchar(100),
Monto float,
CONSTRAINT Id_historial PRIMARY KEY (Id_Historial),
CONSTRAINT Id_Perro FOREIGN KEY (Id_Perro) REFERENCES Perro (Id_Perro) 
);
INSERT INTO dueno(
DNI,Nombre,Apellido,Telefono,Dirección)VALUES
('34551236','Ivan','Despo',1156022482,'Cristiania 536'),
('32333789','Daniela','Gonzalez',154941029,'Don Bosco 2243'),
('40221314','Lucia','Albarracin',152789129,'Alcalde 7812'),
('35088110','Julieta','Poderes',153390256,'Pola 1000');

insert into perro(
ID_Perro,Nombre,Fecha_nac,Sexo,DNI_Dueno)VALUE
(1,'Guri','2022-02-10','macho',34551236),
(2,'Loqui','2014-06-08','macho',32333789),
(3,'Luna','2021-06-25','hembra',40221314),
(4,'Loli','2019-12-16','hembra',35088110);

insert into historial(
id_Historial,Fecha,Perro,Descripción,Monto)VALUES
(1,'2022-02-02',3,'baño',2500.00),
(2,'2022-08-15',2,'baño',3500.00),
(3,'2020-10-06',4,'recorte uñas-corte-baño',4000.00),
(4,'2022-06-14',1,'recorte uñas-baño',500.00);

DELETE FROM  Historial;

