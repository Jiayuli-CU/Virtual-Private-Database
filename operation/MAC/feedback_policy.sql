GRANT EXECUTE ON sa_components TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_label_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_policy_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_audit_admin  TO cs5322 WITH GRANT OPTION;

GRANT LBAC_DBA TO cs5322;
GRANT EXECUTE ON sa_sysdba TO cs5322;
GRANT EXECUTE ON to_lbac_data_label TO cs5322;


CREATE ROLE FEEDBACK_OPERATION;
GRANT SELECT, UPDATE(STATUS) ON CS5322.PROJECT_FEEDBACK TO FEEDBACK_OPERATION;
GRANT SELECT ON CS5322.PROJECT_FEEDBACK TO SDE_BE_3;
GRANT SELECT ON CS5322.PROJECT_FEEDBACK TO SDE_TE_3;
GRANT SELECT ON CS5322.PROJECT_FEEDBACK TO SDE_FE_3;
GRANT SELECT ON CS5322.PROJECT_FEEDBACK TO SDE_BE_2;
GRANT SELECT ON CS5322.PROJECT_FEEDBACK TO SDE_TE_2;
GRANT SELECT ON CS5322.PROJECT_FEEDBACK TO SDE_FE_2;
GRANT SELECT ON CS5322.PROJECT_FEEDBACK TO SDE_BE_1;
GRANT SELECT ON CS5322.PROJECT_FEEDBACK TO SDE_TE_1;
GRANT SELECT ON CS5322.PROJECT_FEEDBACK TO SDE_FE_1;

GRANT CONNECT, FEEDBACK_OPERATION TO fd IDENTIFIED BY password;
GRANT CONNECT, FEEDBACK_OPERATION TO fdm IDENTIFIED BY password;



BEGIN
  SA_SYSDBA.DROP_POLICY ( 
    policy_name  => 'FD_POL',
    drop_column  => TRUE);
END;
/


BEGIN
 SA_SYSDBA.CREATE_POLICY (
  policy_name      => 'FD_POL',
  column_name      => 'FD_OLS_COL');
END;
/

EXEC SA_SYSDBA.ENABLE_POLICY ('FD_POL');


BEGIN
   SA_COMPONENTS.CREATE_LEVEL (
      policy_name => 'FD_POL',
      level_num   => 3000,
      short_name  => 'HS',
      long_name   => 'HIGHLY_SENSITIVE');

   SA_COMPONENTS.CREATE_LEVEL (
      policy_name => 'FD_POL',
      level_num   => 2000,
      short_name  => 'S',
      long_name   => 'SENSITIVE');
END;
/

BEGIN
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'FD_POL',
      user_name    => 'fdm', 
      max_level    => 'HS',
      min_level    => 'S');
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'FD_POL',
      user_name    => 'fd', 
      max_level    => 'S',
      min_level    => 'S');
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'FD_POL',
      user_name    => 'D0001', 
      max_level    => 'HS',
      min_level    => 'S');
    SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'FD_POL',
      user_name    => 'D0002', 
      max_level    => 'HS',
      min_level    => 'S');
    SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'FD_POL',
      user_name    => 'D0003', 
      max_level    => 'HS',
      min_level    => 'S');
    SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'FD_POL',
      user_name    => 'D0004', 
      max_level    => 'HS',
      min_level    => 'S');
    SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'FD_POL',
      user_name    => 'D0005', 
      max_level    => 'HS',
      min_level    => 'S');
END;
/


BEGIN
  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name      => 'FD_POL',
    long_name        => 'FEEDBACK',
    short_name       => 'FD',
    comp_num         =>  1100);

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name      => 'FD_POL',
    long_name        => 'R_D',
    short_name       => 'RD',
    comp_num         =>  2100);
END;
/


BEGIN
   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'FD_POL',
      label_tag    => 1150,
      label_value  => 'S:FD:',
      data_label   => TRUE);

   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'FD_POL',
      label_tag    => 1250,
      label_value  => 'HS:FD:',
      data_label   => TRUE);

   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'FD_POL',
      label_tag    => 1350,
      label_value  => 'HS:RD:',
      data_label   => TRUE);

END;
/

BEGIN
   SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'FD_POL',
      user_name      => 'fd', 
      max_read_label => 'S:FD:');

   SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'FD_POL',
      user_name      => 'fdm', 
      max_read_label => 'HS:FD,RD:');

   SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'FD_POL',
      user_name      => 'D0001', 
      max_read_label => 'HS:RD:');
    SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'FD_POL',
      user_name      => 'D0002', 
      max_read_label => 'HS:RD:');
    SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'FD_POL',
      user_name      => 'D0003', 
      max_read_label => 'HS:RD:');
    SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'FD_POL',
      user_name      => 'D0004', 
      max_read_label => 'HS:RD:');
    SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'FD_POL',
      user_name      => 'D0005', 
      max_read_label => 'HS:RD:');
END;
/




BEGIN
  SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'FD_POL',
    schema_name    => 'CS5322', 
    table_name     => 'PROJECT_FEEDBACK',
    table_options  => 'READ_CONTROL');
END;
/

BEGIN
   SA_POLICY_ADMIN.ENABLE_TABLE_POLICY (
      policy_name => 'FD_POL',
      schema_name => 'CS5322',
      table_name  => 'PROJECT_FEEDBACK');
END;
/

BEGIN
   SA_USER_ADMIN.SET_USER_PRIVS (
      policy_name => 'FD_POL',
      user_name   => 'CS5322',
      privileges  => 'FULL');
END;
/

UPDATE cs5322.PROJECT_FEEDBACK SET FD_OLS_COL = CHAR_TO_LABEL('FD_POL','S:FD') WHERE STATUS in ('ongoing');

UPDATE cs5322.PROJECT_FEEDBACK SET FD_OLS_COL = CHAR_TO_LABEL('FD_POL','HS:FD') WHERE STATUS in ('completed');

UPDATE cs5322.PROJECT_FEEDBACK SET FD_OLS_COL = CHAR_TO_LABEL('FD_POL','HS:RD') WHERE STATUS in ('waiting');