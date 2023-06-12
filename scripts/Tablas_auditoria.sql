-- Tabla de auditoría para la tabla Aeronave
CREATE TABLE Auditoria_Aeronave (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_aeronave INT,
  fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  accion VARCHAR(50)
);

-- Trigger para la tabla Aeronave
DELIMITER //
CREATE TRIGGER tr_auditoria_aeronave
AFTER INSERT ON Aeronave
FOR EACH ROW
BEGIN
    INSERT INTO Auditoria_Aeronave (id_aeronave, accion)
    VALUES (NEW.id, 'Inserción');
END //
DELIMITER ;

-- Tabla de auditoría para la tabla Piloto
CREATE TABLE Auditoria_Piloto (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_piloto INT,
  fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  accion VARCHAR(50)
);

-- Trigger para la tabla Piloto
DELIMITER //
CREATE TRIGGER tr_auditoria_piloto
AFTER INSERT ON Piloto
FOR EACH ROW
BEGIN
    INSERT INTO Auditoria_Piloto (id_piloto, accion)
    VALUES (NEW.id, 'Inserción');
END //
DELIMITER ;

-- Tabla de auditoría para la tabla Vuelo
CREATE TABLE Auditoria_Vuelo (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_vuelo INT,
  fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  accion VARCHAR(50)
);

-- Trigger para la tabla Vuelo
DELIMITER //
CREATE TRIGGER tr_auditoria_vuelo
AFTER INSERT ON Vuelo
FOR EACH ROW
BEGIN
    INSERT INTO Auditoria_Vuelo (id_vuelo, accion)
    VALUES (NEW.id, 'Inserción');
END //
DELIMITER ;

-- Tabla de auditoría para la tabla Plan_vuelo
CREATE TABLE Auditoria_Plan_vuelo (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_plan_vuelo INT,
  fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  accion VARCHAR(50)
);

-- Trigger para la tabla Plan_vuelo
DELIMITER //
CREATE TRIGGER tr_auditoria_plan_vuelo
AFTER INSERT ON Plan_vuelo
FOR EACH ROW
BEGIN
    INSERT INTO Auditoria_Plan_vuelo (id_plan_vuelo, accion)
    VALUES (NEW.id, 'Inserción');
END //
DELIMITER ;

-- Tabla de auditoría para la tabla Pasajero
CREATE TABLE Auditoria_Pasajero (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_pasajero INT,
  fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  accion VARCHAR(50)
);

-- Trigger para la tabla Pasajero
DELIMITER //
CREATE TRIGGER tr_auditoria_pasajero
AFTER INSERT ON Pasajero
FOR EACH ROW
BEGIN
    INSERT INTO Auditoria_Pasajero (id_pasajero, accion)
    VALUES (NEW.id, 'Inserción');
END //
DELIMITER ;
