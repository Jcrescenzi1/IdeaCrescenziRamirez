drop schema mundial;
create schema mundial;
use mundial;

-- Creacion de tablas (Primer Entrega)

CREATE TABLE estadios (id_estadio int auto_increment,ciudad varchar(30) ,nombre varchar(30),capacidad int,
PRIMARY KEY(id_estadio));

CREATE TABLE arbitro (id_arbitro int auto_increment, dni int NOT NULL,pais varchar(40) NOT NULL,nombre varchar(30),apellido varchar(30),
PRIMARY KEY(id_arbitro));

CREATE TABLE equipos (id_pais int auto_increment,pais varchar(30) NOT NULL,try_favor int,try_contra int,pen_favor int,pen_contra int,
PRIMARY KEY(id_pais));

CREATE TABLE partidos (id_partido int auto_increment,etapa varchar(30),fechahora date,ganador int,estadio int,equipo1 int,equipo2 int,arbitro int,
PRIMARY KEY(id_partido), 
CONSTRAINT est_part FOREIGN KEY (estadio) REFERENCES estadios(id_estadio), 
CONSTRAINT equipo_part FOREIGN KEY (equipo1) references equipos(id_pais), 
CONSTRAINT equipo_part2 FOREIGN KEY (equipo2) REFERENCES equipos(id_pais), 
CONSTRAINT arb_part FOREIGN KEY (arbitro) REFERENCES arbitro(id_arbitro));

CREATE TABLE jugadores (id_jugador int auto_increment, dni int NOT NULL,equipo int NOT NULL,nombre varchar(30),apellido varchar(30),posicion varchar(20),
PRIMARY KEY(id_jugador), CONSTRAINT equipo_jug FOREIGN KEY (equipo) REFERENCES equipos(id_pais));	

-- Insercion de Datos

INSERT INTO arbitro
VALUES	(1,111,'Inglaterra','Wayne','Barnes'),
		(2,222,'Georgia','Nika','Amashukeli'),
		(3,333,'Irlanda','Andrew','Brace'),
		(4,444,'Australia','Nic','Berry'),
		(5,555,'Inglaterra','Matthew','Carley'),
		(6,666,'Inglaterra','Karl','Dickson'),
		(7,777,'Australia','Angus','Gardner'),
		(8,888,'Nueva Zelanda','Ben','O Keeffe'),
		(9,999,'Inglaterra','Luke','Pearce'),
		(10,1110,'Sudafrica','Jaco','Peyper'),
		(11,1221,'Francia','Mathieu','Raynal'),
		(12,1332,'Nueva Zelanda','Paul','Williams');

INSERT INTO equipos
VALUES	(null,'Namibia',3,15,8,20),
		(null,'Sudafrica',22,3,15,18),
        (null,'Argentina',15,7,10,11),
		(null,'Francia',27,4,1,1),
		(null,'Nueva Zelanda',38,6,1,1);

INSERT INTO estadios
VALUES	(1,'Saint-Denis','Stade de France',80000),
		(2,'Marsella','Stade Velodrome',67000),
        (3,'Saint-Etienne','Stade Geoffroy Guichard',42000),
		(4,'Nantes','Stade de la Beaujoire',35000),
		(5,'Bordeaux','Stade de Bordeaux',42000),
		(6,'Lille','Stade Pierre Mauroy',50000),
		(7,'Lyon','OL',58883),
		(8,'Niza','Stade de Nice',35000),
		(9,'Toulouse','Stadium Toulouse',33000);	

INSERT INTO jugadores
VALUES 	(1,121,3,'Nicolas','Sanchez','Apertura'),
		(2,242,5,'Aaron','Smith','MedioScrum'),
		(3,363,2,'Eben','Etzebeth','Segunda linea'),
        (4,484,1,'Maro','Itoje','Segunda linea'),
        (5,605,5,'William','Jordan','Wing'),
        (6,726,1,'Jonathan','Sexton','Apertura'),
        (7,847,1,'Peter','O Mahony','Ala');

INSERT INTO partidos
VALUES	(1,'Grupos','2023-09-08',8,1,4,5,4),
		(2,'Semifinal','2023-10-20',3,1,5,3,3);
