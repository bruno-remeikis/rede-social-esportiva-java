
/* DROPS */

DROP TABLE EVENTO;
DROP TABLE ESPORTE;

DROP SEQUENCE ID_EVENTO_SEQ;
DROP SEQUENCE ID_ESPORTE_SEQ;

/* CREATE TABLES */

CREATE TABLE ESPORTE(
    ID NUMERIC(9) NOT NULL,
    NOME VARCHAR2(15) NOT NULL,
    DT_INSERT DATE DEFAULT SYSDATE,
    
    PRIMARY KEY(ID)
);

CREATE TABLE EVENTO(
    ID NUMERIC(9) NOT NULL,
    NOME VARCHAR2(20) NOT NULL,
    ID_ESPORTE NUMERIC NOT NULL,
    DESCRICAO VARCHAR2(255),
    DT_EVENTO DATE NOT NULL,
    LOCAL VARCHAR2(40) NOT NULL,
    DT_INSERT DATE DEFAULT SYSDATE,
    
    PRIMARY KEY(ID)
);

/* CREATE SEQUENCES */
CREATE SEQUENCE ID_EVENTO_SEQ;
CREATE SEQUENCE ID_ESPORTE_SEQ;

/* DEFINE FOREIGN KEYS */

ALTER TABLE EVENTO
    ADD CONSTRAINT EVENTO_ESPORTE_FK
    FOREIGN KEY(ID_ESPORTE)
    REFERENCES ESPORTE(ID);

/* INSERTS ESPORTE */
INSERT INTO ESPORTE(ID, NOME)
VALUES(ID_ESPORTE_SEQ.NEXTVAL, 'Futebol');
INSERT INTO ESPORTE(ID, NOME) 
VALUES(ID_ESPORTE_SEQ.NEXTVAL,'Futsal');
INSERT INTO ESPORTE(ID, NOME) 
VALUES(ID_ESPORTE_SEQ.NEXTVAL,'Futvolei');
INSERT INTO ESPORTE(ID, NOME) 
VALUES(ID_ESPORTE_SEQ.NEXTVAL,'Basquetebol');
INSERT INTO ESPORTE(ID, NOME)
VALUES(ID_ESPORTE_SEQ.NEXTVAL,'Cricket');
INSERT INTO ESPORTE(ID, NOME) 
VALUES(ID_ESPORTE_SEQ.NEXTVAL,'Voleibol');
INSERT INTO ESPORTE(ID, NOME) 
VALUES(ID_ESPORTE_SEQ.NEXTVAL,'Handbol');
INSERT INTO ESPORTE(ID, NOME)
VALUES(ID_ESPORTE_SEQ.NEXTVAL,'Golfe');
INSERT INTO ESPORTE(ID, NOME) 
VALUES(ID_ESPORTE_SEQ.NEXTVAL,'T�nis');
