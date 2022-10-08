DECLARE
BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE repositories
        (
            id INT NOT NULL,
            name VARCHAR(32) UNIQUE NOT NULL,
            link VARCHAR(128) UNIQUE NOT NULL,
            access_level CHAR(2) CHECK(access_level IN (''p0'',''p1'',''p2'', ''p3'')) NOT NULL,
            create_time DATE NOT NULL,
            update_time DATE NOT NULL,
            in_use CHAR(1) DEFAULT ON NULL (''Y'') CHECK(in_use IN (''Y'', ''N'')),
            project_id INT UNIQUE NOT NULL,
            CONSTRAINT repositories_project_id_fk FOREIGN KEY (project_id) REFERENCES projects (id),
            CONSTRAINT repositories_id_pk PRIMARY KEY (id)
        )';
    EXCEPTION WHEN OTHERS THEN
        IF SQLCODE = -955 THEN NULL ;
        ELSE RAISE ;
        END IF;
END;