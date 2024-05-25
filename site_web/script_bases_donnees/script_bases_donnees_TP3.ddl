-- Generer par Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   a :        2024-05-24 21:39:01 HAE
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

INSERT INTO administration_aide (id_admin,prenom_admin,nom_admin,email_admin,telephone_admin,disponibilite_admin) VALUES (5000,'Chantal','Dumers','chantaldumers@gmail.com','438-529-1000','faible');
INSERT INTO administration_aide (id_admin,prenom_admin,nom_admin,email_admin,telephone_admin,disponibilite_admin) VALUES (5001,'Laurent','Lamontagne','laurentlamontagne@gmail.com','438-643-5260','moyenne');
INSERT INTO administration_aide (id_admin,prenom_admin,nom_admin,email_admin,telephone_admin,disponibilite_admin) VALUES (5002,'Maxime','Tremblay','maximetremblay@gmail.com','514-272-2719','moyenne');
INSERT INTO administration_aide (id_admin,prenom_admin,nom_admin,email_admin,telephone_admin,disponibilite_admin) VALUES (5003,'Leo,Ouellet','leoouellet@gmail.com','514-671-4409','elevee');
INSERT INTO administration_aide (id_admin,prenom_admin,nom_admin,email_admin,telephone_admin,disponibilite_admin) VALUES (5004,'Martin','Piche','martinpiche@gmail.com','438-719-3410','faible');
INSERT INTO administration_aide (id_admin,prenom_admin,nom_admin,email_admin,telephone_admin,disponibilite_admin) VALUES (5005,'Francine,Belanger','francinebelanger@gmail.com','514-715-1151','elevee');
COMMIT;

SELECT *
FROM administration_aide;

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

INSERT INTO  client (id_client,prenom_client,nom_client,adresse_client,telephone_client,livraison_id_livreur,administration_aide_id_admin,magasin_id_magasin) VALUES (001,'Loic','Desjardins','6000 Rue Saint Pierre Montreal','438-716-0159',10001,5000,100000);
INSERT INTO  client (id_client,prenom_client,nom_client,adresse_client,telephone_client,livraison_id_livreur,administration_aide_id_admin,magasin_id_magasin) VALUES (002,'Guillaume','Lessard','7159 Rue Saint Catherine Montreal','514-317-4123',10001,5003,100000);
INSERT INTO  client (id_client,prenom_client,nom_client,adresse_client,telephone_client,livraison_id_livreur,administration_aide_id_admin,magasin_id_magasin) VALUES (003,'Alex','Martel','6 Fourth St Mount Pearl','709-113-4197',10001,5003,100001);
INSERT INTO  client (id_client,prenom_client,nom_client,adresse_client,telephone_client,livraison_id_livreur,administration_aide_id_admin,magasin_id_magasin) VALUES (004,'Justin','Hebert','66 Avenue Rd Toronto','416-192-7841',10001,5005,100002);
INSERT INTO  client (id_client,prenom_client,nom_client,adresse_client,telephone_client,livraison_id_livreur,administration_aide_id_admin,magasin_id_magasin) VALUES (005,'Felix','Lapointe','25 Donovan St Mount Pearl','709-671-8518',10001,5005,100001);
INSERT INTO  client (id_client,prenom_client,nom_client,adresse_client,telephone_client,livraison_id_livreur,administration_aide_id_admin,magasin_id_magasin) VALUES (006,'Edouard','Beaulieu','791 Yonge St Toronto','416-558-1241',10001,5002,100002);
INSERT INTO  client (id_client,prenom_client,nom_client,adresse_client,telephone_client,livraison_id_livreur,administration_aide_id_admin,magasin_id_magasin) VALUES (007,'Simon','Simard','4151 Rue Saint Denis Montreal','438-664-9910',10001,5001,100000);
INSERT INTO  client (id_client,prenom_client,nom_client,adresse_client,telephone_client,livraison_id_livreur,administration_aide_id_admin,magasin_id_magasin) VALUES (008,'Justine','Couture','9 Toope Place Mount Pearl','709-332-1227',10001,5001,100001);
COMMIT;

SELECT *
FROM client;

CREATE TABLE livraison (
    id_livreur             NUMBER NOT NULL,
    prenom_livreur         VARCHAR2(60) NOT NULL,
    nom_livreur            VARCHAR2(60) NOT NULL,
    disponibilite_province VARCHAR2(60) NOT NULL,
    magasin_id_magasin     NUMBER NOT NULL
);

ALTER TABLE livraison ADD CONSTRAINT livraison_pk PRIMARY KEY ( id_livreur );

