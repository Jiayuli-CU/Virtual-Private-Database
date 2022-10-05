-- create roles for SDE
CREATE ROLE SDE_FE_1;
CREATE ROLE SDE_FE_2;
CREATE ROLE SDE_FE_3;

CREATE ROLE SDE_BE_1;
CREATE ROLE SDE_BE_2;
CREATE ROLE SDE_BE_3;

CREATE ROLE SDE_TEST_1;
CREATE ROLE SDE_TEST_2;
CREATE ROLE SDE_TEST_3;

-- Grant privileges for SDE

---- for databases
GRANT ALL ON databases TO SDE_BE_3;
GRANT ALL ON databases TO SDE_TEST_3;
GRANT SELECT, UPDATE on databases TO SDE_BE_2;
GRANT SELECT, UPDATE on databases TO SDE_TEST_2;
GRANT SELECT on databases TO SDE_BE_1;
GRANT SELECT on databases TO SDE_TEST_1;

---- for servers
GRANT ALL ON servers TO SDE_BE_3;
GRANT ALL ON servers TO SDE_TEST_3;
GRANT ALL ON servers TO SDE_FE_3;
GRANT SELECT, UPDATE on servers TO SDE_BE_2;
GRANT SELECT, UPDATE on servers TO SDE_TEST_2;
GRANT SELECT, UPDATE ON servers TO SDE_FE_2;
GRANT SELECT on servers TO SDE_BE_1;
GRANT SELECT on servers TO SDE_TEST_1;
GRANT SELECT on servers TO SDE_FE_1;
