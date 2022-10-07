CREATE OR REPLACE  FUNCTION check_feedback(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS condition VARCHAR2 (200); 
BEGIN
  IF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'SYSTEM') THEN
    return '';
  ELSE
	condition := 'employee_id = SYS_CONTEXT(''USERENV'', ''SESSION_USER'')';
  END IF;
	  RETURN condition;
END check_feedback;

BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'system',
    object_name => 'project_feedback',
    policy_name => 'check_feedback_policy',
    policy_function => 'check_feedback',
    statement_types => 'UPDATE');
END;

CREATE OR REPLACE FUNCTION check_copywriting(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS condition VARCHAR2 (200); 
BEGIN
  IF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'SYSTEM') THEN
    return '';
  ELSE
	condition := 'employee_id = SYS_CONTEXT(''USERENV'',''SESSION_USER'')';
  END IF;
	  RETURN condition;
END check_copywriting;

BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'system',
    object_name => 'project_copywriting',
    policy_name => 'check_copywriting_policy',
    policy_function => 'check_copywriting',
    statement_types => 'UPDATE');
END;

CREATE OR REPLACE FUNCTION check_event_planning(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS condition VARCHAR2 (200); 
BEGIN
  IF (SYS_CONTEXT('USERENV', 'SESSION_USER') = 'SYSTEM') THEN
    return '';
  ELSE
	condition := 'employee_id = SYS_CONTEXT(''USERENV'',''SESSION_USER'')';
  END IF;
	RETURN condition;
END check_event_planning;

BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'system',
    object_name => 'event_planning',
    policy_name => 'check_event_planning_policy',
    policy_function => 'check_event_planning',
    statement_types => 'UPDATE');
END;
