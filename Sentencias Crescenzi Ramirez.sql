-- Creacion de Tablas e Insercion de Datos

CREATE TABLE estadios (id_estadio int auto_increment,ciudad varchar(30) ,nombre varchar(30),capacidad int,
PRIMARY KEY(id_estadio));

CREATE TABLE arbitro (id_arbitro int auto_increment, dni int NOT NULL,pais varchar(40) NOT NULL,nombre varchar(30),apellido varchar(30),
PRIMARY KEY(id_arbitro));

CREATE TABLE equipos (id_pais int auto_increment,pais varchar(30) NOT NULL,puntos_favor int,puntos_contra int,pen_favor int,pen_contra int,
PRIMARY KEY(id_pais));

CREATE TABLE jugadores (id_jugador int auto_increment, dni int NOT NULL,equipo int NOT NULL,nombre varchar(30),apellido varchar(30),posicion varchar(20),
PRIMARY KEY(id_jugador), CONSTRAINT equipo_jug FOREIGN KEY (equipo) REFERENCES equipos(id_pais));	

CREATE TABLE partidos (id_partido int auto_increment,etapa varchar(30),fechahora date,ganador int,estadio int,equipo1 int,puntos1 int,equipo2 int,puntos2 int,arbitro int,
PRIMARY KEY(id_partido), 
CONSTRAINT est_part FOREIGN KEY (estadio) REFERENCES estadios(id_estadio), 
CONSTRAINT equipo_part FOREIGN KEY (equipo1) references equipos(id_pais), 
CONSTRAINT equipo_part2 FOREIGN KEY (equipo2) REFERENCES equipos(id_pais), 
CONSTRAINT arb_part FOREIGN KEY (arbitro) REFERENCES arbitro(id_arbitro));

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
VALUES	(null,'Namibia',0,0,0,0),
		(null,'Sudafrica',0,0,0,0),
		(null,'Argentina',0,0,0,0),
		(null,'Uruguay',0,0,0,0),
		(null,'Francia',0,0,0,0),
		(null,'Inglaterra',0,0,0,0),
		(null,'Irlanda',0,0,0,0),
		(null,'Nueva Zelanda',0,0,0,0),
		(null,'Tonga',0,0,0,0),
		(null,'Italia',0,0,0,0),
		(null,'Australia',0,0,0,0),
		(null,'Japon',0,0,0,0),
		(null,'Gales',0,0,0,0),
		(null,'Rumania',0,0,0,0),
		(null,'Georgia',0,0,0,0),
		(null,'Chile',0,0,0,0),
		(null,'Escocia',0,0,0,0),
		(null,'Fiji',0,0,0,0),
		(null,'Portugal',0,0,0,0),
		(null,'Samoa',0,0,0,0);

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

INSERT INTO partidos
VALUES	(null,'Grupo A','2023-9-8',5,1,5,27,8,13,1),
		(null,'Grupo A','2023-9-9',10,2,10,52,1,8,2),
		(null,'Grupo B','2023-9-9',7,3,7,82,14,8,3),
		(null,'Grupo C','2023-9-9',11,4,11,35,15,15,4),
		(null,'Grupo D','2023-9-9',6,5,6,27,3,10,5),
		(null,'Grupo D','2023-9-10',12,6,12,42,16,12,6),
		(null,'Grupo B','2023-9-10',2,7,2,18,17,3,7),
		(null,'Grupo D','2023-9-10',13,8,13,32,18,26,8),
		(null,'Grupo A','2023-9-14',5,9,5,27,4,12,9),
		(null,'Grupo A','2023-9-15',8,1,8,71,1,3,10),
		(null,'Grupo D','2023-9-16',20,2,20,43,16,10,11),
		(null,'Grupo C','2023-9-16',13,3,13,28,19,8,12),
		(null,'Grupo B','2023-9-16',7,4,7,59,9,16,1),
		(null,'Grupo B','2023-9-17',2,5,2,76,14,0,2),
		(null,'Grupo C','2023-9-17',18,6,11,15,18,22,3);

