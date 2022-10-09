-- SELECT
SELECT * FROM system.projects;
SELECT * FROM system.servers;
SELECT * FROM system.databases;
SELECT * FROM system.repositories;

-- SELECT
SELECT * FROM system.servers;
-- UPDATE
UPDATE system.servers SET region='TW' WHERE id='99';
-- DELETE
DELETE FROM system.servers where id='49';

--For SDE_BE_1==D0001; S
--For SDE_BE_2==D0002; SU
--For SDE_BE_3==D0003; ALL
--For SDE_TE_1==D0007; S
--For SDE_TE_2==D0008; SU
--For SDE_TE_3==D0009; ALL

SELECT * from system.ACCOUNTING_SALARY_HISTORY;
SELECT * from system.HR_Person_Details;
SELECT * from system.HR_Attendance;
SELECT * from system.HR_Leave;
SELECT * from system.Administration_Conference;
SELECT * from system.Administration_Food;
