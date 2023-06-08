CREATE INDEX idx_vuelo_id_piloto ON Vuelo (id_piloto);
CREATE INDEX idx_pasajero_id_vuelo ON Pasajero (id_vuelo);
CREATE INDEX idx_reporte_mantenimiento_id_aeronave ON Reporte_mantenimiento (id_aeronave);
CREATE INDEX idx_registro_vuelo_id_vuelo ON Registro_vuelo (id_vuelo);
CREATE INDEX idx_aeronave_fabricante ON Aeronave (fabricante);
