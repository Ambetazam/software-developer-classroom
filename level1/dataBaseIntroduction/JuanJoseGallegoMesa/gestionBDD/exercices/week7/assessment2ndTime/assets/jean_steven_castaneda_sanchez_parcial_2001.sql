-- Script generado por el Taller de Normalización
-- Dialecto: MySQL / MariaDB

CREATE TABLE jugadores (
  id_jugadores INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id_jugadores)
);

CREATE TABLE equipos (
  id_equipos INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id_equipos)
);

CREATE TABLE videojuegos (
  id_videojuegos INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id_videojuegos)
);

CREATE TABLE torneos (
  id_torneos INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id_torneos)
);

CREATE TABLE partidos (
  id_partidos INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id_partidos)
);

CREATE TABLE servidores (
  id_servidores INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id_servidores)
);

CREATE TABLE patrocinadores (
  id_patrocinadores INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id_patrocinadores)
);

CREATE TABLE equipos_torneos (
  id_equipos_torneos INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id_equipos_torneos)
);

CREATE TABLE patrocinios (
  id_patrocinios INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id_patrocinios)
);

CREATE TABLE grupo_torneo (
  id_grupo_torneo INT NOT NULL AUTO_INCREMENT,
  nombre_grupo VARCHAR(100),
  PRIMARY KEY (id_grupo_torneo)
);

CREATE TABLE patrocinios_grupo (
  id_patrocinios_grupo INT NOT NULL AUTO_INCREMENT,
  id_patrocinios INT NOT NULL,
  id_grupo INT NOT NULL,
  PRIMARY KEY (id_patrocinios_grupo),
  CONSTRAINT fk_patrocinios_grupo_patrocinios FOREIGN KEY (id_patrocinios) REFERENCES patrocinios(id_patrocinios),
  CONSTRAINT fk_patrocinios_grupo_grupo_torneo FOREIGN KEY (id_grupo) REFERENCES grupo_torneo(id_grupo_torneo)
);

CREATE TABLE equipo_torneo (
  id_equipo_torneo INT NOT NULL AUTO_INCREMENT,
  grupo VARCHAR(100),
  PRIMARY KEY (id_equipo_torneo)
);

CREATE TABLE equipos_torneos_grupo (
  id_equipos_torneos_grupo INT NOT NULL AUTO_INCREMENT,
  id_equipos_torneos INT NOT NULL,
  id_grupo INT NOT NULL,
  PRIMARY KEY (id_equipos_torneos_grupo),
  CONSTRAINT fk_equipos_torneos_grupo_equipos_torneos FOREIGN KEY (id_equipos_torneos) REFERENCES equipos_torneos(id_equipos_torneos),
  CONSTRAINT fk_equipos_torneos_grupo_equipo_torneo FOREIGN KEY (id_grupo) REFERENCES equipo_torneo(id_equipo_torneo)
);

CREATE TABLE jugadores_equipos (
  id_jugadores_equipos INT NOT NULL AUTO_INCREMENT,
  grupo VARCHAR(100),
  PRIMARY KEY (id_jugadores_equipos)
);

CREATE TABLE jugadores_equipos_grupo (
  id_jugadores_equipos_grupo INT NOT NULL AUTO_INCREMENT,
  id_jugadores_equipos INT,
  id_grupo INT NOT NULL,
  PRIMARY KEY (id_jugadores_equipos_grupo),
  CONSTRAINT fk_jugadores_equipos_grupo_jugadores_equipos FOREIGN KEY (id_grupo) REFERENCES jugadores_equipos(id_jugadores_equipos)
);

CREATE TABLE patrocinadores_grupo (
  id_patrocinadores_grupo INT NOT NULL AUTO_INCREMENT,
  id_patrocinadores INT NOT NULL,
  id_grupo INT,
  PRIMARY KEY (id_patrocinadores_grupo),
  CONSTRAINT fk_patrocinadores_grupo_patrocinadores FOREIGN KEY (id_patrocinadores) REFERENCES patrocinadores(id_patrocinadores)
);

CREATE TABLE grupo_servidor (
  id_grupo INT NOT NULL AUTO_INCREMENT,
  grupo VARCHAR(100),
  PRIMARY KEY (id_grupo)
);

CREATE TABLE servidores_grupo (
  id_servidores_grupo INT NOT NULL AUTO_INCREMENT,
  id_servidores INT NOT NULL,
  id_grupo INT NOT NULL,
  PRIMARY KEY (id_servidores_grupo),
  CONSTRAINT fk_servidores_grupo_servidores FOREIGN KEY (id_servidores) REFERENCES servidores(id_servidores),
  CONSTRAINT fk_servidores_grupo_grupo_servidor FOREIGN KEY (id_grupo) REFERENCES grupo_servidor(id_grupo)
);

