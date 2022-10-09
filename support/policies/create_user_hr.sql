--- 创建hr用户
CREATE ROLE hrbp;
CREATE ROLE hr_manager;

GRANT SELECT ON EMPLOYEES TO operator;
GRANT UPDATE ON EMPLOYEES TO operator;
GRANT SELECT ON EMPLOYEES TO operator_manager;
GRANT UPDATE ON EMPLOYEES TO operator_manager;

GRANT ALL ON HR_PERSON_DETAILS TO hrbp;
GRANT ALL ON HR_PERSON_DETAILS TO hrbp;
GRANT ALL ON HR_PERSON_DETAILS TO hrbp;
GRANT ALL ON HR_PERSON_DETAILS TO hrbp;

GRANT ALL ON HR_PERSON_DETAILS TO hr_manager;
GRANT ALL ON HR_PERSON_DETAILS TO hr_manager;
GRANT ALL ON HR_PERSON_DETAILS TO hr_manager;
GRANT ALL ON HR_PERSON_DETAILS TO hr_manager;


GRANT ALL ON HR_ATTENDANCE TO hrbp;
GRANT ALL ON HR_ATTENDANCE TO hrbp;
GRANT ALL ON HR_ATTENDANCE TO hrbp;
GRANT ALL ON HR_ATTENDANCE TO hrbp;


GRANT ALL ON HR_ATTENDANCE TO hr_manager;
GRANT ALL ON HR_ATTENDANCE TO hr_manager;
GRANT ALL ON HR_ATTENDANCE TO hr_manager;
GRANT ALL ON HR_ATTENDANCE TO hr_manager;


GRANT ALL ON HR_LEAVE TO hrbp;
GRANT ALL ON HR_LEAVE TO hrbp;
GRANT ALL ON HR_LEAVE TO hrbp;
GRANT ALL ON HR_LEAVE TO hrbp;


GRANT ALL ON HR_LEAVE TO hr_manager;
GRANT ALL ON HR_LEAVE TO hr_manager;
GRANT ALL ON HR_LEAVE TO hr_manager;
GRANT ALL ON HR_LEAVE TO hr_manager;

CREATE USER HR10001 IDENTIFIED BY abcd1234;
CREATE USER HR10002 IDENTIFIED BY abcd1234;

GRANT hrbp to HR10001;
GRANT hr_manager to HR10002;

GRANT CREATE SESSION TO HR10001;
GRANT CREATE SESSION TO HR10002;


--- 创建用户ACCOUNTANT
CREATE ROLE accountant;
CREATE ROLE accountan_manager;

GRANT SELECT ON EMPLOYEES TO accountant;
GRANT UPDATE ON EMPLOYEES TO accountant;
GRANT SELECT ON EMPLOYEES TO accountan_manager;
GRANT UPDATE ON EMPLOYEES TO accountan_manager;

GRANT ALL ON ACCOUNTING_SALARY_HISTORY TO accountant;
GRANT ALL ON ACCOUNTING_SALARY_HISTORY TO accountant;
GRANT ALL ON ACCOUNTING_SALARY_HISTORY TO accountant;
GRANT ALL ON ACCOUNTING_SALARY_HISTORY TO accountant;

GRANT ALL ON ACCOUNTING_SALARY_HISTORY TO accountan_manager;
GRANT ALL ON ACCOUNTING_SALARY_HISTORY TO accountan_manager;
GRANT ALL ON ACCOUNTING_SALARY_HISTORY TO accountan_manager;
GRANT ALL ON ACCOUNTING_SALARY_HISTORY TO accountan_manager;

CREATE USER ACC10001 IDENTIFIED BY abcd1234;
CREATE USER ACC10002 IDENTIFIED BY abcd1234;

GRANT accountant to ACC10001;
GRANT accountan_manager to ACC10002;

GRANT CREATE SESSION TO ACC10001;
GRANT CREATE SESSION TO ACC10002;


--- 创建行政人员
CREATE ROLE operator;
CREATE ROLE operator_manager;

GRANT SELECT ON EMPLOYEES TO operator;
GRANT UPDATE ON EMPLOYEES TO operator;
GRANT SELECT ON EMPLOYEES TO operator_manager;
GRANT UPDATE ON EMPLOYEES TO operator_manager;

GRANT ALL ON ADMINISTRATION_CONFERENCE TO operator;
GRANT ALL ON ADMINISTRATION_CONFERENCE TO operator;
GRANT ALL ON ADMINISTRATION_CONFERENCE TO operator;
GRANT ALL ON ADMINISTRATION_CONFERENCE TO operator;

GRANT ALL ON ADMINISTRATION_CONFERENCE TO operator_manager;
GRANT ALL ON ADMINISTRATION_CONFERENCE TO operator_manager;
GRANT ALL ON ADMINISTRATION_CONFERENCE TO operator_manager;
GRANT ALL ON ADMINISTRATION_CONFERENCE TO operator_manager;

GRANT ALL ON ADMINISTRATION_FOOD TO operator;
GRANT ALL ON ADMINISTRATION_FOOD TO operator;
GRANT ALL ON ADMINISTRATION_FOOD TO operator;
GRANT ALL ON ADMINISTRATION_FOOD TO operator;

GRANT ALL ON ADMINISTRATION_FOOD TO operator_manager;
GRANT ALL ON ADMINISTRATION_FOOD TO operator_manager;
GRANT ALL ON ADMINISTRATION_FOOD TO operator_manager;
GRANT ALL ON ADMINISTRATION_FOOD TO operator_manager;

GRANT ALL ON ADMINISTRATION_PROPERTY TO operator;
GRANT ALL ON ADMINISTRATION_PROPERTY TO operator;
GRANT ALL ON ADMINISTRATION_PROPERTY TO operator;
GRANT ALL ON ADMINISTRATION_PROPERTY TO operator;

GRANT ALL ON ADMINISTRATION_PROPERTY TO operator_manager;
GRANT ALL ON ADMINISTRATION_PROPERTY TO operator_manager;
GRANT ALL ON ADMINISTRATION_PROPERTY TO operator_manager;
GRANT ALL ON ADMINISTRATION_PROPERTY TO operator_manager;

CREATE USER OP10001 IDENTIFIED BY abcd1234;
CREATE USER OP10002 IDENTIFIED BY abcd1234;

GRANT operator to OP10001;
GRANT operator_manager to OP10002;

GRANT CREATE SESSION TO OP10001;
GRANT CREATE SESSION TO OP10002;
