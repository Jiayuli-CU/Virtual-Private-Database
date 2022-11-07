-- -- connect to system with pwd cs5322database --
-- GRANT EXECUTE ON sa_components TO cs5322 WITH GRANT OPTION;
-- GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
-- GRANT EXECUTE ON sa_label_admin TO cs5322 WITH GRANT OPTION;
-- GRANT EXECUTE ON sa_policy_admin TO cs5322 WITH GRANT OPTION;
-- GRANT EXECUTE ON sa_audit_admin TO cs5322 WITH GRANT OPTION;
--
-- GRANT LBAC_DBA TO cs5322;
-- GRANT EXECUTE ON sa_sysdba TO cs5322;
-- GRANT EXECUTE ON to_lbac_data_label TO cs5322;

-- connect to cs5322 with pwd password --

GRANT SELECT ON projects TO SDE_FE_3;
GRANT SELECT ON projects TO SDE_FE_2;
GRANT SELECT ON projects TO SDE_FE_1;
GRANT SELECT ON projects TO SDE_BE_3;
GRANT SELECT ON projects TO SDE_BE_2;
GRANT SELECT ON projects TO SDE_BE_1;
GRANT SELECT ON projects TO SDE_TE_3;
GRANT SELECT ON projects TO SDE_TE_2;
GRANT SELECT ON projects TO SDE_TE_1;

BEGIN
  SA_SYSDBA.DROP_POLICY
(
    policy_name  => 'PRJC_POL',
    drop_column  => TRUE);
END;
/


BEGIN
 SA_SYSDBA.CREATE_POLICY
(
  policy_name      => 'PRJC_POL',
  column_name      => 'PRJC_OLS_COL');
END;
/

BEGIN
    SA_SYSDBA.ENABLE_POLICY ('PRJC_POL');
END;
/

BEGIN
   SA_COMPONENTS.CREATE_LEVEL
(
      policy_name => 'PRJC_POL',
      level_num   => 3012,
      short_name  => 'HS',
      long_name   => 'HIGHLY SENSITIVE');

    SA_COMPONENTS.CREATE_LEVEL
(
      policy_name => 'PRJC_POL',
      level_num   => 2012,
      short_name  => 'S',
      long_name   => 'SENSITIVE');

END;
/

BEGIN
    SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'PRJC_POL',
      user_name    => 'D0001',
      max_level    => 'S',
      min_level    => 'S');
   SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'PRJC_POL',
      user_name    => 'D0002',
      max_level    => 'HS',
      min_level    => 'S');
       SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'PRJC_POL',
      user_name    => 'D0003',
      max_level    => 'HS',
      min_level    => 'S');
    SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'PRJC_POL',
      user_name    => 'D0004',
      max_level    => 'S',
      min_level    => 'S');
   SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'PRJC_POL',
      user_name    => 'D0005',
      max_level    => 'HS',
      min_level    => 'S');
       SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'PRJC_POL',
      user_name    => 'D0006',
      max_level    => 'HS',
      min_level    => 'S');
    SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'PRJC_POL',
      user_name    => 'D0007',
      max_level    => 'S',
      min_level    => 'S');
   SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'PRJC_POL',
      user_name    => 'D0008',
      max_level    => 'HS',
      min_level    => 'S');
       SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'PRJC_POL',
      user_name    => 'D0009',
      max_level    => 'HS',
      min_level    => 'S');
END;

BEGIN
  SA_POLICY_ADMIN.APPLY_TABLE_POLICY
(
    policy_name    => 'PRJC_POL',
    schema_name    => 'CS5322',
    table_name     => 'PROJECTS',
    table_options  => 'READ_CONTROL');
END;
/

BEGIN
   SA_POLICY_ADMIN.ENABLE_TABLE_POLICY
(
      policy_name => 'PRJC_POL',
      schema_name => 'CS5322',
      table_name  => 'PROJECTS');
END;
/

BEGIN
   SA_USER_ADMIN.SET_USER_PRIVS
(
      policy_name => 'PRJC_POL',
      user_name   => 'CS5322',
      privileges  => 'FULL');
END;
/

UPDATE cs5322.PROJECTS
SET PROJ_OLS_COL = CHAR_TO_LABEL('PRJC_POL', 'S');

UPDATE cs5322.PROJECTS
SET PROJ_OLS_COL = CHAR_TO_LABEL('PRJC_POL', 'HS')
WHERE STATUS = 'planned';




