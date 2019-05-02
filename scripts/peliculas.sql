//show databases;

CREATE DATABASE peliculas;

USE peliculas;

CREATE TABLE pelicula (
  id INT NOT NULL auto_increment,
  titulo VARCHAR(100) NOT NULL,
  duracion INT(5),
  director VARCHAR(400) NOT NULL,
  anio INT(5) NOT NULL,
  fecha_lanzamiento DATE,
  puntuacion INT(2) NOT NULL,
  poster VARCHAR(300),
  trama VARCHAR(700),
  genero_id INT,
  PRIMARY KEY(id),
  FOREIGN KEY(genero_id) REFERENCES genero(id)
);

CREATE TABLE genero (
  id INT NOT NULL auto_increment,
  nombre VARCHAR(30),
  PRIMARY KEY(id)
);

CREATE TABLE actor (
  id INT NOT NULL auto_increment,
  nombre VARCHAR(70),
  PRIMARY KEY(id)
);

CREATE TABLE actor_pelicula (
  id INT NOT NULL auto_increment,
  actor_id INT,
  pelicula_id INT,
  PRIMARY KEY(id)
);
