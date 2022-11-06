GRANT EXECUTE ON sa_components TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_label_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_policy_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_audit_admin  TO cs5322 WITH GRANT OPTION;

GRANT LBAC_DBA TO cs5322;
GRANT EXECUTE ON sa_sysdba TO cs5322;
GRANT EXECUTE ON to_lbac_data_label TO cs5322;




CREATE ROLE DATA_SCIENTIST;
GRANT SELECT ON CS5322.Project_Users TO DATA_SCIENTIST;
GRANT UPDATE (tags) on CS5322.Project_Users TO DATA_SCIENTIST;
GRANT CONNECT, DATA_SCIENTIST TO ds IDENTIFIED BY password;
GRANT CONNECT, DATA_SCIENTIST TO dsm IDENTIFIED BY password;



BEGIN
  SA_SYSDBA.DROP_POLICY ( 
    policy_name  => 'PROJECT_USERS_POL',
    drop_column  => TRUE);
END;
/


BEGIN
 SA_SYSDBA.CREATE_POLICY (
  policy_name      => 'PROJECT_USERS_POL',
  column_name      => 'PU_OLS_COL');
END;
/

EXEC SA_SYSDBA.ENABLE_POLICY ('PROJECT_USERS_POL');


BEGIN
   SA_COMPONENTS.CREATE_LEVEL (
      policy_name => 'PROJECT_USERS_POL',
      level_num   => 3000,
      short_name  => 'HS',
      long_name   => 'HIGHLY_SENSITIVE');

   SA_COMPONENTS.CREATE_LEVEL (
      policy_name => 'PROJECT_USERS_POL',
      level_num   => 2000,
      short_name  => 'S',
      long_name   => 'SENSITIVE');
END;
/

BEGIN
   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'PROJECT_USERS_POL',
      label_tag    => 3100,
      label_value  => 'HS',
      data_label   => TRUE);

   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'PROJECT_USERS_POL',
      label_tag    => 2100,
      label_value  => 'S',
      data_label   => TRUE);
END;
/


BEGIN
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'PROJECT_USERS_POL',
      user_name    => 'DSM', 
      max_level    => 'HS',
      min_level    => 'S');

   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'PROJECT_USERS_POL',
      user_name    => 'DS', 
      max_level    => 'S',
      min_level    => 'S');
END;
/

BEGIN
  SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'PROJECT_USERS_POL',
    schema_name    => 'CS5322', 
    table_name     => 'PROJECT_USERS',
    table_options  => 'READ_CONTROL');
END;
/

BEGIN
   SA_POLICY_ADMIN.ENABLE_TABLE_POLICY (
      policy_name => 'PROJECT_USERS_POL',
      schema_name => 'CS5322',
      table_name  => 'PROJECT_USERS');
END;
/

BEGIN
   SA_USER_ADMIN.SET_USER_PRIVS (
      policy_name => 'PROJECT_USERS_POL',
      user_name   => 'cs5322',
      privileges  => 'READ');
END;
/

UPDATE project_users
SET    PU_OLS_COL = CHAR_TO_LABEL('PROJECT_USERS_POL','HS')
WHERE  confidential = 'true';

UPDATE project_users
SET    PU_OLS_COL = CHAR_TO_LABEL('PROJECT_USERS_POL','S')
WHERE  confidential = 'false';