INSERT INTO jugadores
values  (null,121,3,'Nicolas','Sanchez','Apertura'),
		(null,242,8,'Aaron','Smith','Medio Scrum'),
		(null,363,2,'Eben','Etzebeth','Segunda linea'),
		(null,484,6,'Maro','Itoje','Segunda linea'),
		(null,605,8,'William','Jordan','Wing'),
		(null,726,7,'Jonathan','Sexton','Apertura'),
		(null,847,7,'Peter','O Mahony','Tercera linea'),
		(null,968,3,'Eduardo ','Bello','Primera linea'),
		(null,1089,3,'Thomas ','Gallo','Primera linea'),
		(null,1210,3,'Francisco ','Gómez Kodela','Primera linea'),
		(null,1331,3,'Joel ','Sclavi','Primera linea'),
		(null,1452,3,'Mayco ','Vivas','Primera linea'),
		(null,1573,3,'Agustín ','Creevy','Primera linea'),
		(null,1694,3,'Julián ','Montoya','Primera linea'),
		(null,1815,3,'Ignacio ','Ruiz','Primera linea'),
		(null,1936,3,'Matías ','Alemanno','Segunda linea'),
		(null,2057,3,'Tomás ','Lavanini','Segunda linea'),
		(null,2178,3,'Guido ','Petti','Segunda linea'),
		(null,2299,3,'Lucas ','Paulos','Segunda linea'),
		(null,2420,3,'Juan Martin','Gonzalez','Tercera linea'),
		(null,2541,3,'Joaquín ','Oviedo','Tercera linea'),
		(null,2662,3,'Facundo ','Isa','Tercera linea'),
		(null,2783,3,'Marcos ','Kremer','Tercera linea'),
		(null,2904,3,'Pedro ','Rubiolo','Tercera linea'),
		(null,3025,3,'Rodrigo ','Bruni','Tercera linea'),
		(null,3146,3,'Lautaro ','Bazán Vélez','Medio Scrum'),
		(null,3267,3,'Gonzalo ','Bertranou','Medio Scrum'),
		(null,3388,3,'Tomás ','Cubelli','Medio Scrum'),
		(null,3509,3,'Santiago ','Carreras','Apertura'),
		(null,3630,3,'Santiago ','Chocobares','Centro'),
		(null,3751,3,'Lucio ','Cinti','Centro'),
		(null,3872,3,'Jerónimo ','de la Fuente','Centro'),
		(null,3993,3,'Matías ','Moroni','Centro'),
		(null,4114,3,'Martín ','Bogado','Wing'),
		(null,4235,3,'Mateo ','Carreras','Wing'),
		(null,4356,3,'Juan ','Imhoff','Wing'),
		(null,4477,3,'Rodrigo ','Isgró','Wing'),
		(null,4598,3,'Emiliano ','Boffelli ','Fullback'),
		(null,4719,3,'Juan Cruz','Mallia','Fullback'),
		(null,4840,8,'Dane','Coles','Primera linea'),
		(null,4961,8,'Samisoni','Taukei’aho','Primera linea'),
		(null,5082,8,'Codie','Taylor','Primera linea'),
		(null,5203,8,'Ethan','de Groot','Primera linea'),
		(null,5324,8,'Tyrel','Lomax','Primera linea'),
		(null,5445,8,'Nepo','Laulala','Primera linea'),
		(null,5566,8,'Fletcher','Newell','Primera linea'),
		(null,5687,7,'Andrew','Porter','Primera linea'),
		(null,5808,8,'Ofa','Tu’ungafasi','Primera linea'),
		(null,5929,8,'Tamaiti','Williams','Primera linea'),
		(null,6050,8,'Scott','Barrett','Segunda linea'),
		(null,6171,8,'Brodie','Retallick','Segunda linea'),
		(null,6292,8,'Tupou','Vaa’i','Segunda linea'),
		(null,6413,8,'Samuel','Whitelock','Segunda linea'),
		(null,6534,8,'Sam','Cane','Tercera linea'),
		(null,6655,8,'Shannon','Frizell','Tercera linea'),
		(null,6776,8,'Luke','Jacobson','Tercera linea'),
		(null,6897,8,'Dalton','Papali’i','Tercera linea'),
		(null,7018,8,'Ardie','Savea','Tercera linea'),
		(null,7139,8,'Finlay','Christie','Medio Scrum'),
		(null,7260,8,'Cam','Roigard','Medio Scrum'),
		(null,7381,8,'Beauden','Barrett','Apertura'),
		(null,7502,8,'Damian','McKenzie','Apertura'),
		(null,7623,8,'Richie','Mo unga','Apertura'),
		(null,7744,8,'Jordie','Barrett','Centro'),
		(null,7865,8,'David','Havili','Centro'),
		(null,7986,8,'Rieko','Ioane','Centro'),
		(null,8107,8,'Anton','Lienert-Brown','Centro'),
		(null,8228,8,'Caleb','Clarke','Wing'),
		(null,8349,8,'Leicester','Fainga’anuku','Wing'),
		(null,8470,8,'Emoni','Narawa','Fullback'),
		(null,8591,8,'Mark','Telea','Fullback'),
		(null,8712,7,'Ronan','Kelleher','Primera linea'),
		(null,8833,7,'Tadhg','Furlong','Primera linea'),
		(null,8954,7,'Tadhg','Beirne','Segunda linea'),
		(null,9075,7,'James','Ryan','Segunda linea'),
		(null,9196,7,'Josh','Van der Flier','Tercera linea'),
		(null,9317,7,'Caelan','Doris','Tercera linea'),
		(null,9438,7,'Jamison','Gibson-Park','Medio Scrum'),
		(null,9559,7,'James','Lowe','Wing'),
		(null,9680,7,'Bundee','Aki','Centro'),
		(null,9801,7,'Garry','Ringrose','Centro'),
		(null,9922,7,'Mack','Hansen','Wing'),
		(null,10043,7,'Hugo','Keenan','Fullback'),
		(null,10164,2,'Steven','Kitshoff','Primera linea'),
		(null,10285,2,'Mbongeni','Mbonambi','Primera linea'),
		(null,10406,2,'Frans','Malherbe','Primera linea'),
		(null,10527,2,'Franco','Mostert','Segunda linea'),
		(null,10648,2,'Siya','Kolisi','Tercera linea'),
		(null,10769,2,'Pieter-Steph','Du Toit','Tercera linea'),
		(null,10890,2,'Duane','Vermeulen','Tercera linea'),
		(null,11011,2,'Faf','de Klerk','Medio Scrum'),
		(null,11132,2,'Handre','Pollard','Apertura'),
		(null,11253,2,'Cheslin','Kolbe','Wing'),
		(null,11374,2,'Damian','de Allende','Centro'),
		(null,11495,2,'Jesse','Kriel','Centro'),
		(null,11616,2,'Kurt-Lee','Arendse','Wing'),
		(null,11737,2,'Damian','Willemse','Fullback');