CREATE TABLE partidos_grupo (
  id_partidos_grupo INT NOT NULL AUTO_INCREMENT,
  id_partidos INT NOT NULL,
  id_grupo INT,
  PRIMARY KEY (id_partidos_grupo),
  CONSTRAINT fk_partidos_grupo_partidos FOREIGN KEY (id_partidos) REFERENCES partidos(id_partidos)
);

CREATE TABLE videojuegos_grupo (
  id_videojuegos_grupo INT NOT NULL AUTO_INCREMENT,
  id_videojuegos INT NOT NULL,
  id_grupo INT,
  PRIMARY KEY (id_videojuegos_grupo),
  CONSTRAINT fk_videojuegos_grupo_videojuegos FOREIGN KEY (id_videojuegos) REFERENCES videojuegos(id_videojuegos)
);

CREATE TABLE equipos_grupo (
  id_equipos_grupo INT NOT NULL AUTO_INCREMENT,
  id_equipos INT NOT NULL,
  id_grupo INT,
  PRIMARY KEY (id_equipos_grupo),
  CONSTRAINT fk_equipos_grupo_equipos FOREIGN KEY (id_equipos) REFERENCES equipos(id_equipos)
);

CREATE TABLE grupo (
  id_grupo INT NOT NULL AUTO_INCREMENT,
  grupo VARCHAR(100),
  PRIMARY KEY (id_grupo)
);

CREATE TABLE jugadores_grupo (
  id_jugadores_grupo INT NOT NULL AUTO_INCREMENT,
  id_jugadores INT NOT NULL,
  id_grupo INT NOT NULL,
  PRIMARY KEY (id_jugadores_grupo),
  CONSTRAINT fk_jugadores_grupo_jugadores FOREIGN KEY (id_jugadores) REFERENCES jugadores(id_jugadores),
  CONSTRAINT fk_jugadores_grupo_grupo FOREIGN KEY (id_grupo) REFERENCES grupo(id_grupo)
);

CREATE TABLE torneos_grupo (
  id_torneos_grupo INT NOT NULL AUTO_INCREMENT,
  fk_id_torneos VARCHAR(100),
  fk_id_grupo VARCHAR(100),
  PRIMARY KEY (id_torneos_grupo)
);

-- Registros de ejemplo

INSERT INTO jugadores (id_jugadores) VALUES ('001');
INSERT INTO jugadores (id_jugadores) VALUES ('002');

INSERT INTO equipos (id_equipos) VALUES ('E001');
INSERT INTO equipos (id_equipos) VALUES ('E002');

INSERT INTO videojuegos (id_videojuegos) VALUES ('VJ0004');
INSERT INTO videojuegos (id_videojuegos) VALUES ('VJ0500');

INSERT INTO torneos (id_torneos) VALUES ('T9');
INSERT INTO torneos (id_torneos) VALUES ('T6');

INSERT INTO partidos (id_partidos) VALUES ('PA001');
INSERT INTO partidos (id_partidos) VALUES ('PA002');

INSERT INTO servidores (id_servidores) VALUES ('SG3');
INSERT INTO servidores (id_servidores) VALUES ('SG5');

INSERT INTO patrocinadores (id_patrocinadores) VALUES ('PTP001');
INSERT INTO patrocinadores (id_patrocinadores) VALUES ('PTP002');

INSERT INTO equipos_torneos (id_equipos_torneos) VALUES ('ET001');
INSERT INTO equipos_torneos (id_equipos_torneos) VALUES ('ET002');

INSERT INTO patrocinios (id_patrocinios) VALUES ('P001');
INSERT INTO patrocinios (id_patrocinios) VALUES ('P002');

INSERT INTO grupo_torneo (id_grupo_torneo, nombre_grupo) VALUES ('1', 'PTP001');
INSERT INTO grupo_torneo (id_grupo_torneo, nombre_grupo) VALUES ('2', 'T9');
INSERT INTO grupo_torneo (id_grupo_torneo, nombre_grupo) VALUES ('3', 'PTP002');
INSERT INTO grupo_torneo (id_grupo_torneo, nombre_grupo) VALUES ('4', 'T6');

