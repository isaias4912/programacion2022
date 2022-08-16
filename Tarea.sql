CREATE DATABASE peluqueria_canina;
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
('31734566','Santiago','Vitale',1559401056,'Colorado 1232'),
('32678542','Baltasar','Gomez',155104036,'Cervantes 93'),
('30876123','Laura','Gimenez',153220071,'Bolivar 567'),
('29003456','Anabella','Figueroa',156153421,'Alem 1237');

insert into perro(
ID_Perro,Nombre,Fecha_nac,Sexo,DNI_Dueno)VALUE
(8,'Rocky','2019-07-23','macho',31734566),
(9,'Pocho','2017-06-27','macho',32678542),
(10,'Mia','2022-01-02','hembra',30876123),
(11,'Haru','2021-10-20','hembra',29003456);

insert into historial(
id_Historial,Fecha,Perro,Descripción,Monto)VALUES
(1,'2022-09-20',8,'lavado',1500.00),
(2,'2022-07-30',10,'lavado y corte',2800.00),
(3,'2022-08-04',9,'uñas,corte y lavado',3800.00),
(4,'2022-06-25',11,'desparacitar,uñas y lavado',4500.00);
SELECT * FROM Dueno;
/*Actualizar direccion dueno*/
UPDATE Dueno SET Dirección = 'Libertad 123' WHERE Dirección = 'Bolivar 567';
