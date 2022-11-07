GRANT EXECUTE ON sa_components TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_label_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_policy_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_audit_admin  TO cs5322 WITH GRANT OPTION;

GRANT LBAC_DBA TO cs5322;
GRANT EXECUTE ON sa_sysdba TO cs5322;
GRANT EXECUTE ON to_lbac_data_label TO cs5322;




CREATE ROLE ACTIVITY_OPERATION;
GRANT SELECT, UPDATE(STATUS) ON CS5322.EVENT_PLANNING TO ACTIVITY_OPERATION;

GRANT CONNECT, ACTIVITY_OPERATION TO ac IDENTIFIED BY password;
GRANT CONNECT, ACTIVITY_OPERATION TO acm IDENTIFIED BY password;



BEGIN
  SA_SYSDBA.DROP_POLICY ( 
    policy_name  => 'AC_POL',
    drop_column  => TRUE);
END;
/


BEGIN
 SA_SYSDBA.CREATE_POLICY (
  policy_name      => 'AC_POL',
  column_name      => 'AC_OLS_COL');
END;
/

EXEC SA_SYSDBA.ENABLE_POLICY ('AC_POL');


BEGIN
   SA_COMPONENTS.CREATE_LEVEL (
      policy_name => 'AC_POL',
      level_num   => 3000,
      short_name  => 'HS',
      long_name   => 'HIGHLY_SENSITIVE');

   SA_COMPONENTS.CREATE_LEVEL (
      policy_name => 'AC_POL',
      level_num   => 2000,
      short_name  => 'S',
      long_name   => 'SENSITIVE');
END;
/

BEGIN
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'AC_POL',
      user_name    => 'acm', 
      max_level    => 'HS',
      min_level    => 'S');
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'AC_POL',
      user_name    => 'ac', 
      max_level    => 'S',
      min_level    => 'S');
END;
/



BEGIN
   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'AC_POL',
      label_tag    => 1152,
      label_value  => 'S',
      data_label   => TRUE);

   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'AC_POL',
      label_tag    => 1252,
      label_value  => 'HS',
      data_label   => TRUE);
END;
/

BEGIN
   SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'AC_POL',
      user_name      => 'ac', 
      max_read_label => 'S');

   SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'AC_POL',
      user_name      => 'acm', 
      max_read_label => 'HS');
END;
/




BEGIN
  SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'AC_POL',
    schema_name    => 'CS5322', 
    table_name     => 'EVENT_PLANNING',
    table_options  => 'READ_CONTROL');
END;
/

BEGIN
   SA_POLICY_ADMIN.ENABLE_TABLE_POLICY (
      policy_name => 'AC_POL',
      schema_name => 'CS5322',
      table_name  => 'EVENT_PLANNING');
END;
/

BEGIN
   SA_USER_ADMIN.SET_USER_PRIVS (
      policy_name => 'AC_POL',
      user_name   => 'CS5322',
      privileges  => 'FULL');
END;
/

UPDATE cs5322.EVENT_PLANNING SET AC_OLS_COL = CHAR_TO_LABEL('AC_POL','S') WHERE STATUS in ('ongoing');

UPDATE cs5322.EVENT_PLANNING SET AC_OLS_COL = CHAR_TO_LABEL('AC_POL','HS') WHERE STATUS in ('completed');