-- CREATE DATABASE Nata;
USE Nata; 

CREATE TABLE Aeronave (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  fabricante VARCHAR(50),
  modelo VARCHAR(50),
  capacidad_pasajeros INT,
  autonomia_km FLOAT
);

CREATE TABLE Piloto (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  rango VARCHAR(50),
  horas_vuelo INT
);

CREATE TABLE Vuelo (
  id INT PRIMARY KEY AUTO_INCREMENT,
  fecha DATE,
  hora_salida TIME,
  hora_llegada TIME,
  origen VARCHAR(50),
  destino VARCHAR(50),
  id_aeronave INT,
  id_piloto INT,
  FOREIGN KEY (id_aeronave) REFERENCES Aeronave(id),
  FOREIGN KEY (id_piloto) REFERENCES Piloto(id)
);

CREATE TABLE Plan_vuelo (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_vuelo INT,
  ruta VARCHAR(255),
  altitud_crucero INT,
  velocidad_crucero INT,
  FOREIGN KEY (id_vuelo) REFERENCES Vuelo(id)
);

CREATE TABLE Ruta_navegacion (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_plan_vuelo INT,
  waypoint VARCHAR(50),
  latitud FLOAT,
  longitud FLOAT,
  FOREIGN KEY (id_plan_vuelo) REFERENCES Plan_vuelo(id)
);

CREATE TABLE Estado_aeronave (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_aeronave INT,
  fecha_hora TIMESTAMP,
  estado VARCHAR(50),
  FOREIGN KEY (id_aeronave) REFERENCES Aeronave(id)
);

CREATE TABLE Reporte_mantenimiento (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_aeronave INT,
  fecha DATE,
  descripcion TEXT,
  FOREIGN KEY (id_aeronave) REFERENCES Aeronave(id)
);

CREATE TABLE Mensaje_piloto (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_piloto INT,
  fecha_hora TIMESTAMP,
  mensaje TEXT,
  FOREIGN KEY (id_piloto) REFERENCES Piloto(id)
);

CREATE TABLE Pasajero (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  asiento VARCHAR(10),
  id_vuelo INT,
  FOREIGN KEY (id_vuelo) REFERENCES Vuelo(id)
);

CREATE TABLE Registro_vuelo (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_vuelo INT,
  fecha DATE,
  duracion TIME,
  distancia FLOAT,
  FOREIGN KEY (id_vuelo) REFERENCES Vuelo(id)
);


