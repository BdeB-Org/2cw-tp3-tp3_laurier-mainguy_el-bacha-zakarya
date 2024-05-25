-- Généré par Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   à :        2024-05-24 21:39:01 HAE
--   site :      Oracle Database 11g
--   type :      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE administration_aide (
    id_admin            NUMBER NOT NULL,
    prenom_admin        VARCHAR2(40) NOT NULL,
    nom_admin           VARCHAR2(40) NOT NULL,
    email_admin         VARCHAR2(60) NOT NULL,
    telephone_admin     VARCHAR2(12) NOT NULL,
    disponibilite_admin VARCHAR2(50) NOT NULL
);

ALTER TABLE administration_aide ADD CONSTRAINT administration_aide_pk PRIMARY KEY ( id_admin );

CREATE TABLE client (
    id_client                    NUMBER NOT NULL,
    prenom_client                VARCHAR2(60) NOT NULL,
    nom_client                   VARCHAR2(60) NOT NULL,
    adresse_client               VARCHAR2(150) NOT NULL,
    telephone_client             VARCHAR2(12) NOT NULL,
    livraison_id_livreur         NUMBER NOT NULL,
    administration_aide_id_admin NUMBER NOT NULL,
    magasin_id_magasin           NUMBER NOT NULL
);

ALTER TABLE client ADD CONSTRAINT client_pk PRIMARY KEY ( id_client );

CREATE TABLE livraison (
    id_livreur             NUMBER NOT NULL,
    prenom_livreur         VARCHAR2(60) NOT NULL,
    nom_livreur            VARCHAR2(60) NOT NULL,
    disponibilite_province VARCHAR2(60) NOT NULL,
    magasin_id_magasin     NUMBER NOT NULL
);

ALTER TABLE livraison ADD CONSTRAINT livraison_pk PRIMARY KEY ( id_livreur );

CREATE TABLE magasin (
    id_magasin            NUMBER NOT NULL,
    lieu_magasin_province VARCHAR2(60) NOT NULL
);

ALTER TABLE magasin ADD CONSTRAINT magasin_pk PRIMARY KEY ( id_magasin );

CREATE TABLE produit (
    id_produit           NUMBER NOT NULL,
    nom_produit          VARCHAR2(60) NOT NULL,
    description          VARCHAR2(150) NOT NULL,
    magasin_id_magasin   NUMBER NOT NULL,
    livraison_id_livreur NUMBER NOT NULL
);

ALTER TABLE produit ADD CONSTRAINT produit_pk PRIMARY KEY ( id_produit );

ALTER TABLE client
    ADD CONSTRAINT client_administration_aide_fk FOREIGN KEY ( administration_aide_id_admin )
        REFERENCES administration_aide ( id_admin );

ALTER TABLE client
    ADD CONSTRAINT client_livraison_fk FOREIGN KEY ( livraison_id_livreur )
        REFERENCES livraison ( id_livreur );

ALTER TABLE client
    ADD CONSTRAINT client_magasin_fk FOREIGN KEY ( magasin_id_magasin )
        REFERENCES magasin ( id_magasin );

ALTER TABLE livraison
    ADD CONSTRAINT livraison_magasin_fk FOREIGN KEY ( magasin_id_magasin )
        REFERENCES magasin ( id_magasin );

ALTER TABLE produit
    ADD CONSTRAINT produit_livraison_fk FOREIGN KEY ( livraison_id_livreur )
        REFERENCES livraison ( id_livreur );

ALTER TABLE produit
    ADD CONSTRAINT produit_magasin_fk FOREIGN KEY ( magasin_id_magasin )
        REFERENCES magasin ( id_magasin );



-- Rapport récapitulatif d'Oracle SQL Developer Data Modeler : 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                             11
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
