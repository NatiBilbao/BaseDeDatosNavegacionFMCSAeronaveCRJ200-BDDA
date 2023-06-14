USE Nata; 

INSERT INTO Aeronave (id, nombre, fabricante, modelo, capacidad_pasajeros, autonomia_km)
VALUES
(1, 'CRJ-200-001', 'Bombardier', 'CRJ-200', 50, 2500),
(2, 'CRJ-200-002', 'Bombardier', 'CRJ-200', 50, 2500),
(3, 'CRJ-200-003', 'Bombardier', 'CRJ-200', 50, 2500),
(4, 'CRJ-200-004', 'Bombardier', 'CRJ-200', 50, 2500),
(5, 'CRJ-200-005', 'Bombardier', 'CRJ-200', 50, 2500);

INSERT INTO Piloto (id, nombre, apellido, rango, horas_vuelo)
VALUES
(1, 'Julio', 'Quintanilla', 'Capitán', 5000),
(2, 'Manuel', 'Velasco', 'Primer Oficial', 3000),
(3, 'Katerin', 'Castillo', 'Capitán', 7000),
(4, 'Claudia', 'Valle', 'Primer Oficial', 2500),
(5, 'Freddy', 'Rada', 'Capitán', 6000);

INSERT INTO Vuelo (id, fecha, hora_salida, hora_llegada, origen, destino, id_aeronave, id_piloto)
VALUES
(1, '2023-06-01', '08:00:00', '10:30:00', 'JFK', 'LAX', 1, 1),
(2, '2023-06-02', '12:00:00', '15:00:00', 'LAX', 'ORD', 2, 3),
(3, '2023-06-03', '09:30:00', '11:30:00', 'ORD', 'DFW', 3, 2),
(4, '2023-06-04', '14:00:00', '17:30:00', 'DFW', 'ATL', 4, 4),
(5, '2023-06-05', '11:45:00', '13:30:00', 'ATL', 'MIA', 5, 5);

INSERT INTO Plan_vuelo (id, id_vuelo, ruta, altitud_crucero, velocidad_crucero)
VALUES
(1, 1, 'JFK-LAX', 35000, 450),
(2, 2, 'LAX-ORD', 32000, 430),
(3, 3, 'ORD-DFW', 33000, 420),
(4, 4, 'DFW-ATL', 34000, 440),
(5, 5, 'ATL-MIA', 31000, 420);

INSERT INTO Ruta_navegacion (id, id_plan_vuelo, waypoint, latitud, longitud)
VALUES
(1, 1, 'WAYPOINT1', 39.2984, -94.7291),
(2, 1, 'WAYPOINT2', 34.0522, -118.2437),
(3, 2, 'WAYPOINT1', 41.9742, -87.9073),
(4, 2, 'WAYPOINT2', 39.2984, -94.7291),
(5, 3, 'WAYPOINT1', 41.9742, -87.9073);

INSERT INTO Estado_aeronave (id, id_aeronave, fecha_hora, estado)
VALUES
(1, 1, '2023-06-01 08:00:00', 'En servicio'),
(2, 2, '2023-06-02 12:00:00', 'En servicio'),
(3, 3, '2023-06-03 09:30:00', 'En servicio'),
(4, 4, '2023-06-04 14:00:00', 'En servicio'),
(5, 5, '2023-06-05 11:45:00', 'En servicio');

INSERT INTO Reporte_mantenimiento (id, id_aeronave, fecha, descripcion)
VALUES
(1, 1, '2023-06-02', 'Mantenimiento rutinario'),
(2, 2, '2023-06-03', 'Reemplazo de la sonda de temperatura'),
(3, 3, '2023-06-04', 'Inspección del tren de aterrizaje'),
(4, 4, '2023-06-05', 'Revisión de los sistemas eléctricos'),
(5, 5, '2023-06-06', 'Actualización del software del FMCS');

INSERT INTO Mensaje_piloto (id, id_piloto, fecha_hora, mensaje)
VALUES
(1, 1, '2023-06-01 08:30:00', 'Listos para despegar'),
(2, 2, '2023-06-02 12:30:00', 'Descendiendo a ORD'),
(3, 3, '2023-06-03 09:45:00', 'Aterrizamos en DFW'),
(4, 4, '2023-06-04 14:30:00', 'En ruta hacia ATL'),
(5, 5, '2023-06-05 12:00:00', 'Clima despejado en MIA');

INSERT INTO Pasajero (id, nombre, apellido, asiento, id_vuelo)
VALUES
(1, 'Alejandro', 'Arevalo', '12A', 1),
(2, 'Carlos', 'Herrera', '8B', 1),
(3, 'Lili', 'Miranda', '4C', 2),
(4, 'Cristoffer', 'Mollinedo', '10A', 3),
(5, 'Andrea', 'Cano', '6B', 3);

INSERT INTO Registro_vuelo (id, id_vuelo, fecha, duracion, distancia)
VALUES
(1, 1, '2023-06-01', '02:30:00', 3500.50),
(2, 2, '2023-06-02', '03:00:00', 2400.75),
(3, 3, '2023-06-03', '02:00:00', 1800.25),
(4, 4, '2023-06-04', '03:30:00', 2800.80),
(5, 5, '2023-06-05', '01:45:00', 1500.30);
