CREATE TRIGGER tr_registro_vuelo
AFTER INSERT ON Vuelo
FOR EACH ROW
BEGIN
    INSERT INTO Registro_vuelo (id_vuelo, fecha, duracion, distancia)
    VALUES (NEW.id, NEW.fecha, '00:00:00', 0.0);
END;

CREATE TRIGGER tr_generar_reporte_mantenimiento
AFTER INSERT ON Aeronave
FOR EACH ROW
BEGIN
    INSERT INTO Reporte_mantenimiento (id_aeronave, fecha, descripcion)
    VALUES (NEW.id, CURRENT_DATE(), 'Reporte de mantenimiento programado.');
END;

CREATE TRIGGER tr_actualizar_estado_aeronave
AFTER INSERT ON Reporte_mantenimiento
FOR EACH ROW
BEGIN
    UPDATE Estado_aeronave
    SET estado = 'En mantenimiento', fecha_hora = CURRENT_TIMESTAMP()
    WHERE id_aeronave = NEW.id_aeronave;
END;

CREATE TRIGGER tr_enviar_mensaje_piloto
AFTER INSERT ON Vuelo
FOR EACH ROW
BEGIN
    INSERT INTO Mensaje_piloto (id_piloto, fecha_hora, mensaje)
    VALUES (NEW.id_piloto, CURRENT_TIMESTAMP(), 'Cambio en la programación del vuelo.');
END;

CREATE TRIGGER tr_actualizar_datos_relacionados
AFTER UPDATE ON Aeronave
FOR EACH ROW
BEGIN
    IF NEW.nombre != OLD.nombre THEN
        UPDATE Vuelo
        SET nombre_aeronave = NEW.nombre
        WHERE id_aeronave = NEW.id;
        
        UPDATE Reporte_mantenimiento
        SET nombre_aeronave = NEW.nombre
        WHERE id_aeronave = NEW.id;
    END IF;
END;
