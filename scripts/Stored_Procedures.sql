DELIMITER //

-- Stored Procedure para la inserción de una nueva aeronave
CREATE PROCEDURE InsertarAeronave(
  IN aeronave_id INT,
  IN aeronave_nombre VARCHAR(50),
  IN aeronave_fabricante VARCHAR(50),
  IN aeronave_modelo VARCHAR(50),
  IN aeronave_capacidad INT,
  IN aeronave_autonomia FLOAT
)
BEGIN
  INSERT INTO Aeronave (id, nombre, fabricante, modelo, capacidad_pasajeros, autonomia_km)
  VALUES (aeronave_id, aeronave_nombre, aeronave_fabricante, aeronave_modelo, aeronave_capacidad, aeronave_autonomia);
END //

-- Stored Procedure para la consulta de información de pilotos
CREATE PROCEDURE ObtenerInfoPilotos()
BEGIN
  SELECT id, nombre, apellido, rango, horas_vuelo
  FROM Piloto;
END //

-- Stored Procedure para la actualización de detalles de un vuelo
CREATE PROCEDURE ActualizarDetallesVuelo(
  IN vuelo_id INT,
  IN nueva_fecha DATE,
  IN nueva_hora_salida TIME,
  IN nueva_hora_llegada TIME,
  IN nuevo_origen VARCHAR(50),
  IN nuevo_destino VARCHAR(50)
)
BEGIN
  UPDATE Vuelo
  SET fecha = nueva_fecha,
      hora_salida = nueva_hora_salida,
      hora_llegada = nueva_hora_llegada,
      origen = nuevo_origen,
      destino = nuevo_destino
  WHERE id = vuelo_id;
END //

-- Stored Procedure para la eliminación de un registro de mantenimiento
CREATE PROCEDURE EliminarReporteMantenimiento(
  IN reporte_id INT
)
BEGIN
  DELETE FROM Reporte_mantenimiento
  WHERE id = reporte_id;
END //

-- Stored Procedure para la consulta de los registros de vuelo relacionados con un vuelo específico
CREATE PROCEDURE ObtenerRegistrosVueloPorVuelo(
  IN vuelo_id INT
)
BEGIN
  SELECT id, fecha, duracion, distancia
  FROM Registro_vuelo
  WHERE id_vuelo = vuelo_id;
END //

DELIMITER ;

