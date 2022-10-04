CREATE FUNCTION check_ad_country(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS condition VARCHAR2 (200); 
BEGIN
	condition := 'country = "ID"';
	RETURN condition;
END check_ad_country;


BEGIN
  DBMS_RLS.ADD_POLICY (
    object_schema => 'system',
    object_name => 'advertisement',
    policy_name => 'check_ad_country_policy',
    policy_function => 'check_ad_country');
END;




