GRANT EXECUTE ON sa_components TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_label_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_policy_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_audit_admin  TO cs5322 WITH GRANT OPTION;

GRANT LBAC_DBA TO cs5322;
GRANT EXECUTE ON sa_sysdba TO cs5322;
GRANT EXECUTE ON to_lbac_data_label TO cs5322;




CREATE ROLE CONTENTS_OPERATION;
GRANT SELECT, UPDATE(STATUS) ON CS5322.PROJECT_COPYWRITING TO CONTENTS_OPERATION;

GRANT CONNECT, CONTENTS_OPERATION TO ct_traditional IDENTIFIED BY password;
GRANT CONNECT, CONTENTS_OPERATION TO ct_new IDENTIFIED BY password;
GRANT CONNECT, CONTENTS_OPERATION TO ctm IDENTIFIED BY password;



BEGIN
  SA_SYSDBA.DROP_POLICY ( 
    policy_name  => 'CT_POL',
    drop_column  => TRUE);
END;
/


BEGIN
 SA_SYSDBA.CREATE_POLICY (
  policy_name      => 'CT_POL',
  column_name      => 'CT_OLS_COL');
END;
/

EXEC SA_SYSDBA.ENABLE_POLICY ('CT_POL');


BEGIN
   SA_COMPONENTS.CREATE_LEVEL (
      policy_name => 'CT_POL',
      level_num   => 3000,
      short_name  => 'HS',
      long_name   => 'HIGHLY_SENSITIVE');

   SA_COMPONENTS.CREATE_LEVEL (
      policy_name => 'CT_POL',
      level_num   => 2000,
      short_name  => 'S',
      long_name   => 'SENSITIVE');
END;
/

BEGIN
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'CT_POL',
      user_name    => 'ctm', 
      max_level    => 'HS',
      min_level    => 'S');
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'CT_POLL',
      user_name    => 'ct_traditional', 
      max_level    => 'S',
      min_level    => 'S');
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'CT_POL',
      user_name    => 'ct_new', 
      max_level    => 'S',
      min_level    => 'S');
END;
/


BEGIN
  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name      => 'CT_POL',
    long_name        => 'TRADITIONAL TEAM',
    short_name       => 'TRA',
    comp_num         =>  1100);

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name      => 'CT_POL',
    long_name        => 'NEW MEDIA TEAM',
    short_name       => 'NEW',
    comp_num         =>  2100);
END;
/


BEGIN
   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'CT_POL',
      label_tag    => 1150,
      label_value  => 'S:NEW:',
      data_label   => TRUE);

   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'CT_POL',
      label_tag    => 1250,
      label_value  => 'HS:NEW:',
      data_label   => TRUE);

   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'CT_POL',
      label_tag    => 1350,
      label_value  => 'S:TRA:',
      data_label   => TRUE);
   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'CT_POL',
      label_tag    => 1450,
      label_value  => 'HS:TRA:',
      data_label   => TRUE);
END;
/

BEGIN
   SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'CT_POL',
      user_name      => 'ct_new', 
      max_read_label => 'S:NEW:');

   SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'CT_POL',
      user_name      => 'ctm', 
      max_read_label => 'HS:NEW,TRA:');

   SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'CT_POL',
      user_name      => 'ct_traditional', 
      max_read_label => 'S:TRA:');
END;
/




BEGIN
  SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'CT_POL',
    schema_name    => 'CS5322', 
    table_name     => 'PROJECT_COPYWRITING',
    table_options  => 'READ_CONTROL');
END;
/

BEGIN
   SA_POLICY_ADMIN.ENABLE_TABLE_POLICY (
      policy_name => 'CT_POL',
      schema_name => 'CS5322',
      table_name  => 'PROJECT_COPYWRITING');
END;
/

BEGIN
   SA_USER_ADMIN.SET_USER_PRIVS (
      policy_name => 'CT_POL',
      user_name   => 'CS5322',
      privileges  => 'FULL');
END;
/

UPDATE cs5322.PROJECT_COPYWRITING SET CT_OLS_COL = CHAR_TO_LABEL('CT_POL','S:NEW') WHERE GROUP_TYPE in ('new');

UPDATE cs5322.PROJECT_COPYWRITING SET CT_OLS_COL = CHAR_TO_LABEL('CT_POL','S:TRA') WHERE GROUP_TYPE in ('traditional');