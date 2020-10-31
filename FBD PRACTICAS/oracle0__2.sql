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

select * from PROYECTOS;

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