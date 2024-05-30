-- Generer par Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   a :        2024-05-24 21:39:01 HAE
--   site :      Oracle Database 11g
--   type :      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

-- Ce code va creer la table administration_aide

CREATE TABLE ADMINISTRATION_AIDE (
    id_admin            NUMBER NOT NULL,
    prenom_admin        VARCHAR2(40) NOT NULL,
    nom_admin           VARCHAR2(40) NOT NULL,
    email_admin         VARCHAR2(60) NOT NULL,
    telephone_admin     VARCHAR2(12) NOT NULL,
    disponibilite_admin VARCHAR2(50) NOT NULL
);

ALTER TABLE ADMINISTRATION_AIDE ADD CONSTRAINT ADMINISTRATION_AIDE_pk PRIMARY KEY ( id_admin );

-- L'insertion des donnees dans la table administration_aide

INSERT INTO ADMINISTRATION_AIDE (id_admin,prenom_admin,nom_admin,email_admin,telephone_admin,disponibilite_admin) VALUES (5000,'Chantal','Dumers','chantaldumers@gmail.com','438-529-1000','faible');
INSERT INTO ADMINISTRATION_AIDE (id_admin,prenom_admin,nom_admin,email_admin,telephone_admin,disponibilite_admin) VALUES (5001,'Laurent','Lamontagne','laurentlamontagne@gmail.com','438-643-5260','moyenne');
INSERT INTO ADMINISTRATION_AIDE (id_admin,prenom_admin,nom_admin,email_admin,telephone_admin,disponibilite_admin) VALUES (5002,'Maxime','Tremblay','maximetremblay@gmail.com','514-272-2719','moyenne');
INSERT INTO ADMINISTRATION_AIDE (id_admin,prenom_admin,nom_admin,email_admin,telephone_admin,disponibilite_admin) VALUES (5003,'Leo','Ouellet','leoouellet@gmail.com','514-671-4409','elevee');
INSERT INTO ADMINISTRATION_AIDE (id_admin,prenom_admin,nom_admin,email_admin,telephone_admin,disponibilite_admin) VALUES (5004,'Martin','Piche','martinpiche@gmail.com','438-719-3410','faible');
INSERT INTO ADMINISTRATION_AIDE (id_admin,prenom_admin,nom_admin,email_admin,telephone_admin,disponibilite_admin) VALUES (5005,'Francine','Belanger','francinebelanger@gmail.com','514-715-1151','elevee');
COMMIT;

SELECT *
FROM ADMINISTRATION_AIDE;

-- Ce code va creer la table client

CREATE TABLE CLIENT (
    id_client                    NUMBER NOT NULL,
    prenom_client                VARCHAR2(60) NOT NULL,
    nom_client                   VARCHAR2(60) NOT NULL,
    adresse_client               VARCHAR2(150) NOT NULL,
    telephone_client             VARCHAR2(12) NOT NULL,
    LIVRAISON_id_livreur         NUMBER NOT NULL,
    ADMINISTRATION_AIDE_id_admin NUMBER NOT NULL,
    MAGASIN_id_magasin           NUMBER NOT NULL
);

ALTER TABLE CLIENT ADD CONSTRAINT CLIENT_pk PRIMARY KEY ( id_client );

-- L'insertion des donnees dans la table client

INSERT INTO  CLIENT (id_client,prenom_client,nom_client,adresse_client,telephone_client,LIVRAISON_id_livreur,ADMINISTRATION_AIDE_id_admin,MAGASIN_id_magasin) VALUES (10000001,'Loic','Desjardins','6000 Rue Saint Pierre Montreal','438-716-0159',10001,5000,100000);
INSERT INTO  CLIENT (id_client,prenom_client,nom_client,adresse_client,telephone_client,LIVRAISON_id_livreur,ADMINISTRATION_AIDE_id_admin,MAGASIN_id_magasin) VALUES (10000002,'Guillaume','Lessard','7159 Rue Saint Catherine Montreal','514-317-4123',10001,5003,100000);
INSERT INTO  CLIENT (id_client,prenom_client,nom_client,adresse_client,telephone_client,LIVRAISON_id_livreur,ADMINISTRATION_AIDE_id_admin,MAGASIN_id_magasin) VALUES (10000003,'Alex','Martel','6 Fourth St Mount Pearl','709-113-4197',10002,5003,100001);
INSERT INTO  CLIENT (id_client,prenom_client,nom_client,adresse_client,telephone_client,LIVRAISON_id_livreur,ADMINISTRATION_AIDE_id_admin,MAGASIN_id_magasin) VALUES (10000004,'Justin','Hebert','66 Avenue Rd Toronto','416-192-7841',10003,5005,100002);
INSERT INTO  CLIENT (id_client,prenom_client,nom_client,adresse_client,telephone_client,LIVRAISON_id_livreur,ADMINISTRATION_AIDE_id_admin,MAGASIN_id_magasin) VALUES (10000005,'Felix','Lapointe','25 Donovan St Mount Pearl','709-671-8518',10002,5005,100001);
INSERT INTO  CLIENT (id_client,prenom_client,nom_client,adresse_client,telephone_client,LIVRAISON_id_livreur,ADMINISTRATION_AIDE_id_admin,MAGASIN_id_magasin) VALUES (10000006,'Edouard','Beaulieu','791 Yonge St Toronto','416-558-1241',10003,5002,100002);
INSERT INTO  CLIENT (id_client,prenom_client,nom_client,adresse_client,telephone_client,LIVRAISON_id_livreur,ADMINISTRATION_AIDE_id_admin,MAGASIN_id_magasin) VALUES (10000007,'Simon','Simard','4151 Rue Saint Denis Montreal','438-664-9910',10001,5001,100000);
INSERT INTO  CLIENT (id_client,prenom_client,nom_client,adresse_client,telephone_client,LIVRAISON_id_livreur,ADMINISTRATION_AIDE_id_admin,MAGASIN_id_magasin) VALUES (10000008,'Justine','Couture','9 Toope Place Mount Pearl','709-332-1227',10002,5001,100001);
COMMIT;

