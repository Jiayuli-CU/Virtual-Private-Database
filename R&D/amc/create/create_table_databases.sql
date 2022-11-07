DECLARE
BEGIN
EXECUTE IMMEDIATE 'CREATE TABLE databases
                   (
                       id INT UNIQUE NOT NULL,
                       name VARCHAR(32) UNIQUE NOT NULL,
                       link VARCHAR(128) UNIQUE NOT NULL,
                       access_level CHAR(2) CHECK(access_level IN (''p0'',''p1'',''p2'', ''p3'')) NOT NULL,
                       create_time DATE NOT NULL,
                       update_time DATE NOT NULL,
                       status VARCHAR(4) CHECK (status IN (''dev'', ''test'', ''prod'')) NOT NULL,
                       in_use CHAR(1) DEFAULT ON NULL (''Y'') CHECK(in_use IN (''Y'', ''N'')),
                       region VARCHAR(16) NOT NULL,
                       repository_id INT UNIQUE NOT NULL,
                       CONSTRAINT databases_id_fk FOREIGN KEY (repository_id) REFERENCES repositories (id),
                       CONSTRAINT databases_id_pk PRIMARY KEY (id)
                   )';
EXCEPTION WHEN OTHERS THEN
        IF SQLCODE = -955 THEN NULL ;
ELSE RAISE ;
END IF;
END;


DROP TABLE databases;
CREATE TABLE databases
(
    id INT NOT NULL,
    name VARCHAR(32) NOT NULL,
    link VARCHAR(128) NOT NULL,
    access_level CHAR(2) CHECK(access_level IN ('p0','p1','p2', 'p3')) NOT NULL,
    status VARCHAR(4) CHECK (status IN ('dev', 'test', 'prod')) NOT NULL,
    in_use CHAR(1) DEFAULT ON NULL ('Y') CHECK(in_use IN ('Y', 'N')),
    region VARCHAR(16) NOT NULL,
    repository_id INT NOT NULL,
    CONSTRAINT databases_id_fk FOREIGN KEY (repository_id) REFERENCES repositories (id),
    CONSTRAINT databases_id_pk PRIMARY KEY (id)
);