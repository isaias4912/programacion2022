create database Veterinaria;
use veterinaria;

create table dueño(
dni_d char(8) not null,
nombre_d varchar(50) not null,
apellido_d varchar(50) not null,
telefono_d bigint not null,
domicilio_d varchar(200) not null,
constraint pk_dd primary key(dni_d)
);

insert into dueño values (44647345, 'clara', 'depiante', 3534473925, 'Argentina 700');
insert into dueño values (24734186, 'carla', 'corchero', 3534937394, 'Colombia 548');
insert into dueño values (40744094, 'federico', 'schiller', 3534839473, 'El Salvador 5000');
insert into dueño values (47394738, 'pedro', 'bitcoin', 3534983748,'San Juan 473');

create table perro(
id_p int not null auto_increment,
nombre_p varchar(50) not null,
nacimiento_p date not null,
sexo_p char(10),
dni_d1 char(8) not null,
constraint pk_idp primary key(id_p),
constraint fk_dd foreign key (dni_d1) references dueño (dni_d)
);

insert into perro values (2,'greta', '2014-12-07', 'hembra', 44647345);
insert into perro values (1, 'peter', '2010-10-12', 'macho', 24734186); 
insert into perro values (7, 'eva', '2017-07-24', 'hembra', 40744094);
insert into perro values (25,'limon', '2020-09-08', 'macho', 47394738);

create table historial(
id_h int not null auto_increment,
fecha_h date not null,
descripcion_h varchar(200),
monto_h int not null,
id_p1 int not null,
constraint pk_idh primary key (id_h),
constraint fk_idp1 foreign key (id_p1) references perro (id_p)
);

insert into historial values (2, '2022-01-15', 'revisión anual', 2500, 2);
insert into historial values (1, '2021-07-05', 'desparasitario', 1000, 1);
insert into historial values (3, '2021-11-23', 'jarabe para la tos', 1500, 7);
insert into historial values (4, '2022-05-08', 'revisión anual', 2500, 25);

select nombre_p
from perro inner join dueño on perro.dni_d1=dueño.dni_d
where nombre_d='pedro'
