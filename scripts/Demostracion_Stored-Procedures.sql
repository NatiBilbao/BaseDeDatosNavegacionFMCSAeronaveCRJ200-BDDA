USE Nata;

CALL InsertarAeronave(8, 'Boeing 747', 'Boeing', '747', 416, 14285.7);
CALL ObtenerInfoPilotos();
CALL ActualizarDetallesVuelo(1, '2023-06-14', '08:00:00', '12:00:00', 'Nueva York', 'Los Ángeles');
CALL EliminarReporteMantenimiento(1);
CALL ObtenerRegistrosVueloPorVuelo(1);
