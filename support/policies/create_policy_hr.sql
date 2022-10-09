--- hr_person_details 每个员工都能看自己的个人信息，hr可以看所有人的信息
create or replace NONEDITIONABLE FUNCTION check_hr_person_details(
	v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS condition VARCHAR2(200);
BEGIN
   IF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'SYSTEM') THEN
      return '';
   ELSIF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'HR10001') THEN
      return '';
   ELSIF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'HR10002') THEN
      return '';
   ELSE 
   	 condition :='EMPLOYEE_ID=SYS_CONTEXT(''USERENV'', ''SESSION_USER'')';
   END IF;
   	 RETURN condition;
END check_hr_person_details;

BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'system',
    object_name => 'HR_PERSON_DETAILS',
    policy_name => 'check_hr_person_details_policy',
    policy_function => 'check_hr_person_details',
    statement_types => 'SELECT');
END;





--- hr_attendance 每个员工都能看自己的个人信息，hr可以看所有人的信息
create or replace NONEDITIONABLE FUNCTION check_hr_attendance(
	v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS condition VARCHAR2(200);
BEGIN
   IF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'SYSTEM') THEN
      return '';
   ELSIF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'HR10001') THEN
      return '';
   ELSIF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'HR10002') THEN
      return '';
   ELSE 
   	 condition :='EMPLOYEE_ID=SYS_CONTEXT(''USERENV'', ''SESSION_USER'')';
   END IF;
   	 RETURN condition;
END check_hr_attendance;

BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'system',
    object_name => 'HR_ATTENDANCE',
    policy_name => 'check_hr_attendance_policy',
    policy_function => 'check_hr_attendance',
    statement_types => 'SELECT,UPDATE,DELETE');
END;



--- hr_leave 每个员工都能看自己的个人信息，hr可以看所有人的信息
create or replace NONEDITIONABLE FUNCTION check_hr_leave(
	v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS condition VARCHAR2(200);
BEGIN
   IF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'SYSTEM') THEN
      return '';
   ELSIF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'HR10001') THEN
      return '';
   ELSIF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'HR10002') THEN
      return '';
   ELSE 
   	 condition :='EMPLOYEE_ID=SYS_CONTEXT(''USERENV'', ''SESSION_USER'')';
   END IF;
   	 RETURN condition;
END check_hr_leave;

BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'system',
    object_name => 'HR_LEAVE',
    policy_name => 'check_hr_leave_policy',
    policy_function => 'check_hr_leave',
    statement_types => 'SELECT,UPDATE,DELETE');
END;



--- accounting_salary_history 每个员工都能看自己的个人信息，财务部人员可以看所有人的信息
create or replace NONEDITIONABLE FUNCTION check_accounting_salary_history(
	v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS condition VARCHAR2(200);
BEGIN
   IF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'SYSTEM') THEN
      return '';
   ELSIF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'ACC10001') THEN
      return '';
   ELSIF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'ACC10002') THEN
      return '';
   ELSE 
   	 condition :='EMPLOYEE_ID=SYS_CONTEXT(''USERENV'', ''SESSION_USER'')';
   END IF;
   	 RETURN condition;
END check_accounting_salary_history;

BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'system',
    object_name => 'ACCOUNTING_SALARY_HISTORY',
    policy_name => 'check_accounting_salary_history_policy',
    policy_function => 'check_accounting_salary_history',
    statement_types => 'SELECT,UPDATE,DELETE');
END;




--- administration_conference 每个员工都能看自己的会议信息，行政部人员可以看所有人的信息
create or replace NONEDITIONABLE FUNCTION check_administration_conference(
	v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS condition VARCHAR2(200);
BEGIN
   IF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'SYSTEM') THEN
      return '';
   ELSIF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'OP10001') THEN
      return '';
   ELSIF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'OPP10002') THEN
      return '';
   ELSE 
   	 condition :='APPLY_PERSON=SYS_CONTEXT(''USERENV'', ''SESSION_USER'')';
   END IF;
   	 RETURN condition;
END check_administration_conference;

BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'system',
    object_name => 'ADMINISTRATION_CONFERENCE',
    policy_name => 'check_administration_conference_policy',
    policy_function => 'check_administration_conference',
    statement_types => 'SELECT,UPDATE,DELETE');
END;


--- administration_food 每个员工都能看当天的的餐饮信息，行政部人员可以看所有餐饮信息
create or replace NONEDITIONABLE FUNCTION check_administration_food(
	v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS condition VARCHAR2(200);
BEGIN
   IF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'SYSTEM') THEN
      return '';
   ELSIF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'OP10001') THEN
      return '';
   ELSIF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'OP10002') THEN
      return '';
   ELSE 
 	 condition :='FOOD_TIME<=current_date';
   END IF;
   	 RETURN condition;
END check_administration_food;

BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'system',
    object_name => 'ADMINISTRATION_FOOD',
    policy_name => 'check_administration_food_policy',
    policy_function => 'check_administration_food',
    statement_types => 'SELECT,UPDATE,DELETE');
END;
