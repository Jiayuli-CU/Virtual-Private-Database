GRANT EXECUTE ON sa_components TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_label_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_policy_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_audit_admin  TO cs5322 WITH GRANT OPTION;

GRANT LBAC_DBA TO cs5322;
GRANT EXECUTE ON sa_sysdba TO cs5322;
GRANT EXECUTE ON to_lbac_data_label TO cs5322;

CREATE ROLE FEEDBACK;
GRANT SELECT, UPDATE ON CS5322.PROJECT_FEEDBACK TO FEEDBACK;
GRANT CONNECT, FEEDBACK TO fd IDENTIFIED BY password;
GRANT CONNECT, FEEDBACK TO fdm IDENTIFIED BY password;

BEGIN
  SA_SYSDBA.DROP_POLICY ( 
    policy_name  => 'FDB_POL',
    drop_column  => TRUE);
END;
/

BEGIN
 SA_SYSDBA.CREATE_POLICY (
  policy_name      => 'FDB_POL',
  column_name      => 'FDB_OLS_COL');
END;
/


EXEC SA_SYSDBA.ENABLE_POLICY ('FDB_POL');

BEGIN
   SA_COMPONENTS.CREATE_LEVEL (
      policy_name => 'FDB_POL',
      level_num   => 3000,
      short_name  => 'HS',
      long_name   => 'HIGHLY_SENSITIVE');

   SA_COMPONENTS.CREATE_LEVEL (
      policy_name => 'FDB_POL',
      level_num   => 2000,
      short_name  => 'S',
      long_name   => 'SENSITIVE');
END;
/

BEGIN
   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'FDB_POL',
      label_tag    => 3200,
      label_value  => 'HS',
      data_label   => TRUE);

   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'FDB_POL',
      label_tag    => 2200,
      label_value  => 'S',
      data_label   => TRUE);
END;
/

BEGIN
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'FDB_POL',
      user_name    => 'FDM', 
      max_level    => 'HS',
      min_level    => 'S');

   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'FDB_POL',
      user_name    => 'FD', 
      max_level    => 'S',
      min_level    => 'S');
END;
/

BEGIN
  SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'FDB_POL',
    schema_name    => 'CS5322', 
    table_name     => 'PROJECT_FEEDBACK',
    table_options  => 'WRITE_CONTROL');
END;
/

BEGIN
   SA_POLICY_ADMIN.ENABLE_TABLE_POLICY (
      policy_name => 'FDB_POL',
      schema_name => 'CS5322',
      table_name  => 'PROJECT_FEEDBACK');
END;
/

BEGIN
   SA_USER_ADMIN.SET_USER_PRIVS (
      policy_name => 'FDB_POL',
      user_name   => 'CS5322',
      privileges  => 'FULL');
END;
/

UPDATE cs5322.PROJECT_FEEDBACK SET FDB_OLS_COL = CHAR_TO_LABEL('FDB_POL','HS');