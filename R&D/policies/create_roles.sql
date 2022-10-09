-- create roles for SDE
CREATE ROLE SDE_FE_1;
CREATE ROLE SDE_FE_2;
CREATE ROLE SDE_FE_3;

CREATE ROLE SDE_BE_1;
CREATE ROLE SDE_BE_2;
CREATE ROLE SDE_BE_3;

CREATE ROLE SDE_TE_1;
CREATE ROLE SDE_TE_2;
CREATE ROLE SDE_TE_3;

-- Grant privileges for SDE

---- for projects
GRANT SELECT, UPDATE ON projects TO SDE_FE_3;
GRANT SELECT, UPDATE ON projects TO SDE_FE_2;
GRANT SELECT, UPDATE ON projects TO SDE_FE_1;
GRANT SELECT, UPDATE ON projects TO SDE_BE_3;
GRANT SELECT, UPDATE ON projects TO SDE_BE_2;
GRANT SELECT, UPDATE ON projects TO SDE_BE_1;
GRANT SELECT, UPDATE ON projects TO SDE_TE_3;
GRANT SELECT, UPDATE ON projects TO SDE_TE_2;
GRANT SELECT, UPDATE ON projects TO SDE_TE_1;

---- for repositories
GRANT ALL ON repositories TO SDE_FE_3;
GRANT ALL ON repositories TO SDE_BE_3;
GRANT SELECT, UPDATE ON repositories TO SDE_FE_2;
GRANT SELECT, UPDATE ON repositories TO SDE_BE_2;
GRANT SELECT, UPDATE ON repositories TO SDE_FE_1;
GRANT SELECT, UPDATE ON repositories TO SDE_BE_1;
GRANT SELECT, UPDATE ON repositories TO SDE_TE_3;
GRANT SELECT, UPDATE ON repositories TO SDE_TE_2;
GRANT SELECT, UPDATE ON repositories TO SDE_TE_1;

---- for databases
GRANT ALL ON databases TO SDE_BE_3;
GRANT ALL ON databases TO SDE_TE_3;
GRANT SELECT, UPDATE ON databases TO SDE_BE_2;
GRANT SELECT, UPDATE ON databases TO SDE_TE_2;
GRANT SELECT ON databases TO SDE_BE_1;
GRANT SELECT ON databases TO SDE_TE_1;

---- for servers
GRANT ALL ON servers TO SDE_BE_3;
GRANT ALL ON servers TO SDE_TE_3;
GRANT ALL ON servers TO SDE_FE_3;
GRANT SELECT, UPDATE ON servers TO SDE_BE_2;
GRANT SELECT, UPDATE ON servers TO SDE_TE_2;
GRANT SELECT, UPDATE ON servers TO SDE_FE_2;
GRANT SELECT ON servers TO SDE_BE_1;
GRANT SELECT ON servers TO SDE_TE_1;
GRANT SELECT ON servers TO SDE_FE_1;

-- create user
CREATE USER D0001 IDENTIFIED BY abcd1234;
CREATE USER D0002 IDENTIFIED BY abcd1234;
CREATE USER D0003 IDENTIFIED BY abcd1234;
CREATE USER D0004 IDENTIFIED BY abcd1234;
CREATE USER D0005 IDENTIFIED BY abcd1234;
CREATE USER D0006 IDENTIFIED BY abcd1234;
CREATE USER D0007 IDENTIFIED BY abcd1234;
CREATE USER D0008 IDENTIFIED BY abcd1234;
CREATE USER D0009 IDENTIFIED BY abcd1234;

-- grant roles
GRANT SDE_BE_1 TO D0001;
GRANT SDE_BE_2 TO D0002;
GRANT SDE_BE_3 TO D0003;
GRANT SDE_FE_1 TO D0004;
GRANT SDE_FE_2 TO D0005;
GRANT SDE_FE_3 TO D0006;
GRANT SDE_TE_1 TO D0007;
GRANT SDE_TE_2 TO D0008;
GRANT SDE_TE_3 TO D0009;

-- grant session
GRANT CREATE SESSION TO D0001;
GRANT CREATE SESSION TO D0002;
GRANT CREATE SESSION TO D0003;
GRANT CREATE SESSION TO D0004;
GRANT CREATE SESSION TO D0005;
GRANT CREATE SESSION TO D0006;
GRANT CREATE SESSION TO D0007;
GRANT CREATE SESSION TO D0008;
GRANT CREATE SESSION TO D0009;