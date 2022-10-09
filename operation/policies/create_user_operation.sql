CREATE ROLE product_operation;
CREATE ROLE content_operation;
CREATE ROLE activities_operation; 

GRANT SELECT ON EMPLOYEES TO product_operation;
GRANT SELECT ON EMPLOYEES TO content_operation;
GRANT SELECT ON EMPLOYEES TO activities_operation;

GRANT ALL ON PROJECT_FEEDBACK TO product_operation;
GRANT SELECT ON PROJECT_COPYWRITING TO product_operation;
GRANT SELECT ON EVENT_PLANNING TO product_operation;
GRANT SELECT ON PROJECTS TO product_operation;

GRANT ALL ON PROJECT_COPYWRITING TO content_operation;
GRANT SELECT ON PROJECT_FEEDBACK TO content_operation;
GRANT SELECT ON EVENT_PLANNING TO content_operation;
GRANT SELECT ON PROJECTS TO content_operation;

GRANT ALL ON EVENT_PLANNING TO activities_operation;

GRANT SELECT ON Administration_Conference TO product_operation;
GRANT SELECT ON Administration_Food TO product_operation;
GRANT SELECT ON HR_Attendance TO product_operation;
GRANT SELECT ON HR_Leave TO product_operation;
GRANT SELECT, UPDATE ON HR_Person_Details TO product_operation;
GRANT SELECT ON ACCOUNTING_SALARY_HISTORY TO product_operation;

GRANT SELECT ON Administration_Conference TO content_operation;
GRANT SELECT ON Administration_Food TO content_operation;
GRANT SELECT ON HR_Attendance TO content_operation;
GRANT SELECT ON HR_Leave TO content_operation;
GRANT SELECT, UPDATE ON HR_Person_Details TO content_operation;
GRANT SELECT ON ACCOUNTING_SALARY_HISTORY TO content_operation;

GRANT SELECT ON Administration_Conference TO activities_operation;
GRANT SELECT ON Administration_Food TO activities_operation;
GRANT SELECT ON HR_Attendance TO activities_operation;
GRANT SELECT ON HR_Leave TO activities_operation;
GRANT SELECT, UPDATE ON HR_Person_Details TO activities_operation;
GRANT SELECT ON ACCOUNTING_SALARY_HISTORY TO activities_operation;

CREATE USER MK0001 IDENTIFIED BY abcd1234;
CREATE USER MK0002 IDENTIFIED BY abcd1234;
CREATE USER MK0003 IDENTIFIED BY abcd1234;

GRANT product_operation TO MK0001;
GRANT content_operation TO MK0002;
GRANT activities_operation TO MK0003;

GRANT CREATE SESSION TO MK0001;
GRANT CREATE SESSION TO MK0002;
GRANT CREATE SESSION TO MK0003;
