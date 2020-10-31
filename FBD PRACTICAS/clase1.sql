CREATE TABLE PROVEEDOR (
CODPRO char(3) primary key,
NOMPRO varchar2(30) not null,
STATUS number(2) CHECK(status>=1 and status<=10),
CIUDAD varchar2(15)
);

describe PROVEEDOR;

create table pieza (
codpie char(3) primary key,
nompie varchar2(10) not null,
color varchar2(10),
peso number(5,2) check(peso>0 and peso<=100),
ciudad varchar2(15)
);

describe pieza;

create table proyecto (
codpj char(3) primary key,
nompj varchar2(20) not null,
ciudad varchar2(15)
);

describe proyecto;

--comentario

create table VENTAS (
CODPRO char(3) references PROVEEDOR(CODPRO),
CODPIE references PIEZAS(CODPIE),
CODPJ references PROYECTOS(CODPJ),
CANTIDAD number(4),
primary key(CODPRO, CODPIE, CODPJ)
);

alter table VENTAS ADD (
Fecha date default sysdate
);

describe VENTAS;

DROP TABLE VENTAS;