INSERT INTO patrocinios_grupo (id_patrocinios_grupo, id_patrocinios, id_grupo) VALUES ('1', 'P001', '1');
INSERT INTO patrocinios_grupo (id_patrocinios_grupo, id_patrocinios, id_grupo) VALUES ('2', 'P001', '2');
INSERT INTO patrocinios_grupo (id_patrocinios_grupo, id_patrocinios, id_grupo) VALUES ('3', 'P002', '3');
INSERT INTO patrocinios_grupo (id_patrocinios_grupo, id_patrocinios, id_grupo) VALUES ('4', 'P002', '4');

INSERT INTO equipo_torneo (id_equipo_torneo, grupo) VALUES ('1', 'E001');
INSERT INTO equipo_torneo (id_equipo_torneo, grupo) VALUES ('2', 'T9');
INSERT INTO equipo_torneo (id_equipo_torneo, grupo) VALUES ('3', 'E002');
INSERT INTO equipo_torneo (id_equipo_torneo, grupo) VALUES ('4', 'T6');

INSERT INTO equipos_torneos_grupo (id_equipos_torneos_grupo, id_equipos_torneos, id_grupo) VALUES ('1', 'ET001', '1');
INSERT INTO equipos_torneos_grupo (id_equipos_torneos_grupo, id_equipos_torneos, id_grupo) VALUES ('2', 'ET001', '2');
INSERT INTO equipos_torneos_grupo (id_equipos_torneos_grupo, id_equipos_torneos, id_grupo) VALUES ('3', 'ET002', '3');
INSERT INTO equipos_torneos_grupo (id_equipos_torneos_grupo, id_equipos_torneos, id_grupo) VALUES ('4', 'ET002', '4');

INSERT INTO jugadores_equipos (id_jugadores_equipos, grupo) VALUES ('1', '001');
INSERT INTO jugadores_equipos (id_jugadores_equipos, grupo) VALUES ('2', 'E001');
INSERT INTO jugadores_equipos (id_jugadores_equipos, grupo) VALUES ('3', '002');
INSERT INTO jugadores_equipos (id_jugadores_equipos, grupo) VALUES ('4', 'E002');

INSERT INTO jugadores_equipos_grupo (id_jugadores_equipos_grupo, id_jugadores_equipos, id_grupo) VALUES ('1', 'JE001', '1');
INSERT INTO jugadores_equipos_grupo (id_jugadores_equipos_grupo, id_jugadores_equipos, id_grupo) VALUES ('2', 'JE001', '2');
INSERT INTO jugadores_equipos_grupo (id_jugadores_equipos_grupo, id_jugadores_equipos, id_grupo) VALUES ('3', 'JE002', '3');
INSERT INTO jugadores_equipos_grupo (id_jugadores_equipos_grupo, id_jugadores_equipos, id_grupo) VALUES ('4', 'JE002', '4');

INSERT INTO patrocinadores_grupo (id_patrocinadores_grupo, id_patrocinadores, id_grupo) VALUES ('1', 'PTP001', '1');
INSERT INTO patrocinadores_grupo (id_patrocinadores_grupo, id_patrocinadores, id_grupo) VALUES ('2', 'PTP001', '2');
INSERT INTO patrocinadores_grupo (id_patrocinadores_grupo, id_patrocinadores, id_grupo) VALUES ('3', 'PTP001', '3');
INSERT INTO patrocinadores_grupo (id_patrocinadores_grupo, id_patrocinadores, id_grupo) VALUES ('4', 'PTP002', '4');
INSERT INTO patrocinadores_grupo (id_patrocinadores_grupo, id_patrocinadores, id_grupo) VALUES ('5', 'PTP002', '5');
INSERT INTO patrocinadores_grupo (id_patrocinadores_grupo, id_patrocinadores, id_grupo) VALUES ('6', 'PTP002', '6');

INSERT INTO grupo_servidor (id_grupo, grupo) VALUES ('1', 'Cancha La Maracana, Castilla');
INSERT INTO grupo_servidor (id_grupo, grupo) VALUES ('2', 'Estadio Atanasio');

INSERT INTO servidores_grupo (id_servidores_grupo, id_servidores, id_grupo) VALUES ('1', 'SG3', '1');
INSERT INTO servidores_grupo (id_servidores_grupo, id_servidores, id_grupo) VALUES ('2', 'SG5', '2');

INSERT INTO partidos_grupo (id_partidos_grupo, id_partidos, id_grupo) VALUES ('1', 'PA001', '1');
INSERT INTO partidos_grupo (id_partidos_grupo, id_partidos, id_grupo) VALUES ('2', 'PA002', '2');

