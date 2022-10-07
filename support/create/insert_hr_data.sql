---INSERT DATA TO HR_ATTENDANCE
insert into HR_ATTENDANCE (ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00001', 'D0001', to_timestamp('2022-10-01 09:10:15','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-01 20:15:33','yyyy-mm-dd hh24:mi:ss'));
insert into HR_ATTENDANCE (ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00006', 'D0002', to_timestamp('2022-10-03 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 19:20:42','yyyy-mm-dd hh24:mi:ss'));
insert into HR_ATTENDANCE (ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00009', 'D0003', to_timestamp('2022-10-03 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 18:00:51','yyyy-mm-dd hh24:mi:ss'));
insert into HR_ATTENDANCE (ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00013', 'D0005', to_timestamp('2022-10-01 09:00:02','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-01 18:00:40','yyyy-mm-dd hh24:mi:ss'));
insert into HR_ATTENDANCE (ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00015', 'D0005', to_timestamp('2022-10-03 09:43:42','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 19:00:52','yyyy-mm-dd hh24:mi:ss'));
insert into HR_ATTENDANCE (ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00018', 'D0006', to_timestamp('2022-10-03 09:00:50','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 18:00:50','yyyy-mm-dd hh24:mi:ss'));
insert into HR_ATTENDANCE (ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00024', 'D0008', to_timestamp('2022-10-03 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 19:00:31','yyyy-mm-dd hh24:mi:ss'));
insert into HR_ATTENDANCE (ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00025', 'D0009', to_timestamp('2022-10-01 09:04:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-01 20:00:23','yyyy-mm-dd hh24:mi:ss'));
insert into HR_ATTENDANCE (ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00028', 'P0001', to_timestamp('2022-10-01 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-01 19:00:02','yyyy-mm-dd hh24:mi:ss'));
insert into HR_ATTENDANCE (ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00029', 'P0001', to_timestamp('2022-10-02 09:12:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-02 18:00:06','yyyy-mm-dd hh24:mi:ss'));
insert into HR_ATTENDANCE (ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00030', 'P0001', to_timestamp('2022-10-03 09:50:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 19:01:00','yyyy-mm-dd hh24:mi:ss'));
insert into HR_ATTENDANCE (ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00031', 'P0002', to_timestamp('2022-10-01 09:00:10','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-01 19:12:00','yyyy-mm-dd hh24:mi:ss'));
insert into HR_ATTENDANCE (ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00042', 'P0005', to_timestamp('2022-10-03 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 19:00:00','yyyy-mm-dd hh24:mi:ss'));
insert into HR_ATTENDANCE (ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00043', 'P0006', to_timestamp('2022-10-01 09:00:08','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-01 18:58:00','yyyy-mm-dd hh24:mi:ss'));
insert into HR_ATTENDANCE (ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00044', 'P0006', to_timestamp('2022-10-02 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-02 18:00:00','yyyy-mm-dd hh24:mi:ss'));
insert into HR_ATTENDANCE (ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00049', 'M0001', to_timestamp('2022-10-01 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-01 19:10:00','yyyy-mm-dd hh24:mi:ss'));
insert into HR_ATTENDANCE (ID, EMPLOYEE_ID, SIGN_IN_TIME, SIGN_OUT_TIME) values ('A00057', 'M0003', to_timestamp('2022-10-03 09:25:34','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 18:40:00','yyyy-mm-dd hh24:mi:ss'));


---INSERT DATA TO HR_LEAVE
insert into HR_LEAVE (ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00001', 'D0001', to_timestamp('2022-10-01 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-01 18:30:00','yyyy-mm-dd hh24:mi:ss'));
insert into HR_LEAVE (ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00002', 'D0002', to_timestamp('2022-10-03 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 18:30:00','yyyy-mm-dd hh24:mi:ss'));
insert into HR_LEAVE (ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00003', 'D0003', to_timestamp('2022-10-03 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 18:30:00','yyyy-mm-dd hh24:mi:ss'));
insert into HR_LEAVE (ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00004', 'D0005', to_timestamp('2022-10-01 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-01 18:30:00','yyyy-mm-dd hh24:mi:ss'));
insert into HR_LEAVE (ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00005', 'D0005', to_timestamp('2022-10-03 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 11:30','yyyy-mm-dd hh24:mi:ss'));
insert into HR_LEAVE (ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00006', 'D0006', to_timestamp('2022-10-03 09:00:50','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 18:30:00','yyyy-mm-dd hh24:mi:ss'));
insert into HR_LEAVE (ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00007', 'D0008', to_timestamp('2022-10-03 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 11:30','yyyy-mm-dd hh24:mi:ss'));
insert into HR_LEAVE (ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00008', 'D0009', to_timestamp('2022-10-01 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-01 18:30:00','yyyy-mm-dd hh24:mi:ss'));
insert into HR_LEAVE (ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00009', 'P0001', to_timestamp('2022-10-01 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-01 18:30:00','yyyy-mm-dd hh24:mi:ss'));
insert into HR_LEAVE (ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00010', 'P0002', to_timestamp('2022-10-01 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-01 18:30:00,'yyyy-mm-dd hh24:mi:ss'));
insert into HR_LEAVE (ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00011', 'P0005', to_timestamp('2022-10-03 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 18:30:00','yyyy-mm-dd hh24:mi:ss'));
insert into HR_LEAVE (ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00012', 'P0006', to_timestamp('2022-10-01 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-01 11:30','yyyy-mm-dd hh24:mi:ss'));
insert into HR_LEAVE (ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00013', 'P0006', to_timestamp('2022-10-02 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-02 18:30:00','yyyy-mm-dd hh24:mi:ss'));
insert into HR_LEAVE (ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00014', 'M0001', to_timestamp('2022-10-01 09:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-01 11:30','yyyy-mm-dd hh24:mi:ss'));
insert into HR_LEAVE (ID, EMPLOYEE_ID, FROM_TIME, TO_TIME) values ('L00015', 'M0003', to_timestamp('2022-10-03 15:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-03 18:30:00','yyyy-mm-dd hh24:mi:ss'));


---INSERT DATA TO ACCOUNTING_SALARY_HISTORY
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00001', 'D0001', to_date('2022-10-01','yyyy-mm-dd'), '3.5', '25000','3000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00002', 'D0001', to_date('2022-09-01','yyyy-mm-dd'), '3.2', '25000','1000','1000','27000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00003', 'D0001', to_date('2022-08-01','yyyy-mm-dd'), '3.2', '25000','1000','1000','27000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00004', 'D0002', to_date('2022-10-01','yyyy-mm-dd'), '3.2', '27000','1000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00005', 'D0002', to_date('2022-09-01','yyyy-mm-dd'), '3.5', '27000','3000','1000','31000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00006', 'D0002', to_date('2022-08-01','yyyy-mm-dd'), '3.5', '27000','3000','1000','31000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00007', 'D0003', to_date('2022-10-01','yyyy-mm-dd'), '3.7', '25000','5000','1000','31000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00008', 'D0003', to_date('2022-09-01','yyyy-mm-dd'), '3.7', '25000','5000','1000','31000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00009', 'D0003', to_date('2022-08-01','yyyy-mm-dd'), '3.5', '25000','3000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00010', 'D0004', to_date('2022-10-01','yyyy-mm-dd'), '3.2', '24000','1000','1000','26000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00011', 'D0004', to_date('2022-09-01','yyyy-mm-dd'), '3.5', '24000','3000','1000','28000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00012', 'D0004', to_date('2022-08-01','yyyy-mm-dd'), '3.5', '24000','3000','1000','28000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00013', 'D0005', to_date('2022-10-01','yyyy-mm-dd'), '3.0', '22000','0','1000','23000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00014', 'D0005', to_date('2022-09-01','yyyy-mm-dd'), '3.5', '22000','3000','1000','26000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00015', 'D0005', to_date('2022-08-01','yyyy-mm-dd'), '3.2', '22000','1000','1000','24000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00016', 'D0006', to_date('2022-10-01','yyyy-mm-dd'), '3.5', '25000','3000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00017', 'D0006', to_date('2022-09-01','yyyy-mm-dd'), '3.5', '25000','3000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00018', 'D0006', to_date('2022-08-01','yyyy-mm-dd'), '3.7', '25000','5000','1000','31000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00019', 'D0007', to_date('2022-10-01','yyyy-mm-dd'), '3.7', '29000','5000','1000','35000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00020', 'D0007', to_date('2022-09-01','yyyy-mm-dd'), '3.7', '29000','5000','1000','35000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00021', 'D0007', to_date('2022-08-01','yyyy-mm-dd'), '3.5', '29000','3000','1000','33000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00022', 'D0008', to_date('2022-10-01','yyyy-mm-dd'), '3.5', '25000','3000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00023', 'D0008', to_date('2022-09-01','yyyy-mm-dd'), '3.5', '25000','3000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00024', 'D0008', to_date('2022-08-01','yyyy-mm-dd'), '3.2', '25000','1000','1000','27000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00025', 'D0009', to_date('2022-10-01','yyyy-mm-dd'), '3.2', '25000','1000','1000','27000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00026', 'D0009', to_date('2022-09-01','yyyy-mm-dd'), '3.2', '25000','1000','1000','27000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00027', 'D0009', to_date('2022-08-01','yyyy-mm-dd'), '3.5', '25000','3000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00028', 'P0001', to_date('2022-10-01','yyyy-mm-dd'), '3.7', '23000','5000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00029', 'P0001', to_date('2022-09-01','yyyy-mm-dd'), '3.5', '23000','3000','1000','27000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00030', 'P0001', to_date('2022-08-01','yyyy-mm-dd'), '3.5', '23000','3000','1000','27000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00031', 'P0002', to_date('2022-10-01','yyyy-mm-dd'), '3.2', '25000','1000','1000','27000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00032', 'P0002', to_date('2022-09-01','yyyy-mm-dd'), '3.2', '25000','1000','1000','27000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00033', 'P0002', to_date('2022-08-01','yyyy-mm-dd'), '3.5', '25000','3000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00034', 'P0003', to_date('2022-10-01','yyyy-mm-dd'), '3.5', '23000','3000','1000','27000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00035', 'P0003', to_date('2022-09-01','yyyy-mm-dd'), '3.7', '23000','5000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00036', 'P0003', to_date('2022-08-01','yyyy-mm-dd'), '3.5', '23000','3000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00037', 'P0004', to_date('2022-10-01','yyyy-mm-dd'), '3.5', '24000','3000','1000','28000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00038', 'P0004', to_date('2022-09-01','yyyy-mm-dd'), '3.2', '24000','1000','1000','26000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00039', 'P0004', to_date('2022-08-01','yyyy-mm-dd'), '3.5', '24000','3000','1000','28000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00040', 'P0005', to_date('2022-10-01','yyyy-mm-dd'), '3.5', '26000','3000','1000','30000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00041', 'P0005', to_date('2022-09-01','yyyy-mm-dd'), '3.7', '26000','5000','1000','32000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00042', 'P0005', to_date('2022-08-01','yyyy-mm-dd'), '3.5', '26000','3000','1000','30000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00043', 'P0006', to_date('2022-10-01','yyyy-mm-dd'), '3.5', '25000','3000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00044', 'P0006', to_date('2022-09-01','yyyy-mm-dd'), '3.5', '25000','3000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00045', 'P0006', to_date('2022-08-01','yyyy-mm-dd'), '3.5', '25000','3000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00046', 'P0007', to_date('2022-10-01','yyyy-mm-dd'), '3.2', '25000','1000','1000','27000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00047', 'P0007', to_date('2022-09-01','yyyy-mm-dd'), '3.5', '25000','3000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00048', 'P0007', to_date('2022-08-01','yyyy-mm-dd'), '3.5', '25000','3000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00049', 'M0001', to_date('2022-10-01','yyyy-mm-dd'), '3.7', '30000','8000','2000','40000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00050', 'M0001', to_date('2022-09-01','yyyy-mm-dd'), '3.5', '30000','6000','2000','38000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00051', 'M0001', to_date('2022-08-01','yyyy-mm-dd'), '3.5', '30000','6000','2000','38000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00052', 'M0002', to_date('2022-10-01','yyyy-mm-dd'), '3.2', '31000','3000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00053', 'M0002', to_date('2022-09-01','yyyy-mm-dd'), '3.5', '31000','6000','1000','29000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00054', 'M0002', to_date('2022-08-01','yyyy-mm-dd'), '3.0', '31000','0','1000','32000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00055', 'M0003', to_date('2022-10-01','yyyy-mm-dd'), '3.5', '30000','6000','1000','37000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00056', 'M0003', to_date('2022-09-01','yyyy-mm-dd'), '3.5', '30000','6000','1000','37000');
insert into ACCOUNTING_SALARY_HISTORY (ID, EMPLOYEE_ID, TIME, JOB_PERFORMANCE, BASESALARY, BONUS, SUBSIDY, TOTAL_SALARY) values ('S00057', 'M0003', to_date('2022-08-01','yyyy-mm-dd'), '3.2', '30000','3000','1000','34000');


---INSERT DATA TO ADMINISTRATION_PROPERTY
insert into ADMINISTRATION_PROPERTY (PROPERTY_ID, ITEM, PURCHASE_TIME, AMOUNT, BASE, STATUS) values ('P00001', 'CHAIR', to_date('2020-10-01','yyyy-mm-dd'), '10', 'CN','WELL-CONDITIONED');
insert into ADMINISTRATION_PROPERTY (PROPERTY_ID, ITEM, PURCHASE_TIME, AMOUNT, BASE, STATUS) values ('P00002', 'TABLE', to_date('2020-10-01','yyyy-mm-dd'), '30', 'CN','WELL-CONDITIONED');
insert into ADMINISTRATION_PROPERTY (PROPERTY_ID, ITEM, PURCHASE_TIME, AMOUNT, BASE, STATUS) values ('P00003', 'DESK', to_date('2020-10-01','yyyy-mm-dd'), '10', 'CN','WELL-CONDITIONED');
insert into ADMINISTRATION_PROPERTY (PROPERTY_ID, ITEM, PURCHASE_TIME, AMOUNT, BASE, STATUS) values ('P00004', 'LIGHT', to_date('2020-10-01','yyyy-mm-dd'), '60', 'CN','WELL-CONDITIONED');
insert into ADMINISTRATION_PROPERTY (PROPERTY_ID, ITEM, PURCHASE_TIME, AMOUNT, BASE, STATUS) values ('P00005', 'LAPTOP', to_date('2020-10-01','yyyy-mm-dd'), '5', 'CN','WELL-CONDITIONED');
insert into ADMINISTRATION_PROPERTY (PROPERTY_ID, ITEM, PURCHASE_TIME, AMOUNT, BASE, STATUS) values ('P00006', 'SCREEN', to_date('2022-10-06','yyyy-mm-dd'), '30', 'CN','WELL-CONDITIONED');


---INSERT DATA TO ADMINISTRATION_FOOD
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00001', to_date('2022-10-05','yyyy-mm-dd'), 'CAKE', '10', 'CN','FINISHED');
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00002', to_date('2022-10-05','yyyy-mm-dd'), 'RICE', '50', 'CN','FINISHED');
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00003', to_date('2022-10-05','yyyy-mm-dd'), 'APPLE', '30', 'CN','FINISHED');
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00004', to_date('2022-10-05','yyyy-mm-dd'), 'ICE CREAM', '10', 'CN','FINISHED');
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00005', to_date('2022-10-06','yyyy-mm-dd'), 'VEGETABLE', '30', 'CN','FINISHED');
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00006', to_date('2022-10-06','yyyy-mm-dd'), 'BANANA', '20', 'CN','FINISHED');
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00007', to_date('2022-10-05','yyyy-mm-dd'), 'CAKE', '10', 'SG','FINISHED');
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00008', to_date('2022-10-05','yyyy-mm-dd'), 'RICE', '50', 'SG','FINISHED');
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00009', to_date('2022-10-05','yyyy-mm-dd'), 'APPLE', '30', 'SG','FINISHED');
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00010', to_date('2022-10-05','yyyy-mm-dd'), 'ICE CREAM', '10', 'SG','FINISHED');
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00011', to_date('2022-10-06','yyyy-mm-dd'), 'VEGETABLE', '30', 'SG','FINISHED');
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00012', to_date('2022-10-06','yyyy-mm-dd'), 'BANANA', '20', 'SG','FINISHED');
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00013', to_date('2022-10-05','yyyy-mm-dd'), 'CAKE', '10', 'US','FINISHED');
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00014', to_date('2022-10-05','yyyy-mm-dd'), 'RICE', '50', 'US','FINISHED');
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00015', to_date('2022-10-05','yyyy-mm-dd'), 'PEAR', '30', 'US','FINISHED');
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00016', to_date('2022-10-05','yyyy-mm-dd'), 'ICE CREAM', '10', 'US','FINISHED');
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00017', to_date('2022-10-06','yyyy-mm-dd'), 'CABBAGE', '30', 'US','FINISHED');
insert into ADMINISTRATION_FOOD (ID, FOOD_TIME, ITEMS, ITEM_NUMBER, BASE, STATUS) values ('F00018', to_date('2022-10-06','yyyy-mm-dd'), 'BANANA', '20', 'US','FINISHED');


---INSERT DATA TO ADMINISTRATION_CONFERENCE
insert into ADMINISTRATION_CONFERENCE (ID, BEGIN_TIME, END_TIME, CONFERENCE_ROOM, REASON, APPLY_PERSON, BASE) values ('C00001', to_timestamp('2022-10-05 10:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-05 12:00:00','yyyy-mm-dd hh24:mi:ss'), 'CR101', 'DEPARTMENT MEETING', 'D0001','CN');
insert into ADMINISTRATION_CONFERENCE (ID, BEGIN_TIME, END_TIME, CONFERENCE_ROOM, REASON, APPLY_PERSON, BASE) values ('C00002', to_timestamp('2022-10-06 10:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-06 12:00:00','yyyy-mm-dd hh24:mi:ss'), 'CR101', 'DEPARTMENT MEETING', 'D0002','CN');
insert into ADMINISTRATION_CONFERENCE (ID, BEGIN_TIME, END_TIME, CONFERENCE_ROOM, REASON, APPLY_PERSON, BASE) values ('C00003', to_timestamp('2022-10-06 14:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-06 16:00:00','yyyy-mm-dd hh24:mi:ss'), 'CR102', 'DEPARTMENT MEETING', 'D0003','US');
insert into ADMINISTRATION_CONFERENCE (ID, BEGIN_TIME, END_TIME, CONFERENCE_ROOM, REASON, APPLY_PERSON, BASE) values ('C00004', to_timestamp('2022-10-07 16:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-07 18:00:00','yyyy-mm-dd hh24:mi:ss'), 'CR106', 'DEPARTMENT MEETING', 'D0005','CN');
insert into ADMINISTRATION_CONFERENCE (ID, BEGIN_TIME, END_TIME, CONFERENCE_ROOM, REASON, APPLY_PERSON, BASE) values ('C00005', to_timestamp('2022-10-07 10:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-07 12:00:00','yyyy-mm-dd hh24:mi:ss'), 'CR108', 'DEPARTMENT MEETING', 'D0005','CN');
insert into ADMINISTRATION_CONFERENCE (ID, BEGIN_TIME, END_TIME, CONFERENCE_ROOM, REASON, APPLY_PERSON, BASE) values ('C00006', to_timestamp('2022-10-08 8:00:00','yyyy-mm-dd hh24:mi:ss'), to_timestamp('2022-10-08 10:00:00','yyyy-mm-dd hh24:mi:ss'), 'CR106', 'DEPARTMENT MEETING', 'P0001','SG');

---INSERT DATA TO HR_PERSON_DETAILS
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00001', 'D0001', 'E0740927@U.NUS.EDU', '+8613881979285','MASTER', to_date('2020-10-05','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00002', 'D0002', 'E0824154@U.SIM.EDU', '+8615463184325','PHD', to_date('2021-07-15','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00003', 'D0003', 'E0465324@U.SIM.EDU', '+8613265184923','GRADUATE', to_date('2018-10-20','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00004', 'D0004', 'E0431892@U.NTU.EDU', '+8613884846235','GRADUATE', to_date('2022-10-05','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00005', 'D0005', 'E0456138@U.NUS.EDU', '+8613881561385','GRADUATE', to_date('2022-08-25','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00006', 'D0006', 'E0645324@U.NTU.EDU', '+656541845','GRADUATE', to_date('2022-09-15','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00007', 'D0007', 'E0946521@U.SIM.EDU', '+658416821','MASTER', to_date('2020-10-01','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00008', 'D0008', 'E0964153@U.SIM.EDU', '+654651384','MASTER', to_date('2019-10-01','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00009', 'D0009', 'E4561216@U.SIM.EDU', '+656451231','MASTER', to_date('2021-04-15','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00010', 'P0001', 'E4651354@U.SIM.EDU', '+8615685621577','MASTER', to_date('2021-10-01','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00011', 'P0002', 'E1328423@U.SIM.EDU', '+657894651','MASTER', to_date('2022-07-15','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00012', 'P0003', 'E5498432@U.SIM.EDU', '+8615465131545','MASTER', to_date('2020-02-12','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00013', 'P0004', 'E9874561@U.SIM.EDU', '+8619486518461','MASTER', to_date('2020-03-29','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00014', 'P0005', 'E9874652@U.SIM.EDU', '+8619451238131','MASTER', to_date('2017-06-20','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00015', 'P0006', 'E8946511@U.SIM.EDU', '+8615465131545','MASTER', to_date('2019-10-10','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00016', 'P0007', 'E9841235@U.SIM.EDU', '+654165321','MASTER', to_date('2020-10-28','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00017', 'M0001', 'E6452315@U.SIM.EDU', '+654651654','MASTER', to_date('2019-10-15','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00018', 'M0002', 'E7894653@U.SIM.EDU', '+657984612','MASTER', to_date('2018-08-20','yyyy-mm-dd'));
insert into HR_PERSON_DETAILS (ID, EMPLOYEE_ID, EMAIL, TELEPHONE, EDUCATION_BG, HIREDATE ) values ('H00019', 'M0003', 'E9846515@U.SIM.EDU', '+657413562','MASTER', to_date('2021-02-22','yyyy-mm-dd'));