INSERT INTO  livraison (id_livreur,prenom_livreur,nom_livreur,disponibilite_province,magasin_id_magasin) VALUES (10001,'Carlos','Homard','Quebec',100000);
INSERT INTO  livraison (id_livreur,prenom_livreur,nom_livreur,disponibilite_province,magasin_id_magasin) VALUES (10002,'Omar','Boudreau','Terre Neuve Labrador',100001);
INSERT INTO  livraison (id_livreur,prenom_livreur,nom_livreur,disponibilite_province,magasin_id_magasin) VALUES (10003,'Jeanne','Boisvert','Ontario',100002);
COMMIT;

SELECT *
FROM livraison;

CREATE TABLE magasin (
    id_magasin            NUMBER NOT NULL,
    lieu_magasin_province VARCHAR2(60) NOT NULL
);

ALTER TABLE magasin ADD CONSTRAINT magasin_pk PRIMARY KEY ( id_magasin );

INSERT INTO  magasin (id_magasin,lieu_magasin_province) VALUES (100000,'Quebec');
INSERT INTO  magasin (id_magasin,lieu_magasin_province) VALUES (100001,'Terre Neuve Labrador');
INSERT INTO  magasin (id_magasin,lieu_magasin_province) VALUES (100002,'Ontario');
COMMIT;

SELECT *
FROM magasin;

CREATE TABLE produit (
    id_produit           NUMBER NOT NULL,
    nom_produit          VARCHAR2(60) NOT NULL,
    description          VARCHAR2(150) NOT NULL,
    magasin_id_magasin   NUMBER NOT NULL,
    livraison_id_livreur NUMBER NOT NULL
);

ALTER TABLE produit ADD CONSTRAINT produit_pk PRIMARY KEY ( id_produit );

INSERT INTO  produit (id_produit,nom_produit,description,magasin_id_magasin,livraison_id_livreur) VALUES (101,'Ballon de Soccer','blanc,noir,rond',100000,10000);
INSERT INTO  produit (id_produit,nom_produit,description,magasin_id_magasin,livraison_id_livreur) VALUES (102,'Ballon de Rugby','brun,blanc,ovale',100000,10000);
INSERT INTO  produit (id_produit,nom_produit,description,magasin_id_magasin,livraison_id_livreur) VALUES (103,'Baton de Hockey','long,bois,noir',100001,10001);
INSERT INTO  produit (id_produit,nom_produit,description,magasin_id_magasin,livraison_id_livreur) VALUES (104,'Ballon de Volleybal','blanc,leger,rond',100001,10001);
INSERT INTO  produit (id_produit,nom_produit,description,magasin_id_magasin,livraison_id_livreur) VALUES (105,'Protege Tibias','resistant,noir,confortable',100002,10002);
INSERT INTO  produit (id_produit,nom_produit,description,magasin_id_magasin,livraison_id_livreur) VALUES (106,'Ballon de Basketball','orange,ligne,noir',100002,10002);
COMMIT;

SELECT *
FROM produit;

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


BEGIN
 ORDS.enable_object (
   p_enabled      => TRUE,
   p_schema       => 'RESTSCOTT',
   p_object       => 'MAGASIN',
   p_object_type  => 'TABLE',
   p_object_alias => 'magasin'
 );

  COMMIT;
END;
/


BEGIN
 ORDS.enable_object (
   p_enabled      => TRUE,
   p_schema       => 'RESTSCOTT',
   p_object       => 'ADMINISTRATION_AIDE',
   p_object_type  => 'TABLE',
   p_object_alias => 'administration_aide'
 );

  COMMIT;
END;
/



BEGIN
 ORDS.enable_object (
   p_enabled      => TRUE,
   p_schema       => 'RESTSCOTT',
   p_object       => 'PRODUIT',
   p_object_type  => 'TABLE',
   p_object_alias => 'produit'
 );

  COMMIT;
END;
/



BEGIN
 ORDS.enable_object (
   p_enabled      => TRUE,
   p_schema       => 'RESTSCOTT',
   p_object       => 'LIVRAISON',
   p_object_type  => 'TABLE',
   p_object_alias => 'livraison'
 );

  COMMIT;
END;
/


BEGIN
 ORDS.enable_object (
   p_enabled      => TRUE,
   p_schema       => 'RESTSCOTT',
   p_object       => 'CLIENT',
   p_object_type  => 'TABLE',
   p_object_alias => 'client'
 );

  COMMIT;
END;
/


SELECT *
FROM user_ords_schemas;


SELECT *
FROM user_ords_enabled_objects;




-- Rapport r�capitulatif d'Oracle SQL Developer Data Modeler : 
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
