DECLARE
BEGIN
EXECUTE IMMEDIATE 'CREATE TABLE servers
                   (
                       id INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
                       name VARCHAR(32) UNIQUE NOT NULL,
                       ip VARCHAR(128) UNIQUE NOT NULL,
                       access_level CHAR(2) CHECK(access_level IN (''p0'',''p1'',''p2'', ''p3'')) NOT NULL,
                       create_time DATE NOT NULL,
                       update_time DATE NOT NULL,
                       status CHAR(16) DEFAULT ON NULL (''active'') CHECK(status IN (''active'', ''down'',''deprecate'')),
                       region VARCHAR(16) NOT NULL,
                       repository_id INT UNIQUE NOT NULL,
                       environment CHAR(8) CHECK(environment IN (''test'', ''prod'')) NOT NULL,
                       CONSTRAINT servers_id_fk FOREIGN KEY (repository_id) REFERENCES repositories (id),
                       CONSTRAINT servers_id_pk PRIMARY KEY (id)
                   )';
EXCEPTION WHEN OTHERS THEN
        IF SQLCODE = -955 THEN NULL ;
ELSE RAISE ;
END IF;
END;