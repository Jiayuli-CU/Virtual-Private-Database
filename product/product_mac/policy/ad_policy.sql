GRANT EXECUTE ON sa_components TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_user_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_label_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_policy_admin TO cs5322 WITH GRANT OPTION;
GRANT EXECUTE ON sa_audit_admin  TO cs5322 WITH GRANT OPTION;

GRANT LBAC_DBA TO cs5322;
GRANT EXECUTE ON sa_sysdba TO cs5322;
GRANT EXECUTE ON to_lbac_data_label TO cs5322;

CREATE ROLE ACC;
CREATE ROLE ACCM;
GRANT SELECT ON CS5322.ACCOUNTING_SALARY_HISTORY TO ACC;

GRANT CONNECT, ACC TO acce IDENTIFIED BY password;
GRANT CONNECT, ACCM TO macc IDENTIFIED BY password;


BEGIN
  SA_SYSDBA.DROP_POLICY ( 
    policy_name  => 'ASH_POL',
    drop_column  => TRUE);
END;
/

BEGIN
 SA_SYSDBA.CREATE_POLICY (
  policy_name      => 'ASH_POL',
  column_name      => 'ASH_OLS_COL');
END;
/


EXEC SA_SYSDBA.ENABLE_POLICY ('ASH_POL');



BEGIN
   SA_COMPONENTS.CREATE_LEVEL (
      policy_name => 'ASH_POL',
      level_num   => 3000,
      short_name  => 'HS',
      long_name   => 'HIGHLY_SENSITIVE');

   SA_COMPONENTS.CREATE_LEVEL (
      policy_name => 'ASH_POL',
      level_num   => 2000,
      short_name  => 'S',
      long_name   => 'SENSITIVE');
END;
/



BEGIN
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'ASH_POL',
      user_name    => 'acce', 
      max_level    => 'HS',
      min_level    => 'S');
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'ASH_POL',
      user_name    => 'macc', 
      max_level    => 'HS',
      min_level    => 'S');
END;
/



BEGIN
  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name      => 'ASH_POL',
    long_name        => 'DEVELOPMENT',
    short_name       => 'DEV',
    comp_num         =>  1000);

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name      => 'ASH_POL',
    long_name        => 'PRODUCT',
    short_name       => 'PRD',
    comp_num         =>  2000);

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name      => 'ASH_POL',
    long_name        => 'OPERATION',
    short_name       => 'OP',
    comp_num         =>  3000);

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name      => 'ASH_POL',
    long_name        => 'SUPPORT',
    short_name       => 'SUP',
    comp_num         =>  4000);

END;
/


BEGIN
   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'ASH_POL',
      label_tag    => 2100,
      label_value  => 'S:DEV:', -- SENSITIVE level for the DEVELOPMENT compartment
      data_label   => TRUE);

   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'ASH_POL',
      label_tag    => 2200,
      label_value  => 'S:PRD:', --SENSITIVE level for the PRODUCT compartment
      data_label   => TRUE);

   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'ASH_POL',
      label_tag    => 2300,
      label_value  => 'S:OP:', --SENSITIVE level for the OPERATION compartment
      data_label   => TRUE);

   SA_LABEL_ADMIN.CREATE_LABEL (
      policy_name  => 'ASH_POL',
      label_tag    => 2400,
      label_value  => 'S:SUP:', --SENSITIVE level for the SUPPORT compartment
      data_label   => TRUE);

END;



BEGIN
   SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'ASH_POL',
      user_name      => 'acce', 
      max_read_label => 'S:DEV,PRD,SUP,OP:');

   SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'ASH_POL',
      user_name      => 'macc', 
      max_read_label => 'S:DEV,PRD,SUP,OP:');

END;
/



BEGIN
  SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
    policy_name    => 'ASH_POL',
    schema_name    => 'CS5322', 
    table_name     => 'ACCOUNTING_SALARY_HISTORY',
    table_options  => 'READ_CONTROL');
END;
/



BEGIN
   SA_POLICY_ADMIN.ENABLE_TABLE_POLICY (
      policy_name => 'ASH_POL',
      schema_name => 'CS5322',
      table_name  => 'ACCOUNTING_SALARY_HISTORY');
END;
/



BEGIN
   SA_USER_ADMIN.SET_USER_PRIVS (
      policy_name => 'ASH_POL',
      user_name   => 'CS5322',
      privileges  => 'FULL');
END;
/



UPDATE cs5322.ACCOUNTING_SALARY_HISTORY SET ASH_OLS_COL = CHAR_TO_LABEL('ASH_POL','S:DEV') WHERE DEPARTMENT = '1';

UPDATE cs5322.ACCOUNTING_SALARY_HISTORY SET ASH_OLS_COL = CHAR_TO_LABEL('ASH_POL','S:PRD') WHERE DEPARTMENT = '2';

UPDATE cs5322.ACCOUNTING_SALARY_HISTORY SET ASH_OLS_COL = CHAR_TO_LABEL('ASH_POL','S:OP') WHERE DEPARTMENT = '3';

UPDATE cs5322.ACCOUNTING_SALARY_HISTORY SET ASH_OLS_COL = CHAR_TO_LABEL('ASH_POL','S:SUP') WHERE DEPARTMENT = '4';




--给ad、adm权限-product部门
Grant SELECT ON CS5322.ACCOUNTING_SALARY_HISTORY TO ADVERTISER;

BEGIN
   SA_USER_ADMIN.SET_LEVELS (
      policy_name  => 'ASH_POL',
      user_name    => 'adm', 
      max_level    => 'HS',
      min_level    => 'S');
END;

BEGIN

   SA_USER_ADMIN.SET_USER_LABELS (
      policy_name    => 'ASH_POL',
      user_name      => 'adm', 
      max_read_label => 'S:PRD:');

END;