INSERT INTO videojuegos_grupo (id_videojuegos_grupo, id_videojuegos, id_grupo) VALUES ('1', 'VJ0004', '1');
INSERT INTO videojuegos_grupo (id_videojuegos_grupo, id_videojuegos, id_grupo) VALUES ('2', 'VJ0500', '2');

INSERT INTO equipos_grupo (id_equipos_grupo, id_equipos, id_grupo) VALUES ('1', 'E001', '1');
INSERT INTO equipos_grupo (id_equipos_grupo, id_equipos, id_grupo) VALUES ('2', 'E001', '2');
INSERT INTO equipos_grupo (id_equipos_grupo, id_equipos, id_grupo) VALUES ('3', 'E001', '3');
INSERT INTO equipos_grupo (id_equipos_grupo, id_equipos, id_grupo) VALUES ('4', 'E002', '4');
INSERT INTO equipos_grupo (id_equipos_grupo, id_equipos, id_grupo) VALUES ('5', 'E002', '5');
INSERT INTO equipos_grupo (id_equipos_grupo, id_equipos, id_grupo) VALUES ('6', 'E002', '6');

INSERT INTO grupo (id_grupo, grupo) VALUES ('1', '452626256');
INSERT INTO grupo (id_grupo, grupo) VALUES ('2', 'Anita Gallego');
INSERT INTO grupo (id_grupo, grupo) VALUES ('3', '3043456578');
INSERT INTO grupo (id_grupo, grupo) VALUES ('4', 'anitalavalatina@lapecosa.com');
INSERT INTO grupo (id_grupo, grupo) VALUES ('5', 'cll 10 # 43 a 39');
INSERT INTO grupo (id_grupo, grupo) VALUES ('6', 'Provenza FC');
INSERT INTO grupo (id_grupo, grupo) VALUES ('7', 'Downtown Streets OI');
INSERT INTO grupo (id_grupo, grupo) VALUES ('8', '453234574');
INSERT INTO grupo (id_grupo, grupo) VALUES ('9', 'Laura en America');
INSERT INTO grupo (id_grupo, grupo) VALUES ('10', '3225683456');
INSERT INTO grupo (id_grupo, grupo) VALUES ('11', 'lauris@perutv.com');
INSERT INTO grupo (id_grupo, grupo) VALUES ('12', 'La Milagrosa FC');
INSERT INTO grupo (id_grupo, grupo) VALUES ('13', 'Atletico Country Side Altavista');

INSERT INTO jugadores_grupo (id_jugadores_grupo, id_jugadores, id_grupo) VALUES ('1', '001', '1');
INSERT INTO jugadores_grupo (id_jugadores_grupo, id_jugadores, id_grupo) VALUES ('2', '001', '2');
INSERT INTO jugadores_grupo (id_jugadores_grupo, id_jugadores, id_grupo) VALUES ('3', '001', '3');
INSERT INTO jugadores_grupo (id_jugadores_grupo, id_jugadores, id_grupo) VALUES ('4', '001', '4');
INSERT INTO jugadores_grupo (id_jugadores_grupo, id_jugadores, id_grupo) VALUES ('5', '001', '5');
INSERT INTO jugadores_grupo (id_jugadores_grupo, id_jugadores, id_grupo) VALUES ('6', '001', '6');
INSERT INTO jugadores_grupo (id_jugadores_grupo, id_jugadores, id_grupo) VALUES ('7', '001', '7');
INSERT INTO jugadores_grupo (id_jugadores_grupo, id_jugadores, id_grupo) VALUES ('8', '002', '8');
INSERT INTO jugadores_grupo (id_jugadores_grupo, id_jugadores, id_grupo) VALUES ('9', '002', '9');
INSERT INTO jugadores_grupo (id_jugadores_grupo, id_jugadores, id_grupo) VALUES ('10', '002', '10');
INSERT INTO jugadores_grupo (id_jugadores_grupo, id_jugadores, id_grupo) VALUES ('11', '002', '11');
INSERT INTO jugadores_grupo (id_jugadores_grupo, id_jugadores, id_grupo) VALUES ('12', '002', '5');
INSERT INTO jugadores_grupo (id_jugadores_grupo, id_jugadores, id_grupo) VALUES ('13', '002', '12');
INSERT INTO jugadores_grupo (id_jugadores_grupo, id_jugadores, id_grupo) VALUES ('14', '002', '13');

INSERT INTO torneos_grupo (id_torneos_grupo, fk_id_torneos, fk_id_grupo) VALUES ('TG01', 'T9', '1');
INSERT INTO torneos_grupo (id_torneos_grupo, fk_id_torneos, fk_id_grupo) VALUES ('TG02', 'T6', '2');