SELECT *
FROM CLIENT;

-- Ce code va creer la table livraison

CREATE TABLE LIVRAISON (
    id_livreur             NUMBER NOT NULL,
    prenom_livreur         VARCHAR2(60) NOT NULL,
    nom_livreur            VARCHAR2(60) NOT NULL,
    disponibilite_province VARCHAR2(60) NOT NULL,
    MAGASIN_id_magasin     NUMBER NOT NULL
);

ALTER TABLE LIVRAISON ADD CONSTRAINT LIVRAISON_pk PRIMARY KEY ( id_livreur );

-- L'insertion des donnees dans la table livraison

INSERT INTO  LIVRAISON (id_livreur,prenom_livreur,nom_livreur,disponibilite_province,MAGASIN_id_magasin) VALUES (10001,'Carlos','Homard','Quebec',100000);
INSERT INTO  LIVRAISON (id_livreur,prenom_livreur,nom_livreur,disponibilite_province,MAGASIN_id_magasin) VALUES (10002,'Omar','Boudreau','Terre Neuve Labrador',100001);
INSERT INTO  LIVRAISON (id_livreur,prenom_livreur,nom_livreur,disponibilite_province,MAGASIN_id_magasin) VALUES (10003,'Jeanne','Boisvert','Ontario',100002);
COMMIT;

SELECT *
FROM LIVRAISON;

-- Ce code va creer la table magasin

CREATE TABLE MAGASIN (
    id_magasin            NUMBER NOT NULL,
    lieu_magasin_province VARCHAR2(60) NOT NULL
);

ALTER TABLE MAGASIN ADD CONSTRAINT MAGASIN_pk PRIMARY KEY ( id_magasin );

-- L'insertion des donnees dans la table magasin

INSERT INTO  MAGASIN (id_magasin,lieu_magasin_province) VALUES (100000,'Quebec');
INSERT INTO  MAGASIN (id_magasin,lieu_magasin_province) VALUES (100001,'Terre Neuve Labrador');
INSERT INTO  MAGASIN (id_magasin,lieu_magasin_province) VALUES (100002,'Ontario');
COMMIT;

SELECT *
FROM MAGASIN;

-- Ce code va creer la table produit

CREATE TABLE PRODUIT (
    id_produit           NUMBER NOT NULL,
    nom_produit          VARCHAR2(60) NOT NULL,
    description          VARCHAR2(150) NOT NULL,
    magasin_id_magasin   NUMBER NOT NULL,
    livraison_id_livreur NUMBER NOT NULL
);

ALTER TABLE PRODUIT ADD CONSTRAINT PRODUIT_pk PRIMARY KEY ( id_produit );

-- L'insertion des donnees dans la table produit