-- DML
-- Creacion de Vistas

CREATE OR REPLACE VIEW vw_resultadopartidos AS
select partidos.etapa, partidos.fechahora as Fecha, equipos.pais as Ganador, greatest(puntos1, puntos2) as PuntosGanador, least(puntos1, puntos2) as PuntosPerdedor from partidos INNER JOIN equipos where equipos.id_pais=partidos.ganador;
Select * from vw_partidos;

CREATE OR REPLACE VIEW vw_jugpais AS
select equipos.pais, count(jugadores.id_jugador) as Cantidad from jugadores INNER JOIN equipos on jugadores.equipo = equipos.id_pais
group by equipos.pais order by count(jugadores.id_jugador) DESC;
Select * from vw_jugpais;

-- Creacion de Funciones
DROP function `partidos_arbitrados`;
DELIMITER $$
CREATE FUNCTION `partidos_arbitrados` (id INT) RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
	DECLARE cantidad INT;
    DECLARE arb VARCHAR(20);
    DECLARE nom VARCHAR(20);
    DECLARE resul varchar(30);
	SELECT COUNT(*) INTO cantidad FROM partidos WHERE arbitro = id;
    SELECT apellido INTO arb FROM arbitro WHERE id_arbitro = id;
    SELECT nombre INTO nom FROM arbitro WHERE id_arbitro = id;
	SET Resul = CONCAT(arb,", ",nom,": ",cantidad);
    RETURN Resul;
END $$ 
DELIMITER ;

select partidos_arbitrados(7) as Partidos_Arbitrados;

