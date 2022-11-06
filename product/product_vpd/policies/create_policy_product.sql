--- employees can only select his or her own data from Employee table.
CREATE OR REPLACE FUNCTION check_employee(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS condition VARCHAR2 (200); 
BEGIN
  IF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'SYSTEM') THEN
    return '';
  ELSE 
	  condition := 'ID = SYS_CONTEXT(''USERENV'', ''SESSION_USER'')';
  END IF;
	RETURN condition;
END check_employee;


BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'system',
    object_name => 'employees',
    policy_name => 'check_employee_policy',
    policy_function => 'check_employee',
    statement_types => 'SELECT, UPDATE',
    update_check => true);
END;






--- ad manager can only update the advertisement he or she is working on.
CREATE OR REPLACE  FUNCTION check_ad(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS condition VARCHAR2 (200); 
BEGIN
  IF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'SYSTEM') THEN
    return '';
  ELSE
	condition := 'manager_id = SYS_CONTEXT(''USERENV'', ''SESSION_USER'')';
  END IF;
	RETURN condition;
END check_ad;


BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'system',
    object_name => 'advertisements',
    policy_name => 'check_ad_policy',
    policy_function => 'check_ad',
    statement_types => 'UPDATE, DELETE');
END;

--- pr manager can only update the advertisement he or she is working on.
CREATE OR REPLACE FUNCTION check_partnership(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS condition VARCHAR2 (200); 
BEGIN
  IF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'SYSTEM') THEN
    return '';
  ELSE
	condition := 'manager_id = SYS_CONTEXT(''USERENV'',''SESSION_USER'')';
  END IF;
	RETURN condition;
END check_partnership;

BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'system',
    object_name => 'partnerships',
    policy_name => 'check_partnership_policy',
    policy_function => 'check_partnership',
    statement_types => 'UPDATE, DELETE');
END;


--- projects can only be updated by its pm
CREATE OR REPLACE FUNCTION check_project_update(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS condition VARCHAR2 (200); 
BEGIN
  IF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'SYSTEM') THEN
    return '';
  ELSE
	condition := 'manager_id = SYS_CONTEXT(''USERENV'',''SESSION_USER'')';
  END IF;
	RETURN condition;
END check_project_update;

BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'system',
    object_name => 'projects',
    policy_name => 'check_project_update_policy',
    policy_function => 'check_project_update',
    statement_types => 'UPDATE, DELETE');
END;



