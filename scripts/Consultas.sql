SELECT DISTINCT p.*
FROM Piloto p
JOIN Vuelo v ON p.id = v.id_piloto
JOIN Registro_vuelo rv ON v.id = rv.id_vuelo
WHERE rv.distancia > 1000;

SELECT DISTINCT pa.*
FROM Pasajero pa
JOIN Vuelo v ON pa.id_vuelo = v.id
JOIN Aeronave a ON v.id_aeronave = a.id
WHERE a.fabricante = 'Bombardier';

SELECT p.nombre, p.apellido, COUNT(v.id) AS numero_vuelos
FROM Piloto p
LEFT JOIN Vuelo v ON p.id = v.id_piloto
GROUP BY p.id;

SELECT rm.*
FROM Reporte_mantenimiento rm
JOIN Aeronave a ON rm.id_aeronave = a.id
WHERE a.nombre = 'CRJ-200-001';

SELECT rv.duracion, pv.ruta
FROM Registro_vuelo rv
JOIN Vuelo v ON rv.id_vuelo = v.id
JOIN Plan_vuelo pv ON v.id = pv.id_vuelo
WHERE v.id = 1;