DELIMITER $$
CREATE FUNCTION `pais_pos` (id INT) RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE cantidad INT;
	SELECT COUNT(*) INTO cantidad FROM jugadores WHERE equipo = id;
	RETURN cantidad;
END $$ 
DELIMITER ;
select pais_pos(3) as Jugadores_por_Equipo;

-- Creacion de Stored Procedures

drop procedure if exists orden;
/*Indicar en el primer parametro la columna para establecer el orden, y despues indicar el orden de cualquier forma.
Si el segundo parametro empieza con la letra "d" el orden sera descendente. De cualquier otra forma, se define por default orden ascendente*/
DELIMITER $$
CREATE procedure `orden` (in col varchar(30),in orden varchar(20))
BEGIN
	if left(orden,1)='d' then
		Set @ordenif = 2;
	else 
		Set @ordenif = 1;
	end if;
	if @ordenif = 1 then
		Set @ordenpedido = concat("ORDER BY ", col," ASC");
	end if;
    if @ordenif = 2 then
		Set @ordenpedido = concat("ORDER BY ",col," DESC");
	end if;
    SET @clausula = concat("Select * from jugadores ", @ordenpedido);
    prepare runSQL from @clausula;
    execute runSQL;
    deallocate prepare runSQL;
END $$
Delimiter ;
call orden("dni",'ascendente');

DROP PROCEDURE IF EXISTS registro;
/*La idea del codigo es indicar en el primer parametro la funcion que se desea,
si se quiere insertar el registro, colocar 1, si se quiere eliminar un registro insertar 2*/
DELIMITER //
create procedure registro (in prop varchar(4),in dni int,in equipo int,in nombre varchar (30), in apellido varchar(30), in posicion varchar(30))
BEGIN
	if prop = "1" then
		INSERT INTO jugadores value (0,dni,equipo,nombre,apellido,posicion);
	end if;
    if prop = "2" then
		DELETE FROM jugadores where jugadores.id_jugador = 98;
	end if;
    SET @clausula = "select * from jugadores order by id_jugador DESC";
    PREPARE runSQL from @clausula;
    execute runSQL;
    deallocate prepare runSQL;
END//
DELIMITER ;
call registro(1,22,1,"Prueba","Prueba","Prueba");

-- Creacion de Triggers

create table aud_jugadores (id_registro INT AUTO_INCREMENT, tabla varchar(30),id_modif INT NOT NULL,fecha datetime, user varchar(30),
PRIMARY KEY(id_registro));
create table aud_partidos (id_registro INT AUTO_INCREMENT, tabla varchar(30), id_modif INT NOT NULL, fecha datetime, user varchar(30),dato_previo varchar(40),dato_nuevo varchar(40),
PRIMARY KEY(id_registro));

CREATE TRIGGER tg_jugadores after insert on jugadores
for each row
Insert into aud_jugadores VALUES (null,"jugadores",new.id_jugador,now(),system_user());

INSERT INTO mundial.jugadores
VALUES (null,12221,8,'Sonny','Bill Williams','Centro');
select * from aud_jugadores;

Create trigger tg_partidos before update on partidos
for each row
Insert into aud_partidos VALUES (null,"partidos",old.id_partido,now(),system_user(),old.ganador,new.ganador);

Update mundial.partidos SET ganador = 4 where id_partido = 18;
Select * from aud_partidos;

-- Lenguaje DCL: Los usuarios creados no pueden eliminar o ejecutar las funciones y stored procedures definidos por el usuario root.

Create user prueba1@localhost identified by "prueba1"; -- Se genera el usuario "prueba1" que tiene permiso de solo lectura a todas las tablas de la base "mundial".
Grant select on mundial.* to prueba1@localhost;

Create user prueba2@localhost identified by "Segundaprueba"; -- Se genera el usuario "prueba2" que tiene permisos de lectura, modificacion y creacion de registrosen 4 de las tablas de la base "mundial".
Grant select, insert, update on mundial.arbitro to prueba2@localhost;
Grant select, insert, update on mundial.estadios to prueba2@localhost;
Grant select, insert, update on mundial.jugadores to prueba2@localhost;
Grant select, insert, update on mundial.equipos to prueba2@localhost;