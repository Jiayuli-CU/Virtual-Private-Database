--FOR OP10001
--TEST OP10001 ON SYSTEM.EMPLOYEES
SELECT * FROM SYSTEM.EMPLOYEES;
UPDATE SYSTEM.EMPLOYEES SET GENDER='FEMALE';
DELETE FROM SYSTEM.EMPLOYEES;
INSERT INTO SYSTEM.EMPLOYEES(ID,FIRST_NAME,LAST_NAME,GENDER,DEPARTMENT_ID,POSITION,ACCESS_LEVEL,BASE) VALUES('OP10003','TEST','TEST','TEST','6','TEST','TEST','TEST');


--TEST OP10001 ON Administration_Conference
SELECT * FROM SYSTEM.Administration_Conference;
UPDATE SYSTEM.Administration_Conference SET BASE='CN' WHERE ID='C00001';
DELETE FROM SYSTEM.Administration_Conference WHERE ID='C00001';
INSERT INTO SYSTEM.Administration_Conference(ID, BEGIN_TIME, END_TIME, CONFERENCE_ROOM, REASON, APPLY_PERSON, BASE) values ('C00001', to_timestamp('2022-10-05 10:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-05 12:00:00','yyyy-mm-dd hh24:mi:ss'), 'CR101', 'DEPARTMENT MEETING', 'D0001','CN');

