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
    policy_function => 'check_employee');
END;




