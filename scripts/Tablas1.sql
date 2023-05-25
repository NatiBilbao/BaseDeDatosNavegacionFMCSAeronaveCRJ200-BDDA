CREATE DATABASE Nata;
USE Nata;
-- Tabla "Usuarios"
CREATE TABLE Usuarios (
  ID_usuario INT PRIMARY KEY,
  Nombre VARCHAR(50),
  Apellido VARCHAR(50),
  Nombre_de_usuario VARCHAR(50),
  Contrasena VARCHAR(50),
  Nivel_de_acceso INT
);

-- Tabla "Aeropuertos"
CREATE TABLE Aeropuertos (
  ID_aeropuerto INT PRIMARY KEY,
  Nombre VARCHAR(100),
  Ciudad VARCHAR(100),
  Pais VARCHAR(100),
  Latitud DECIMAL(9,6),
  Longitud DECIMAL(9,6)
);

-- Tabla "Rutas"
CREATE TABLE Rutas (
  ID_ruta INT PRIMARY KEY,
  Aeropuerto_origen INT,
  Aeropuerto_destino INT,
  Distancia FLOAT,
  Duracion_estimada TIME,
  Velocidad_promedio FLOAT,
  FOREIGN KEY (Aeropuerto_origen) REFERENCES Aeropuertos(ID_aeropuerto),
  FOREIGN KEY (Aeropuerto_destino) REFERENCES Aeropuertos(ID_aeropuerto)
);

-- Tabla "Vuelos"
CREATE TABLE Vuelos (
  ID_vuelo INT PRIMARY KEY,
  ID_ruta INT,
  Fecha DATE,
  Hora_salida TIME,
  Hora_llegada TIME,
  Numero_de_pasajeros INT,
  FOREIGN KEY (ID_ruta) REFERENCES Rutas(ID_ruta)
);

-- Tabla "Aeronaves"
CREATE TABLE Aeronaves (
  ID_aeronave INT PRIMARY KEY,
  Modelo VARCHAR(100),
  Fabricante VARCHAR(100),
  Ano_de_fabricacion INT,
  Capacidad_de_pasajeros INT,
  Peso_maximo_despegue FLOAT
);

-- Tabla "Tripulacion"
CREATE TABLE Tripulacion (
  ID_tripulacion INT PRIMARY KEY,
  ID_vuelo INT,
  ID_piloto INT,
  ID_copiloto INT,
  ID_auxiliar INT,
  FOREIGN KEY (ID_vuelo) REFERENCES Vuelos(ID_vuelo),
  FOREIGN KEY (ID_piloto) REFERENCES Usuarios(ID_usuario),
  FOREIGN KEY (ID_copiloto) REFERENCES Usuarios(ID_usuario),
  FOREIGN KEY (ID_auxiliar) REFERENCES Usuarios(ID_usuario)
);

-- Tabla "Pasajeros"
CREATE TABLE Pasajeros (
  ID_pasajero INT PRIMARY KEY,
  ID_vuelo INT,
  Nombre VARCHAR(50),
  Apellido VARCHAR(50),
  Asiento VARCHAR(10),
  FOREIGN KEY (ID_vuelo) REFERENCES Vuelos(ID_vuelo)
);

-- Tabla "Bitacora"
CREATE TABLE Bitacora (
  ID_bitacora INT PRIMARY KEY,
  ID_vuelo INT,
  Registro_fecha_hora DATETIME,
  Evento VARCHAR(100),
  FOREIGN KEY (ID_vuelo) REFERENCES Vuelos(ID_vuelo)
);