--TEST OP10001 ON Administration_Food
SELECT * FROM SYSTEM.Administration_Food;
UPDATE SYSTEM.Administration_Food SET STATUS='TEST' WHERE ID='F00001';
DELETE FROM SYSTEM.Administration_Food WHERE ID='F00001';
INSERT INTO SYSTEM.Administration_Food(ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00001', to_date('2022-10-05','yyyy-mm-dd'), 'CAKE', '10', 'CN','FINISHED');

--TEST OP10001 ON HR_Attendance
SELECT * FROM SYSTEM.HR_Attendance;
UPDATE SYSTEM.HR_Attendance SET SIGN_IN_TIME=to_timestamp('2022-10-03 09:25:34','yyyy-mm-dd hh24:mi:ss');
DELETE FROM SYSTEM.HR_Attendance WHERE EMPLOYEE_ID='OP10001';
INSERT INTO SYSTEM.HR_Attendance(ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00060', 'OP10001', to_timestamp('2022-10-03 09:25:34','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 18:40:00','yyyy-mm-dd hh24:mi:ss'));

--TEST OP10001 ON HR_Leave
SELECT * FROM SYSTEM.HR_Leave;
UPDATE SYSTEM.HR_Leave SET FROM_TIME=to_timestamp('2022-10-22 09:00:00','yyyy-mm-dd hh24:mi:ss');
DELETE FROM SYSTEM.HR_Leave WHERE EMPLOYEE_ID='OP10001';
INSERT INTO SYSTEM.HR_Leave(ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00016', 'OP10001', to_timestamp('2022-10-03 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 18:40:00','yyyy-mm-dd hh24:mi:ss'));

--TEST OP10001 ON HR_Person_Details
SELECT * FROM SYSTEM.HR_Person_Details;
UPDATE SYSTEM.HR_Person_Details SET EMAIL='TEST';
DELETE FROM SYSTEM.HR_Person_Details;
INSERT INTO SYSTEM.HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE )  values ('H00022', 'OP0001', 'E0740927@U.NUS.EDU', '+8613881979285','MASTER', to_date('2020-10-05','yyyy-mm-dd'));


--TEST OP10001 ON ACCOUNTING_SALARY_HISTORY
SELECT * FROM SYSTEM.ACCOUNTING_SALARY_HISTORY;
UPDATE SYSTEM.ACCOUNTING_SALARY_HISTORY SET JOB_PERFORMANCE='TEST';
DELETE FROM SYSTEM.ACCOUNTING_SALARY_HISTORY;
INSERT INTO SYSTEM.ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00058', 'OP0001', to_date('2022-10-01','yyyy-mm-dd'), '3.5', '25000','3000','1000','29000');











--FOR OP10002
--TEST OP10002 ON SYSTEM.EMPLOYEES
SELECT * FROM SYSTEM.EMPLOYEES;
UPDATE SYSTEM.EMPLOYEES SET GENDER='TEST';
DELETE FROM SYSTEM.EMPLOYEES;
INSERT INTO SYSTEM.EMPLOYEES(ID,FIRST_NAME,LAST_NAME,GENDER,DEPARTMENT_ID,POSITION,ACCESS_LEVEL,BASE) VALUES('OP10002','TEST','TEST','TEST','6','TEST','TEST','TEST');

--TEST OP10002 ON Administration_Conference
SELECT * FROM SYSTEM.Administration_Conference;
UPDATE SYSTEM.Administration_Conference SET BASE='CN' WHERE ID='C00001';
DELETE FROM SYSTEM.Administration_Conference WHERE ID='C00001';
INSERT INTO SYSTEM.Administration_Conference(ID, BEGIN_TIME, END_TIME, CONFERENCE_ROOM, REASON, APPLY_PERSON, BASE) values ('C00001', to_timestamp('2022-10-05 10:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-05 12:00:00','yyyy-mm-dd hh24:mi:ss'), 'CR101', 'DEPARTMENT MEETING', 'D0001','CN');

--TEST OP10002 ON Administration_Food
SELECT * FROM SYSTEM.Administration_Food;
UPDATE SYSTEM.Administration_Food SET STATUS='TEST' WHERE ID='F00001';
DELETE FROM SYSTEM.Administration_Food WHERE ID='F00001';
INSERT INTO SYSTEM.Administration_Food(ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00001', to_date('2022-10-05','yyyy-mm-dd'), 'CAKE', '10', 'CN','FINISHED');

--TEST OP10002 ON HR_Attendance
SELECT * FROM SYSTEM.HR_Attendance;
UPDATE SYSTEM.HR_Attendance SET SIGN_IN_TIME=to_timestamp('2022-10-03 09:25:34','yyyy-mm-dd hh24:mi:ss');
DELETE FROM SYSTEM.HR_Attendance WHERE EMPLOYEE_ID='OP10001';
INSERT INTO SYSTEM.HR_Attendance(ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00060', 'OP10001', to_timestamp('2022-10-03 09:25:34','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 18:40:00','yyyy-mm-dd hh24:mi:ss'));

--TEST OP10002 ON HR_Leave
SELECT * FROM SYSTEM.HR_Leave;
UPDATE SYSTEM.HR_Leave SET FROM_TIME=to_timestamp('2022-10-22 09:00:00','yyyy-mm-dd hh24:mi:ss');
DELETE FROM SYSTEM.HR_Leave WHERE EMPLOYEE_ID='OP10001';
INSERT INTO SYSTEM.HR_Leave(ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00016', 'OP10001', to_timestamp('2022-10-03 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 18:40:00','yyyy-mm-dd hh24:mi:ss'));

--TEST OP10002 ON HR_Person_Details
SELECT * FROM SYSTEM.HR_Person_Details;
UPDATE SYSTEM.HR_Person_Details SET EMAIL='TEST';
DELETE FROM SYSTEM.HR_Person_Details;
INSERT INTO SYSTEM.HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE )  values ('H00022', 'OP0001', 'E0740927@U.NUS.EDU', '+8613881979285','MASTER', to_date('2020-10-05','yyyy-mm-dd'));


--TEST OP10002 ON ACCOUNTING_SALARY_HISTORY
SELECT * FROM SYSTEM.ACCOUNTING_SALARY_HISTORY;
UPDATE SYSTEM.ACCOUNTING_SALARY_HISTORY SET JOB_PERFORMANCE='TEST';
DELETE FROM SYSTEM.ACCOUNTING_SALARY_HISTORY;
INSERT INTO SYSTEM.ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00058', 'OP0001', to_date('2022-10-01','yyyy-mm-dd'), '3.5', '25000','3000','1000','29000');




--FOR ACC10001
--TEST ACC10001 ON SYSTEM.EMPLOYEES
SELECT * FROM SYSTEM.EMPLOYEES;
UPDATE SYSTEM.EMPLOYEES SET GENDER='TEST';
UPDATE SYSTEM.EMPLOYEES SET GENDER='FEMALE';
DELETE FROM SYSTEM.EMPLOYEES;
INSERT INTO SYSTEM.EMPLOYEES(ID,FIRST_NAME,LAST_NAME,GENDER,DEPARTMENT_ID,POSITION,ACCESS_LEVEL,BASE) VALUES('OP10002','TEST','TEST','TEST','6','TEST','TEST','TEST');


--TEST ACC10001 ON Administration_Conference
SELECT * FROM SYSTEM.Administration_Conference;
UPDATE SYSTEM.Administration_Conference SET BASE='CN' WHERE ID='C00001';
DELETE FROM SYSTEM.Administration_Conference WHERE ID='C00001';
INSERT INTO SYSTEM.Administration_Conference(ID, BEGIN_TIME, END_TIME, CONFERENCE_ROOM, REASON, APPLY_PERSON, BASE) values ('C00001', to_timestamp('2022-10-05 10:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-05 12:00:00','yyyy-mm-dd hh24:mi:ss'), 'CR101', 'DEPARTMENT MEETING', 'D0001','CN');

--TEST ACC10001 ON Administration_Food
SELECT * FROM SYSTEM.Administration_Food;
UPDATE SYSTEM.Administration_Food SET STATUS='TEST' WHERE ID='F00001';
DELETE FROM SYSTEM.Administration_Food WHERE ID='F00001';
INSERT INTO SYSTEM.Administration_Food(ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00001', to_date('2022-10-05','yyyy-mm-dd'), 'CAKE', '10', 'CN','FINISHED');

--TEST ACC10001 ON HR_Attendance
SELECT * FROM SYSTEM.HR_Attendance;
UPDATE SYSTEM.HR_Attendance SET SIGN_IN_TIME=to_timestamp('2022-10-03 09:25:34','yyyy-mm-dd hh24:mi:ss');
DELETE FROM SYSTEM.HR_Attendance WHERE EMPLOYEE_ID='OP10001';
INSERT INTO SYSTEM.HR_Attendance(ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00060', 'OP10001', to_timestamp('2022-10-03 09:25:34','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 18:40:00','yyyy-mm-dd hh24:mi:ss'));

--TEST ACC10001 ON HR_Leave
SELECT * FROM SYSTEM.HR_Leave;
UPDATE SYSTEM.HR_Leave SET FROM_TIME=to_timestamp('2022-10-22 09:00:00','yyyy-mm-dd hh24:mi:ss');
DELETE FROM SYSTEM.HR_Leave WHERE EMPLOYEE_ID='OP10001';
INSERT INTO SYSTEM.HR_Leave(ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00016', 'OP10001', to_timestamp('2022-10-03 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 18:40:00','yyyy-mm-dd hh24:mi:ss'));

--TEST ACC10001 ON HR_Person_Details
SELECT * FROM SYSTEM.HR_Person_Details;
UPDATE SYSTEM.HR_Person_Details SET EMAIL='TEST';
DELETE FROM SYSTEM.HR_Person_Details;
INSERT INTO SYSTEM.HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE )  values ('H00022', 'OP0001', 'E0740927@U.NUS.EDU', '+8613881979285','MASTER', to_date('2020-10-05','yyyy-mm-dd'));


--TEST ACC10001 ON ACCOUNTING_SALARY_HISTORY
SELECT * FROM SYSTEM.ACCOUNTING_SALARY_HISTORY;
UPDATE SYSTEM.ACCOUNTING_SALARY_HISTORY SET JOB_PERFORMANCE='TEST';
DELETE FROM SYSTEM.ACCOUNTING_SALARY_HISTORY;
INSERT INTO SYSTEM.ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00058', 'OP0001', to_date('2022-10-01','yyyy-mm-dd'), '3.5', '25000','3000','1000','29000');

