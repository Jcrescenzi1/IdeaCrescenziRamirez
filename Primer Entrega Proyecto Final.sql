Create schema mundial;
Use mundial;

CREATE TABLE estadios (id_estadio int NOT NULL,ciudad text(40) NOT NULL,nombre text(30),capacidad int,
PRIMARY KEY(id_estadio));
CREATE TABLE arbitro (id_arbitro int NOT NULL, dni int NOT NULL,pais text(40) NOT NULL,nombre text(30),apellido text(30),camiseta int,posicion text (20),
PRIMARY KEY(id_arbitro));
CREATE TABLE equipos (pais text(30) NOT NULL,try_favor int,try_contra int,pen_favor int,pen_contra int,
PRIMARY KEY(pais(40)));
CREATE TABLE partidos (id_partido int NOT NULL,etapa text(30),fechahora date,ganador int,estadio int,equipo1 text(30),equipo2 text(30),arbitro int,
PRIMARY KEY(id_partido), 
CONSTRAINT est_part FOREIGN KEY (estadio) REFERENCES estadios(id_estadio), 
CONSTRAINT equipo_part FOREIGN KEY (equipo1(40)) references equipos(pais), 
CONSTRAINT equipo_part2 FOREIGN KEY (equipo2(40)) REFERENCES equipos(pais), 
CONSTRAINT arb_part FOREIGN KEY (arbitro) REFERENCES arbitro(id_arbitro));
CREATE TABLE jugadores (id_jugador int NOT NULL, dni int NOT NULL,equipo text(40) NOT NULL,nombre text(30),apellido text(30),posicion text (20),
PRIMARY KEY(id_jugador), CONSTRAINT equipo_jug FOREIGN KEY (equipo(40)) REFERENCES equipos(pais));
