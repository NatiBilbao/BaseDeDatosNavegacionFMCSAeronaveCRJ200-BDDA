-- Insertar un nuevo registro en la tabla Vuelo
INSERT INTO Vuelo (id, fecha, hora_salida, hora_llegada, origen, destino, id_aeronave, id_piloto)
VALUES (6, '2023-06-06', '10:00:00', '12:30:00', 'MIA', 'LGA', 3, 2);

-- Verificar el nuevo registro en la tabla Registro_vuelo
SELECT * FROM Registro_vuelo WHERE id_vuelo = 6;

-- Insertar un nuevo registro en la tabla Aeronave
INSERT INTO Aeronave (id, nombre, fabricante, modelo, capacidad_pasajeros, autonomia_km)
VALUES (6, 'CRJ-200-006', 'Bombardier', 'CRJ-200', 50, 2500);

-- Verificar el nuevo reporte de mantenimiento en la tabla Reporte_mantenimiento
SELECT * FROM Reporte_mantenimiento WHERE id_aeronave = 6;

-- Insertar un nuevo reporte de mantenimiento en la tabla Reporte_mantenimiento
INSERT INTO Reporte_mantenimiento (id, id_aeronave, fecha, descripcion)
VALUES (6, 4, '2023-06-06', 'Revisión de los sistemas hidráulicos');

-- Verificar el cambio de estado en la tabla Estado_aeronave
SELECT * FROM Estado_aeronave WHERE id_aeronave = 4;

-- Insertar un nuevo registro en la tabla Vuelo
INSERT INTO Vuelo (id, fecha, hora_salida, hora_llegada, origen, destino, id_aeronave, id_piloto)
VALUES (7, '2023-06-07', '09:00:00', '11:30:00', 'LGA', 'BOS', 2, 1);

-- Verificar el nuevo mensaje en la tabla Mensaje_piloto
SELECT * FROM Mensaje_piloto WHERE id_piloto = 1;

-- Actualizar el nombre de una aeronave en la tabla Aeronave
UPDATE Aeronave SET nombre = 'CRJ-200-001X' WHERE id = 1;

-- Verificar la actualización en la tabla Vuelo
SELECT * FROM Vuelo WHERE id_aeronave = 1;

-- Verificar la actualización en la tabla Reporte_mantenimiento
SELECT * FROM Reporte_mantenimiento WHERE id_aeronave = 1;





