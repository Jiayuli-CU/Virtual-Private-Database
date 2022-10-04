INSERT INTO DEPARTMENTS (ID, NAME) VALUES (1, 'DEVELOPMENT');
INSERT INTO DEPARTMENTS (ID, NAME) VALUES (2, 'PRODUCT');
INSERT INTO DEPARTMENTS (ID, NAME) VALUES (3, 'MANAGEMENT');


insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('D0001', 'Park', 'Tonry', 'Male', 1, 'be', 1, 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('D0002', 'Krysta', 'Beyn', 'Female', 1, 'be', 2, 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('D0003', 'Roarke', 'Dietzler', 'Male', 1, 'be', 3, 'US');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('D0004', 'Kennedy', 'Cossington', 'Male', 1, 'fe', 1, 'SG');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('D0005', 'Christabel', 'Bingell', 'Female', 1, 'fe', 2, 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('D0006', 'Sari', 'Keneforde', 'Female', 1, 'fe', 3, 'US');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('D0007', 'Parnell', 'Elderton', 'Male', 1, 'te', 1, 'SG');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('D0008', 'Bobinette', 'Mattosoff', 'Female', 1, 'te', 2, 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('D0009', 'Ronny', 'Ault', 'Female', 1, 'te', 3, 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('P0001', 'Dagmar', 'Topley', 'Female', 2, 'pm', 2, 'SG');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('P0002', 'Sigrid', 'Gleed', 'Female', 2, 'ds', 2, 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('P0003', 'Kissiah', 'Blackmuir', 'Female', 2, 'pr', 2, 'US');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('P0004', 'Leonidas', 'Starkings', 'Male', 2, 'am', 2, 'US');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('P0005', 'Tiffany', 'Wong', 'Male', 2, 'am', 3, 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('P0006', 'Alex', 'Berlin', 'Male', 2, 'pr', 3, 'SG');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('M0001', 'Marlene', 'Rutigliano', 'Female', 3, 'ceo', 3, 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('M0002', 'Wilbur', 'Gowling', 'Male', 3, 'cto', 3, 'SG');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, j_level, base) values ('M0003', 'Jaew', 'Sandra', 'Male', 3, 'cfo', 3, 'CN');




insert into PRODUCT_USERS (id, project_id, first_name, last_name, email, tags) values (1, 1, 'Pru', 'Cornewall', 'pcornewall0@slideshare.net', 'n/a');
insert into PRODUCT_USERS (id, project_id, first_name, last_name, email, tags) values (2, 1, 'Nettie', 'Wicklen', 'nwicklen1@pcworld.com', 'Health Care');
insert into PRODUCT_USERS (id, project_id, first_name, last_name, email, tags) values (3, 1, 'Elie', 'Pantling', 'epantling2@timesonline.co.uk', 'Consumer Services');
insert into PRODUCT_USERS (id, project_id, first_name, last_name, email, tags) values (4, 1, 'Norene', 'Wilsher', 'nwilsher3@topsy.com', 'Health Care');
insert into PRODUCT_USERS (id, project_id, first_name, last_name, email, tags) values (5, 2, 'Malvin', 'Kerner', 'mkerner4@w3.org', 'Health Care');
insert into PRODUCT_USERS (id, project_id, first_name, last_name, email, tags) values (6, 2, 'Simmonds', 'Daynter', 'sdaynter5@nyu.edu', 'n/a');
insert into PRODUCT_USERS (id, project_id, first_name, last_name, email, tags) values (7, 2, 'Bessy', 'Fountain', 'bfountain6@newsvine.com', 'Public Utilities');
insert into PRODUCT_USERS (id, project_id, first_name, last_name, email, tags) values (8, 2, 'Bird', 'Reveley', 'breveley7@spiegel.de', 'Finance');
insert into PRODUCT_USERS (id, project_id, first_name, last_name, email, tags) values (9, 3, 'Wainwright', 'Collinwood', 'wcollinwood8@myspace.com', 'n/a');
insert into PRODUCT_USERS (id, project_id, first_name, last_name, email, tags) values (10, 3, 'Melony', 'Beszant', 'mbeszant9@bandcamp.com', 'Health Care');

insert into ADVERTISEMENTS (id, product_id, manager_id, EXPENSE, COUNTRY) values (1, 1, 'P0004', 82, 'US');
insert into ADVERTISEMENTS (id, product_id, manager_id, EXPENSE, COUNTRY) values (2, 2, 'P0004', 27, 'US');
insert into ADVERTISEMENTS (id, product_id, manager_id, EXPENSE, COUNTRY) values (3, 3, 'P0005', 70, 'CN');

insert into PARTNERSHIP (id, product_id, company, manager_id, COUNTRY, length) values (1, 1, 'APPLE', 'P0003', 'US', 1);
insert into PARTNERSHIP (id, product_id, company, manager_id, COUNTRY, length) values (2, 2, 'FACEBOOK', 'P0006', 'SG', 1);






