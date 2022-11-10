-- D0001 -- dev
select * from cs5322.databases;
delete from cs5322.databases where id =4;

select * from cs5322.servers;

-- D0002 -- dev+test
select * from cs5322.databases;
select * from cs5322.servers;

-- D0003 -- dev+test+prod
select * from cs5322.databases;
select * from cs5322.servers;

delete from cs5322.databases where id =1;