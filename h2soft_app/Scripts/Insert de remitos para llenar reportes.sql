﻿USE h2softapp;
SET @objetivo = (SELECT idObjetivosXcliente FROM `objetivos-x-cliente` ORDER BY idObjetivosXcliente ASC LIMIT 1);

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-01-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 210, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-01-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 22, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');


-- -----------------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-02-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 195, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-02-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 15, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

-- -----------------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-03-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 180, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-03-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 20, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

-- -----------------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-04-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 162, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-04-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 18, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');


-- -----------------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-05-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 140, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-05-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 16, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');


-- -----------------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-06-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 130, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-06-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 14, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

-- -----------------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-07-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 120, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-07-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 15, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');


-- -----------------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-08-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 130, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-08-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 12, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');


-- -------------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-09-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 150, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-09-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 16, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

-- -----------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-10-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 180, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-10-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 21, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');


-- ------------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-11-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 190, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-11-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 20, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

-- -----------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-12-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 210, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-12-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 1, 21, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-01-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 110, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-01-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 22, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');


-- -----------------------



INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-02-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 95, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-02-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 15, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

-- -----------------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-03-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 80, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-03-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 20, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

-- -----------------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-04-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 62, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-04-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 18, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');


-- -----------------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-05-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 50, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-05-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 16, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');


-- -----------------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-06-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 40, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-06-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 14, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

-- -----------------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-07-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 50, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-07-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 15, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');


-- -----------------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-08-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 40, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-08-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 12, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');


-- -------------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-09-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 60, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-09-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 16, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

-- -----------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-10-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 80, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-10-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 21, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');


-- ------------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-11-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 90, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-11-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 20, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

-- -----------------


INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-12-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 110, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');

INSERT INTO remitos (idObjetivo, fecha, idEmpleado, idEstadoRemito, firmaConforme, firma, createdAt, updatedAt) VALUES (@objetivo, '2018-12-10', 1, 1, 1, 'REMITO INSERTADO PARA REPORTES', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `detalle-remito-productos` (idRemito, idProducto, cantidad, dejadoEnCliente, createdAt, updatedAt) VALUES (LAST_INSERT_ID(), 2, 21, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00');
