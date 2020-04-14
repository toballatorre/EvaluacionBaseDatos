-- Generado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   en:        2020-03-22 16:08:41 CLST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE alternativa (
    alt_id       INTEGER NOT NULL,
    alt_letra    CHAR(1 CHAR),
    descripcion  VARCHAR2(200 CHAR),
    es_correcto  CHAR(1),
    porcentaje   FLOAT(2),
    preg_id      INTEGER NOT NULL
);

COMMENT ON COLUMN alternativa.alt_id IS
    'Identificador unico del de la alternativa';

COMMENT ON COLUMN alternativa.descripcion IS
    'Descripcion de la alternativa';

COMMENT ON COLUMN alternativa.es_correcto IS
    '0: INCORRECTO
1: CORRECTO';

COMMENT ON COLUMN alternativa.porcentaje IS
    'el valor en porcentaje de la alternativa';

ALTER TABLE alternativa ADD CONSTRAINT alternativa_pk PRIMARY KEY ( alt_id );

CREATE TABLE asign_curso (
    asign_c_id  INTEGER NOT NULL,
    est_id      INTEGER NOT NULL,
    curso_id    INTEGER NOT NULL
);

ALTER TABLE asign_curso ADD CONSTRAINT asign_curso_pk PRIMARY KEY ( asign_c_id );

CREATE TABLE asign_test (
    asign_t_id  INTEGER NOT NULL,
    est_id      INTEGER NOT NULL,
    test_id     INTEGER NOT NULL
);

ALTER TABLE asign_test ADD CONSTRAINT asign_test_pk PRIMARY KEY ( asign_t_id );

CREATE TABLE autor (
    aut_id        CHAR(2 CHAR) NOT NULL,
    aut_nombre    VARCHAR2(50 CHAR),
    aut_apellido  VARCHAR2(50 CHAR)
);

COMMENT ON COLUMN autor.aut_id IS
    'Identificador unico del autor';

COMMENT ON COLUMN autor.aut_nombre IS
    'Nombre del autor';

COMMENT ON COLUMN autor.aut_apellido IS
    'Apellido del autor';

ALTER TABLE autor ADD CONSTRAINT autor_pk PRIMARY KEY ( aut_id );

CREATE TABLE curso (
    curso_id    INTEGER NOT NULL,
    cur_nombre  VARCHAR2(100),
    prog_id     CHAR(3 CHAR) NOT NULL
);

COMMENT ON COLUMN curso.curso_id IS
    'Identificador unico del curso';

COMMENT ON COLUMN curso.cur_nombre IS
    'Nombre del curso';

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( curso_id );

CREATE TABLE estudiante (
    est_id        INTEGER NOT NULL,
    est_nombre    VARCHAR2(50 CHAR),
    est_apellido  VARCHAR2(50 CHAR)
);

COMMENT ON COLUMN estudiante.est_id IS
    'Identificador del estudiante';

COMMENT ON COLUMN estudiante.est_nombre IS
    'Primer nombre del estudiante';

COMMENT ON COLUMN estudiante.est_apellido IS
    'Apellido del estudiante';

ALTER TABLE estudiante ADD CONSTRAINT estudiante_pk PRIMARY KEY ( est_id );

CREATE TABLE pregunta (
    preg_id    INTEGER NOT NULL,
    enunciado  VARCHAR2(300 CHAR),
    puntaje    INTEGER,
    test_id    INTEGER NOT NULL
);

COMMENT ON COLUMN pregunta.preg_id IS
    'Identificador unico de la pregunta';

COMMENT ON COLUMN pregunta.enunciado IS
    'Descripcion del enunciado';

COMMENT ON COLUMN pregunta.puntaje IS
    'cuanto puntaje tiene la pregunta';

ALTER TABLE pregunta ADD CONSTRAINT pregunta_pk PRIMARY KEY ( preg_id );

CREATE TABLE programa (
    prog_id      CHAR(3 CHAR) NOT NULL,
    prog_nombre  VARCHAR2(100)
);

COMMENT ON COLUMN programa.prog_id IS
    'Identificador unico del programa';

