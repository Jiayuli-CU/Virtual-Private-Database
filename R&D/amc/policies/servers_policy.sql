---- for servers
GRANT SELECT ON servers TO SDE_BE_3;
GRANT SELECT ON servers TO SDE_TE_3;
GRANT SELECT ON servers TO SDE_FE_3;
GRANT SELECT ON servers TO SDE_BE_2;
GRANT SELECT ON servers TO SDE_TE_2;
GRANT SELECT ON servers TO SDE_FE_2;
GRANT SELECT ON servers TO SDE_BE_1;
GRANT SELECT ON servers TO SDE_TE_1;
GRANT SELECT ON servers TO SDE_FE_1;

BEGIN
  SA_SYSDBA.DROP_POLICY
(
    policy_name  => 'SERVERS_POL',
    drop_column  => TRUE);
END;
/


BEGIN
 SA_SYSDBA.CREATE_POLICY
(
  policy_name      => 'SERVERS_POL',
  column_name      => 'SERVERS_OLS_COL');
END;
/

EXEC SA_SYSDBA.ENABLE_POLICY ('SERVERS_POL');

BEGIN
   SA_COMPONENTS.CREATE_LEVEL
(
      policy_name => 'SERVERS_POL',
      level_num   => 3002,
      short_name  => 'HS',
      long_name   => 'HIGHLY_SENSITIVE');

   SA_COMPONENTS.CREATE_LEVEL
(
      policy_name => 'SERVERS_POL',
      level_num   => 2502,
      short_name  => 'S',
      long_name   => 'SENSITIVE');

    SA_COMPONENTS.CREATE_LEVEL
(
      policy_name => 'SERVERS_POL',
      level_num   => 2002,
      short_name  => 'PS',
      long_name   => 'PARTIALLY_SENSITIVE');

   SA_COMPONENTS.CREATE_LEVEL
(
      policy_name => 'SERVERS_POL',
      level_num   => 1502,
      short_name  => 'IS',
      long_name   => 'INSENSITIVE');
END;
/


BEGIN
    SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'SERVERS_POL',
      user_name    => 'D0001',
      max_level    => 'PS',
      min_level    => 'IS');
   SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'SERVERS_POL',
      user_name    => 'D0002',
      max_level    => 'S',
      min_level    => 'IS');
       SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'SERVERS_POL',
      user_name    => 'D0003',
      max_level    => 'HS',
      min_level    => 'IS');
    SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'SERVERS_POL',
      user_name    => 'D0004',
      max_level    => 'PS',
      min_level    => 'IS');
   SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'SERVERS_POL',
      user_name    => 'D0005',
      max_level    => 'S',
      min_level    => 'IS');
       SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'SERVERS_POL',
      user_name    => 'D0006',
      max_level    => 'HS',
      min_level    => 'IS');
    SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'SERVERS_POL',
      user_name    => 'D0007',
      max_level    => 'PS',
      min_level    => 'IS');
   SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'SERVERS_POL',
      user_name    => 'D0008',
      max_level    => 'S',
      min_level    => 'IS');
       SA_USER_ADMIN.SET_LEVELS
(
      policy_name  => 'SERVERS_POL',
      user_name    => 'D0009',
      max_level    => 'HS',
      min_level    => 'IS');
END;

BEGIN
  SA_POLICY_ADMIN.APPLY_TABLE_POLICY
(
    policy_name    => 'SERVERS_POL',
    schema_name    => 'CS5322',
    table_name     => 'DATABASES',
    table_options  => 'READ_CONTROL');
END;
/

BEGIN
   SA_POLICY_ADMIN.ENABLE_TABLE_POLICY
(
      policy_name => 'SERVERS_POL',
      schema_name => 'CS5322',
      table_name  => 'DATABASES');
END;
/

BEGIN
   SA_USER_ADMIN.SET_USER_PRIVS
(
      policy_name => 'SERVERS_POL',
      user_name   => 'CS5322',
      privileges  => 'FULL');
END;
/

UPDATE cs5322.servers
SET SERVERS_OLS_COL = CHAR_TO_LABEL('SERVERS_POL', 'HS')
WHERE environment = 'prod';

UPDATE cs5322.servers
SET SERVERS_OLS_COL = CHAR_TO_LABEL('SERVERS_POL', 'S')
WHERE environment = 'test';

UPDATE cs5322.servers
SET SERVERS_OLS_COL = CHAR_TO_LABEL('SERVERS_POL', 'PS')
WHERE environment = 'dev';




