GRANT EXECUTE ON sa_components TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_label_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_policy_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_audit_admin  TO cs5322 WITH GRANT OPTION;

GRANT LBAC_DBA TO cs5322;
GRANT EXECUTE ON sa_sysdba TO cs5322;
GRANT EXECUTE ON to_lbac_data_label TO cs5322;




CREATE ROLE PUBLIC_RELATION;
CREATE ROLE LAWYER;
GRANT SELECT, UPDATE(COUNTRY, LENGTH) ON CS5322.partnerships TO PUBLIC_RELATION;
GRANT SELECT ON CS5322.partnerships TO LAWYER;

GRANT CONNECT, PUBLIC_RELATION TO pr IDENTIFIED BY password;
GRANT CONNECT, PUBLIC_RELATION TO prm IDENTIFIED BY password;
GRANT CONNECT, LAWYER TO law IDENTIFIED BY password;



BEGIN
  SA_SYSDBA.DROP_POLICY ( 
    policy_name  => 'PR_POL',
    drop_column  => TRUE);
END;
/


BEGIN
 SA_SYSDBA.CREATE_POLICY (
  policy_name      => 'PR_POL',
  column_name      => 'PR_OLS_COL');
END;
/

EXEC SA_SYSDBA.ENABLE_POLICY ('PR_POL');


BEGIN
   SA_COMPONENTS.CREATE_LEVEL (
      policy_name => 'PR_POL',
      level_num   => 3000,
      short_name  => 'HS',
      long_name   => 'HIGHLY_SENSITIVE');

   SA_COMPONENTS.CREATE_LEVEL (
      policy_name => 'PR_POL',
      level_num   => 2000,
      short_name  => 'S',
      long_name   => 'SENSITIVE');
END;
/

BEGIN
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'PR_POL',
      user_name    => 'PRM', 
      max_level    => 'HS',
      min_level    => 'S');
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'PR_POL',
      user_name    => 'PR', 
      max_level    => 'S',
      min_level    => 'S');
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'PR_POL',
      user_name    => 'LAW', 
      max_level    => 'HS',
      min_level    => 'S');
END;
/


BEGIN
  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name      => 'PR_POL',
    long_name        => 'PR',
    short_name       => 'PR',
    comp_num         =>  1000);

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name      => 'PR_POL',
    long_name        => 'LAW',
    short_name       => 'LAW',
    comp_num         =>  2000);
END;
/


BEGIN
   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'PR_POL',
      label_tag    => 1100,
      label_value  => 'S:PR:', -- SENSITIVE level for the HR compartment
      data_label   => TRUE);

   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'PR_POL',
      label_tag    => 1200,
      label_value  => 'HS:PR:', -- HIGHLY_SENSITIVE level for the HR compartment
      data_label   => TRUE);

   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'PR_POL',
      label_tag    => 1300,
      label_value  => 'HS:LAW:', --HIGHLY_SENSITIVE level for the LEG compartment
      data_label   => TRUE);

END;
/

BEGIN
   SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'PR_POL',
      user_name      => 'pr', 
      max_read_label => 'S:PR:');

   SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'PR_POL',
      user_name      => 'prm', 
      max_read_label => 'HS:PR,LAW:');

   SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'PR_POL',
      user_name      => 'law', 
      max_read_label => 'HS:LAW:');
END;
/




BEGIN
  SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'PR_POL',
    schema_name    => 'CS5322', 
    table_name     => 'partnerships',
    table_options  => 'READ_CONTROL');
END;
/

BEGIN
   SA_POLICY_ADMIN.ENABLE_TABLE_POLICY (
      policy_name => 'PR_POL',
      schema_name => 'CS5322',
      table_name  => 'partnerships');
END;
/

BEGIN
   SA_USER_ADMIN.SET_USER_PRIVS (
      policy_name => 'PR_POL',
      user_name   => 'CS5322',
      privileges  => 'FULL');
END;
/

UPDATE cs5322.partnerships SET PR_OLS_COL = CHAR_TO_LABEL('PR_POL','S:PR') WHERE DISCLOSED = 'true';

UPDATE cs5322.partnerships SET PR_OLS_COL = CHAR_TO_LABEL('PR_POL','HS:PR, LAW') WHERE DISCLOSED = 'false';

UPDATE cs5322.partnerships SET PR_OLS_COL = CHAR_TO_LABEL('PR_POL','HS:LAW') WHERE SUING = 'true';