INSERT INTO  PRODUIT (id_produit,nom_produit,description,MAGASIN_id_magasin,LIVRAISON_id_livreur) VALUES (101,'Ballon de Soccer','blanc,noir,rond',100000,10001);
INSERT INTO  PRODUIT (id_produit,nom_produit,description,MAGASIN_id_magasin,LIVRAISON_id_livreur) VALUES (102,'Ballon de Rugby','brun,blanc,ovale',100000,10001);
INSERT INTO  PRODUIT (id_produit,nom_produit,description,MAGASIN_id_magasin,LIVRAISON_id_livreur) VALUES (103,'Baton de Hockey','long,bois,noir',100001,10002);
INSERT INTO  PRODUIT (id_produit,nom_produit,description,MAGASIN_id_magasin,LIVRAISON_id_livreur) VALUES (104,'Ballon de Volleybal','blanc,leger,rond',100001,10002);
INSERT INTO  PRODUIT (id_produit,nom_produit,description,MAGASIN_id_magasin,LIVRAISON_id_livreur) VALUES (105,'Protege Tibias','resistant,noir,confortable',100002,10003);
INSERT INTO  PRODUIT (id_produit,nom_produit,description,MAGASIN_id_magasin,LIVRAISON_id_livreur) VALUES (106,'Ballon de Basketball','orange,ligne,noir',100002,10003);
COMMIT;

SELECT *
FROM PRODUIT;

ALTER TABLE CLIENT
    ADD CONSTRAINT CLIENT_ADMINISTRATION_AIDE_fk FOREIGN KEY ( ADMINISTRATION_AIDE_id_admin )
        REFERENCES ADMINISTRATION_AIDE ( id_admin );

ALTER TABLE CLIENT
    ADD CONSTRAINT CLIENT_LIVRAISON_fk FOREIGN KEY ( LIVRAISON_id_livreur )
        REFERENCES LIVRAISON ( id_livreur );

ALTER TABLE CLIENT
    ADD CONSTRAINT CLIENT_MAGASIN_fk FOREIGN KEY ( MAGASIN_id_magasin )
        REFERENCES MAGASIN ( id_magasin );

ALTER TABLE LIVRAISON
    ADD CONSTRAINT LIVRAISON_MAGASIN_fk FOREIGN KEY ( MAGASIN_id_magasin )
        REFERENCES MAGASIN ( id_magasin );

ALTER TABLE PRODUIT
    ADD CONSTRAINT PRODUIT_LIVRAISON_fk FOREIGN KEY ( LIVRAISON_id_livreur )
        REFERENCES LIVRAISON ( id_livreur );

ALTER TABLE PRODUIT
    ADD CONSTRAINT PRODUIT_MAGASIN_fk FOREIGN KEY ( MAGASIN_id_magasin )
        REFERENCES MAGASIN ( id_magasin );


-- Ce code va creer une URI sous l'URL qu'on pourra utiliser pour permettre l'activation des tables en mode REST
BEGIN
 ORDS.enable_schema(
   p_enabled             => TRUE,
   p_schema              => 'RESTSCOTT',
   p_url_mapping_type    => 'BASE_PATH',
   p_url_mapping_pattern => 'hr2',
   p_auto_rest_auth      => FALSE
 );

  COMMIT;
END;
/

-- L'activation de la table magasin pour l'acces REST

BEGIN
 ORDS.enable_object (
   p_enabled      => TRUE,
   p_schema       => 'RESTSCOTT',
   p_object       => 'MAGASIN',
   p_object_type  => 'TABLE',
   p_object_alias => 'magasins'
 );

  COMMIT;
END;
/

-- L'activation de la table administration_aide pour l'acces REST

BEGIN
 ORDS.enable_object (
   p_enabled      => TRUE,
   p_schema       => 'RESTSCOTT',
   p_object       => 'ADMINISTRATION_AIDE',
   p_object_type  => 'TABLE',
   p_object_alias => 'administration_aides'
 );

  COMMIT;
END;
/

-- L'activation de la table produit pour l'acces REST

BEGIN
 ORDS.enable_object (
   p_enabled      => TRUE,
   p_schema       => 'RESTSCOTT',
   p_object       => 'PRODUIT',
   p_object_type  => 'TABLE',
   p_object_alias => 'produits'
 );

  COMMIT;
END;
/

-- L'activation de la table livraison pour l'acces REST


BEGIN
 ORDS.enable_object (
   p_enabled      => TRUE,
   p_schema       => 'RESTSCOTT',
   p_object       => 'LIVRAISON',
   p_object_type  => 'TABLE',
   p_object_alias => 'livraisons'
 );

  COMMIT;
END;
/

-- L'activation de la table client pour l'acces REST

BEGIN
 ORDS.enable_object (
   p_enabled      => TRUE,
   p_schema       => 'RESTSCOTT',
   p_object       => 'CLIENT',
   p_object_type  => 'TABLE',
   p_object_alias => 'clients'
 );

  COMMIT;
END;
/

-- Ce code confirmera l'activation su schema

SELECT *
FROM user_ords_schemas;

-- Ce code confirmera l'activation des tables pour l'acces REST

SELECT *
FROM user_ords_enabled_objects;




-- Rapport recapitulatif d'Oracle SQL Developer Data Modeler : 
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
