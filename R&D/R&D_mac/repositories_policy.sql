GRANT EXECUTE ON sa_components TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_label_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_policy_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_audit_admin TO cs5322 WITH GRANT OPTION;

GRANT LBAC_DBA TO cs5322;
GRANT EXECUTE ON sa_sysdba TO cs5322;
GRANT EXECUTE ON to_lbac_data_label TO cs5322;

GRANT CONNECT, SDE_BE_1 TO D0001 IDENTIFIED BY password;
GRANT CONNECT, SDE_BE_2 TO D0002 IDENTIFIED BY password;
GRANT CONNECT, SDE_BE_3 TO D0003 IDENTIFIED BY password;
GRANT CONNECT, SDE_FE_1 TO D0004 IDENTIFIED BY password;
GRANT CONNECT, SDE_FE_2 TO D0005 IDENTIFIED BY password;
GRANT CONNECT, SDE_FE_3 TO D0006 IDENTIFIED BY password;
GRANT CONNECT, SDE_TE_1 TO D0007 IDENTIFIED BY password;
GRANT CONNECT, SDE_TE_2 TO D0008 IDENTIFIED BY password;
GRANT CONNECT, SDE_TE_3 TO D0009 IDENTIFIED BY password;

BEGIN
  SA_SYSDBA.DROP_POLICY
(
    policy_name  => 'REP_POL',
    drop_column  => TRUE);
END;
/


BEGIN
 SA_SYSDBA.CREATE_POLICY
(
  policy_name      => 'REP_POL',
  column_name      => 'REP_OLS_COL');
END;
/

EXEC SA_SYSDBA.ENABLE_POLICY ('REP_POL');

BEGIN
   SA_COMPONENTS.CREATE_LEVEL
(
      policy_name => 'REP_POL',
      level_num   => 3000,
      short_name  => 'HS',
      long_name   => 'HIGHLY_SENSITIVE');

   SA_COMPONENTS.CREATE_LEVEL
(
      policy_name => 'REP_POL',
      level_num   => 2500,
      short_name  => 'S',
      long_name   => 'SENSITIVE');

    SA_COMPONENTS.CREATE_LEVEL
(
      policy_name => 'REP_POL',
      level_num   => 2000,
      short_name  => 'PS',
      long_name   => 'PARTIALLY_SENSITIVE');

   SA_COMPONENTS.CREATE_LEVEL
(
      policy_name => 'REP_POL',
      level_num   => 1500,
      short_name  => 'IS',
      long_name   => 'INSENSITIVE');
END;
/


BEGIN
    SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'REP_POL',
      user_name    => 'D0001',
      max_level    => 'HS',
      min_level    => 'IS');
   SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'REP_POL',
      user_name    => 'D0002',
      max_level    => 'S',
      min_level    => 'IS');
       SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'REP_POL',
      user_name    => 'D0003',
      max_level    => 'PS',
      min_level    => 'IS');
    SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'REP_POL',
      user_name    => 'D0004',
      max_level    => 'HS',
      min_level    => 'IS');
   SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'REP_POL',
      user_name    => 'D0005',
      max_level    => 'S',
      min_level    => 'IS');
       SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'REP_POL',
      user_name    => 'D0006',
      max_level    => 'PS',
      min_level    => 'IS');
    SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'REP_POL',
      user_name    => 'D0007',
      max_level    => 'HS',
      min_level    => 'IS');
   SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'REP_POL',
      user_name    => 'D0008',
      max_level    => 'S',
      min_level    => 'IS');
       SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'REP_POL',
      user_name    => 'D0009',
      max_level    => 'PS',
      min_level    => 'IS');
END;

BEGIN
  SA_POLICY_ADMIN.APPLY_TABLE_POLICY
(
    policy_name    => 'REP_POL',
    schema_name    => 'CS5322',
    table_name     => 'REPOSITORIES',
    table_options  => 'READ_CONTROL');
END;
/

BEGIN
   SA_POLICY_ADMIN.ENABLE_TABLE_POLICY
(
      policy_name => 'REP_POL',
      schema_name => 'CS5322',
      table_name  => 'REPOSITORIES');
END;
/

BEGIN
   SA_USER_ADMIN.SET_USER_PRIVS
(
      policy_name => 'REP_POL',
      user_name   => 'CS5322',
      privileges  => 'FULL');
END;
/

UPDATE cs5322.REPOSITORIES
SET ASH_OLS_COL = CHAR_TO_LABEL('REP_POL', 'HS')
WHERE ACCESS_LEVEL = 'p0';

UPDATE cs5322.REPOSITORIES
SET ASH_OLS_COL = CHAR_TO_LABEL('REP_POL', 'S')
WHERE DEPARTMENT = 'p1';

UPDATE cs5322.REPOSITORIES
SET ASH_OLS_COL = CHAR_TO_LABEL('REP_POL', 'PS')
WHERE DEPARTMENT = 'p2';

UPDATE cs5322.REPOSITORIES
SET ASH_OLS_COL = CHAR_TO_LABEL('REP_POL', 'IS')
WHERE DEPARTMENT = 'p3';




