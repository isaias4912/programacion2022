create database veterinaria_2;
use veterinaria2;

CREATE TABLE Dueno
(
DNI INT NOT NULL,
Nombre VARCHAR(30),
Apellido VARCHAR(30),
Telëfono INT,
Dirección VARCHAR(50),
CONSTRAINT DNI PRIMARY KEY (DNI)
);

insert into Dueno values (12345678, "Inodoro", "Pereyra", 351123456, "Córdoba 33");
insert into Dueno values (23456789, "Abel", "Vargas", 351987654, "Córdoba 220");

CREATE TABLE Perro
(
ID_Perro INT NOT NULL,
Nombre VARCHAR(30),
Fecha_nac DATE,
Sexo VARCHAR(10),
DNI_dueno INT NOT NULL,
CONSTRAINT ID_Perro PRIMARY KEY (ID_Perro),
CONSTRAINT DNI_Dueno FOREIGN KEY (DNI_Dueno) REFERENCES Dueno (DNI)
);

insert into Perro values (1, "Mendieta", 12/08/2022, "Macho", 12345678);
insert into Perro values (2, "Lobo", 09/07/2015, "Macho", 23456789);

CREATE TABLE Historial
(
ID_Historial INT NOT NULL,
Fecha DATE,
Perro VARCHAR(30),
Descripción VARCHAR(100),
Monto INT,
ID_Perro INT NOT NULL,
CONSTRAINT ID_Historial PRIMARY KEY (ID_Historial),
CONSTRAINT ID_Perro FOREIGN KEY (ID_Perro) REFERENCES Perro (ID_Perro)
);

insert into Historial values (1, 12/07/2022, "Mendieta", "Le duele la patita", 2050, 1);
insert into Historial values (2, 01/11/2015, "Lobo", "está triste", 350, 2);



select DNI,Dueno.Nombre,Dueno.Apellido
from Dueno inner join Perro on Perro.DNI_Dueno=Dueno.DNI
inner join Historial on ID_Historial=Perro.ID_Perro
where Perro.Fecha_nac >= 14/08/2017 and Historial.Fecha <= 01/01/2022;