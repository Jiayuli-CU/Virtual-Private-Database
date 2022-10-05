DECLARE
BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE projects
        (
            id INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
            name VARCHAR(32) UNIQUE NOT NULL,
            description CLOB NOT NULL,
            due DATE NOT NULL,
            est_member_num NUMBER(3) NOT NULL,
            access_level CHAR(2) CHECK (access_level IN (''p0'', ''p1'', ''p2'', ''p3'')) NOT NULL,
            status VARCHAR(4) CHECK (status IN (''dev'', ''test'', ''prod'')) NOT NULL,
            CONSTRAINT projects_id_pk PRIMARY KEY (id)
        )';
    EXCEPTION WHEN OTHERS THEN
        IF SQLCODE = -955 THEN NULL ;
        ELSE RAISE ;
        END IF;
END;