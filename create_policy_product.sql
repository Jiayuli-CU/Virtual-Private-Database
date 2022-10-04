--- employees can only select his or her own data from Employee table.
CREATE FUNCTION check_employee(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS condition VARCHAR2 (200); 
BEGIN
	condition := 'ID = SYS_CONTEXT("USERENV", "SESSION_USER")';
	RETURN condition;
END check_employee;


BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'system',
    object_name => 'employees',
    policy_name => 'check_employee_policy',
    policy_function => 'check_employee',
    statement_type => 'SELECT, UPDATE');
END;


--- ad manager can only update the advertisement he or she is working on.
CREATE FUNCTION check_ad(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS condition VARCHAR2 (200); 
BEGIN
	condition := 'manager_id = SYS_CONTEXT("USERENV", "SESSION_USER")';
	RETURN condition;
END check_ad;


BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'system',
    object_name => 'advertisement',
    policy_name => 'check_ad_policy',
    policy_function => 'check_ad',
    statement_type => 'UPDATE');
END;

--- pr manager can only update the advertisement he or she is working on.
CREATE FUNCTION check_partnership(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS condition VARCHAR2 (200); 
BEGIN
	condition := 'manager_id = SYS_CONTEXT("USERENV", "SESSION_USER")';
	RETURN condition;
END check_partnership;

BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'system',
    object_name => 'partnerships',
    policy_name => 'check_partnership_policy',
    policy_function => 'check_partnership',
    statement_type => 'UPDATE');
END;






