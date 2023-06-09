CREATE TABLE Auditoria_Aeronave (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_aeronave INT,
  fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  accion VARCHAR(50),
  FOREIGN KEY (id_aeronave) REFERENCES Aeronave(id)
);

CREATE TABLE Auditoria_Piloto (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_piloto INT,
  fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  accion VARCHAR(50),
  FOREIGN KEY (id_piloto) REFERENCES Piloto(id)
);

CREATE TABLE Auditoria_Vuelo (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_vuelo INT,
  fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  accion VARCHAR(50),
  FOREIGN KEY (id_vuelo) REFERENCES Vuelo(id)
);

CREATE TABLE Auditoria_Plan_vuelo (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_plan_vuelo INT,
  fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  accion VARCHAR(50),
  FOREIGN KEY (id_plan_vuelo) REFERENCES Plan_vuelo(id)
);

CREATE TABLE Auditoria_Pasajero (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_pasajero INT,
  fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  accion VARCHAR(50),
  FOREIGN KEY (id_pasajero) REFERENCES Pasajero(id)
);
