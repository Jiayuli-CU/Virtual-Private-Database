GRANT EXECUTE ON sa_components TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_label_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_policy_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_audit_admin  TO cs5322 WITH GRANT OPTION;

GRANT LBAC_DBA TO cs5322;
GRANT EXECUTE ON sa_sysdba TO cs5322;
GRANT EXECUTE ON to_lbac_data_label TO cs5322;




CREATE ROLE PROJECT_MANAGER;
GRANT SELECT, UPDATE(DESCRIPTION, STATUS) ON CS5322.projects TO PROJECT_MANAGER;
GRANT SELECT ON CS5322.projects TO DATA_SCIENTIST;

GRANT CONNECT, PROJECT_MANAGER TO pmh IDENTIFIED BY password;
GRANT CONNECT, PROJECT_MANAGER TO pm IDENTIFIED BY password;



BEGIN
  SA_SYSDBA.DROP_POLICY ( 
    policy_name  => 'PROJECT_POL',
    drop_column  => TRUE);
END;
/


BEGIN
 SA_SYSDBA.CREATE_POLICY (
  policy_name      => 'PROJECT_POL',
  column_name      => 'PROJ_OLS_COL');
END;
/

EXEC SA_SYSDBA.ENABLE_POLICY ('PROJECT_POL');


BEGIN
   SA_COMPONENTS.CREATE_LEVEL (
      policy_name => 'PROJECT_POL',
      level_num   => 3000,
      short_name  => 'HS',
      long_name   => 'HIGHLY_SENSITIVE');

   SA_COMPONENTS.CREATE_LEVEL (
      policy_name => 'PROJECT_POL',
      level_num   => 2000,
      short_name  => 'S',
      long_name   => 'SENSITIVE');

   SA_COMPONENTS.CREATE_LEVEL (
      policy_name => 'PROJECT_POL',
      level_num   => 1000,
      short_name  => 'C',
      long_name   => 'CONFIDENTIAL');
END;
/

BEGIN
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'PROJECT_POL',
      user_name    => 'PMH', 
      max_level    => 'HS',
      min_level    => 'S');
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'PROJECT_POL',
      user_name    => 'PM', 
      max_level    => 'S',
      min_level    => 'S');
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'PROJECT_POL',
      user_name    => 'ds', 
      max_level    => 'HS',
      min_level    => 'S');
END;
/


BEGIN
  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name      => 'PROJECT_POL',
    long_name        => 'PROJ',
    short_name       => 'PROJ',
    comp_num         =>  1100);

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name      => 'PROJECT_POL',
    long_name        => 'OTHER',
    short_name       => 'OT',
    comp_num         =>  2100);
END;
/


BEGIN
   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'PROJECT_POL',
      label_tag    => 1000,
      label_value  => 'C:PROJ:', -- SENSITIVE level for the HR compartment
      data_label   => TRUE);

   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'PROJECT_POL',
      label_tag    => 1100,
      label_value  => 'S:PROJ:', -- SENSITIVE level for the HR compartment
      data_label   => TRUE);

   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'PROJECT_POL',
      label_tag    => 1200,
      label_value  => 'HS:PROJ:', -- HIGHLY_SENSITIVE level for the HR compartment
      data_label   => TRUE);

   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'PROJECT_POL',
      label_tag    => 1300,
      label_value  => 'HS:OT:', --HIGHLY_SENSITIVE level for the LEG compartment
      data_label   => TRUE);

END;
/

BEGIN
   SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'PROJECT_POL',
      user_name      => 'pm', 
      max_read_label => 'S:PROJ:');

   SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'PROJECT_POL',
      user_name      => 'pmh', 
      max_read_label => 'HS:PROJ,OT:');

   SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'PROJECT_POL',
      user_name      => 'ds', 
      max_read_label => 'HS:OT:');
END;
/




BEGIN
  SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'PROJECT_POL',
    schema_name    => 'CS5322', 
    table_name     => 'projects',
    table_options  => 'READ_CONTROL');
END;
/

BEGIN
   SA_POLICY_ADMIN.ENABLE_TABLE_POLICY (
      policy_name => 'PROJECT_POL',
      schema_name => 'CS5322',
      table_name  => 'projects');
END;
/

BEGIN
   SA_USER_ADMIN.SET_USER_PRIVS (
      policy_name => 'PROJECT_POL',
      user_name   => 'CS5322',
      privileges  => 'FULL');
END;
/

UPDATE cs5322.projects SET PROJ_OLS_COL = CHAR_TO_LABEL('PROJECT_POL','S:PROJ') WHERE STATUS in ('ongoing', 'finished');

UPDATE cs5322.projects SET PROJ_OLS_COL = CHAR_TO_LABEL('PROJECT_POL','HS:PROJ') WHERE STATUS in ('planned');

UPDATE cs5322.projects SET PROJ_OLS_COL = CHAR_TO_LABEL('PROJECT_POL','HS:OT') WHERE special = 'true';