COMMENT ON COLUMN programa.prog_nombre IS
    'Nombre del programa';

ALTER TABLE programa ADD CONSTRAINT programa_pk PRIMARY KEY ( prog_id );

CREATE TABLE respuestas (
    asign_r_id  INTEGER NOT NULL,
    respuesta   CHAR(1 CHAR),
    est_id      INTEGER NOT NULL,
    preg_id     INTEGER NOT NULL
);

COMMENT ON COLUMN respuestas.asign_r_id IS
    'Identificador unico de la asigancion estudiante-test';

COMMENT ON COLUMN respuestas.est_id IS
    'FK identificador del estudiante que se le asigna un test';

ALTER TABLE respuestas ADD CONSTRAINT respuestas_pk PRIMARY KEY ( asign_r_id );

CREATE TABLE test (
    test_id      INTEGER NOT NULL,
    t_nombre     VARCHAR2(100 CHAR),
    fecha        DATE,
    descripcion  VARCHAR2(4000),
    prog_id      CHAR(3 CHAR) NOT NULL,
    aut_id       CHAR(2 CHAR) NOT NULL,
    uni_id       INTEGER NOT NULL
);

COMMENT ON COLUMN test.test_id IS
    'Identificador unico del test';

COMMENT ON COLUMN test.t_nombre IS
    'Nombre del test';

COMMENT ON COLUMN test.fecha IS
    'Fecha de creacion del test';

COMMENT ON COLUMN test.descripcion IS
    'Descripcion general del test';

ALTER TABLE test ADD CONSTRAINT test_pk PRIMARY KEY ( test_id );

CREATE TABLE unidad (
    uni_id      INTEGER NOT NULL,
    uni_nombre  VARCHAR2(100 CHAR)
);

COMMENT ON COLUMN unidad.uni_id IS
    'Identificador unico de la unidad';

ALTER TABLE unidad ADD CONSTRAINT unidad_pk PRIMARY KEY ( uni_id );

ALTER TABLE alternativa
    ADD CONSTRAINT alternativa_pregunta_fk FOREIGN KEY ( preg_id )
        REFERENCES pregunta ( preg_id );

ALTER TABLE asign_curso
    ADD CONSTRAINT asign_curso_curso_fk FOREIGN KEY ( curso_id )
        REFERENCES curso ( curso_id );

ALTER TABLE asign_curso
    ADD CONSTRAINT asign_curso_estudiante_fk FOREIGN KEY ( est_id )
        REFERENCES estudiante ( est_id );

ALTER TABLE asign_test
    ADD CONSTRAINT asign_test_estudiante_fk FOREIGN KEY ( est_id )
        REFERENCES estudiante ( est_id );

ALTER TABLE asign_test
    ADD CONSTRAINT asign_test_test_fk FOREIGN KEY ( test_id )
        REFERENCES test ( test_id );

ALTER TABLE curso
    ADD CONSTRAINT curso_programa_fk FOREIGN KEY ( prog_id )
        REFERENCES programa ( prog_id );

ALTER TABLE pregunta
    ADD CONSTRAINT pregunta_test_fk FOREIGN KEY ( test_id )
        REFERENCES test ( test_id );

ALTER TABLE respuestas
    ADD CONSTRAINT respuestas_estudiante_fk FOREIGN KEY ( est_id )
        REFERENCES estudiante ( est_id );

ALTER TABLE respuestas
    ADD CONSTRAINT respuestas_pregunta_fk FOREIGN KEY ( preg_id )
        REFERENCES pregunta ( preg_id );

ALTER TABLE test
    ADD CONSTRAINT test_autor_fk FOREIGN KEY ( aut_id )
        REFERENCES autor ( aut_id );

ALTER TABLE test
    ADD CONSTRAINT test_programa_fk FOREIGN KEY ( prog_id )
        REFERENCES programa ( prog_id );

ALTER TABLE test
    ADD CONSTRAINT test_unidad_fk FOREIGN KEY ( uni_id )
        REFERENCES unidad ( uni_id );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            11
-- CREATE INDEX                             0
-- ALTER TABLE                             23
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
