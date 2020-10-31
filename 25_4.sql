INSERT INTO PROVEEDOR VALUES
('S1','JOSE FERNANDEZ',2,'MADRID');

select * from PROVEEDOR;

INSERT INTO PROVEEDOR VALUES
('S2','MANUEL VIDAL',1,'LONDRES');

INSERT INTO PROVEEDOR VALUES
('S3','LUISA GOMEZ',3,'LISBOA');

INSERT INTO PROVEEDOR VALUES
('S4','PEDRO SANCHEZ',4,'PARIS');

INSERT INTO PROVEEDOR VALUES
('S5','MARIA REYES',5,'ROMA');

select * from PIEZAS;

INSERT INTO PIEZAS(SELECT CODPIE,CIUDAD,NOMPIE,PESO,COLOR FROM OPC.PIEZA);

DESCRIBE PIEZAS;

INSERT INTO PROYECTOS(SELECT CODPJ,CIUDAD,NOMPJ FROM OPC.PROYECTO);

DESCRIBE VENTAS;

INSERT INTO VENTAS(SELECT * FROM OPC.VENTAS);

select * from VENTAS;

select NOMPIE from PIEZAS where TIPO='BLANCO';

SELECT NOMPIE FROM PIEZAS p , VENTAS v where CODPRO='S3' AND P.CODPIE = V.CODPIE;

--Codigos de piezas vendidas a proyectos de Londres.

SELECT distinct VENTAS.CODPIE FROM VENTAS , PROYECTOS where PROYECTOS.CIUDAD='Londres' AND PROYECTOS.CODPJ = VENTAS.CODPJ;


--Nombres de piezas vendidas a proyectos de Londres

SELECT NOMPIE FROM PIEZAS p, VENTAS v, PROYECTOS pr where pr.CIUDAD='Londres' AND pr.CODPJ = v.CODPJ AND p.CODPIE=V.CODPIE; 

COMMIT;

select * from PROVEEDOR where CIUDAD is NOT NULL;

SELECT DISTINCT NOMPRO,FECHA FROM VENTAS V, PROVEEDOR P WHERE V.CODPRO=P.CODPRO ORDER BY NOMPRO, FECHA DESC;

SELECT SUM(CANTIDAD), COUNT(CANTIDAD) FROM VENTAS WHERE CODPRO='S2';

SELECT COUNT(DISTINCT TIPO) FROM PIEZAS;

SELECT DISTINCT CODPRO FROM VENTAS WHERE CANTIDAD>(SELECT AVG(CANTIDAD) FROM VENTAS);

SELECT AVG(CANTIDAD) FROM VENTAS;

SELECT CODPRO FROM PIEZAS P,VENTAS V WHERE V.CODPIE = P.CODPIE AND TIPO='Blanco';

select CODPRO FROM VENTAS WHERE CODPIE IN(SELECT CODPIE FROM PIEZAS WHERE TIPO='Blanco');

select CODPRO, CANTIDAD, to_char(FECHA, 'day, dd "de" month "de" yyyy') from VENTAS ORDER BY FECHA DESC;

SELECT * FROM VENTAS WHERE TO_CHAR(FECHA, 'yyyy')='2015';

INSERT INTO VENTAS VALUES('S1', 'P5', 'J3', 200, TO_DATE('17/12/1995','dd/mm/yyyy'));

select * from OPC.EQUIPOS;

select * from OPC.ENCUENTROS;



update ENCUENTROS set FECHA=FECHA+365;
