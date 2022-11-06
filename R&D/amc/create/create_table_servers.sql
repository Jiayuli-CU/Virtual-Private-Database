DROP TABLE servers;
CREATE TABLE servers
(
    id INT NOT NULL,
    name VARCHAR(32) NOT NULL,
    ip VARCHAR(128) UNIQUE NOT NULL,
    access_level CHAR(2) CHECK(access_level IN ('p0','p1','p2', 'p3')) NOT NULL,
    status CHAR(16) DEFAULT ON NULL ('active') CHECK(status IN ('active', 'down','deprecate')),
    region VARCHAR(16) NOT NULL,
    repository_id INT NOT NULL,
    environment CHAR(8) CHECK(environment IN ('test', 'prod', 'dev')) NOT NULL,
    CONSTRAINT servers_id_fk FOREIGN KEY (repository_id) REFERENCES repositories (id),
    CONSTRAINT servers_id_pk PRIMARY KEY (id)
);