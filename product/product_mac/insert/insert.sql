insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0001', 'Park', 'Tonry', 'Male', 1, 'be', 'p1', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0002', 'Krysta', 'Beyn', 'Female', 1, 'be', 'p2', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0003', 'Roarke', 'Dietzler', 'Male', 1, 'be', 'p3', 'US');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0004', 'Kennedy', 'Cossington', 'Male', 1, 'fe', 'p1', 'SG');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0005', 'Christabel', 'Bingell', 'Female', 1, 'fe', 'p2', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0006', 'Sari', 'Keneforde', 'Female', 1, 'fe', 'p3', 'US');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0007', 'Parnell', 'Elderton', 'Male', 1, 'te', 'p1', 'SG');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0008', 'Bobinette', 'Mattosoff', 'Female', 1, 'te', 'p2', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0009', 'Ronny', 'Ault', 'Female', 1, 'te', 'p3', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('P0001', 'Dagmar', 'Topley', 'Female', 2, 'pm', 'p2', 'SG');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('P0002', 'Sigrid', 'Gleed', 'Female', 2, 'ds', 'p2', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('P0003', 'Kissiah', 'Blackmuir', 'Female', 2, 'pr', 'p2', 'US');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('P0004', 'Leonidas', 'Starkings', 'Male', 2, 'am', 'p2', 'US');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('P0005', 'Tiffany', 'Wong', 'Male', 2, 'am', 'p3', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('P0006', 'Alex', 'Berlin', 'Male', 2, 'pr', 'p3', 'SG');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('P0007', 'Zack', 'Erlane', 'Male', 2, 'pm', 'p3', 'US');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('M0001', 'Marlene', 'Rutigliano', 'Female', 3, 'ceo', 'p3', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('M0002', 'Wilbur', 'Gowling', 'Male', 3, 'cto', 'p3', 'SG');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('M0003', 'Jaew', 'Sandra', 'Male', 3, 'cfo', 'p3', 'CN');

INSERT INTO projects (id, name, description, due, est_member_num , status, special, manager_id) VALUES (1, 'Cookley', 'In est risus, auctor sed, tristique in, tempus sit amet, sem.', TO_DATE('11/27/2021', 'mm/dd/yyyy'), 6, 'ongoing', 'false', 'P0001');
INSERT INTO projects (id, name, description, due, est_member_num , status, special, manager_id) VALUES (2, 'Mat Lam Tam', 'Aliquam non mauris.', TO_DATE('08/05/2022', 'mm/dd/yyyy'), 7, 'ongoing', 'true', 'P0007');
INSERT INTO projects (id, name, description, due, est_member_num , status, special, manager_id) VALUES (3, 'Tempsoft', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', TO_DATE('08/24/2022', 'mm/dd/yyyy'), 9, 'planned', 'true', 'P0001');
INSERT INTO projects (id, name, description, due, est_member_num , status, special, manager_id) VALUES (4, 'Stronghold', 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.', TO_DATE('03/17/2022', 'mm/dd/yyyy'), 7, 'finished', 'false', 'P0002');
INSERT INTO projects (id, name, description, due, est_member_num , status, special, manager_id) VALUES (5, 'Ronstring', 'Maecenas pulvinar lobortis est.', TO_DATE('05/06/2022', 'mm/dd/yyyy'), 3, 'ongoing', 'false', 'P0002');
INSERT INTO projects (id, name, description, due, est_member_num , status, special, manager_id) VALUES (6, 'Kanlam', 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', TO_DATE('06/27/2022', 'mm/dd/yyyy'), 9,  'finished', 'false', 'P0003');
INSERT INTO projects (id, name, description, due, est_member_num , status, special, manager_id) VALUES (7, 'Hatity', 'Praesent lectus.', TO_DATE('09/20/2022', 'mm/dd/yyyy'), 7, 'planned', 'false', 'P0003');
INSERT INTO projects (id, name, description, due, est_member_num , status, special, manager_id) VALUES (8, 'Biodex', 'Integer ac neque. Duis bibendum.', TO_DATE('10/20/2021', 'mm/dd/yyyy'), 5,  'ongoing', 'true', 'P0004');
INSERT INTO projects (id, name, description, due, est_member_num , status, special, manager_id) VALUES (9, 'Overhold', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', TO_DATE('10/24/2022', 'mm/dd/yyyy'), 8,  'planned', 'false', 'P0004');



insert into PROJECT_USERS (id, project_id, first_name, last_name, email, tags) values (1, 1, 'Pru', 'Cornewall', 'pcornewall0@slideshare.net', 'n/a');
insert into PROJECT_USERS (id, project_id, first_name, last_name, email, tags) values (2, 1, 'Nettie', 'Wicklen', 'nwicklen1@pcworld.com', 'Health Care');
insert into PROJECT_USERS (id, project_id, first_name, last_name, email, tags) values (3, 3, 'Elie', 'Pantling', 'epantling2@timesonline.co.uk', 'Consumer Services');
insert into PROJECT_USERS (id, project_id, first_name, last_name, email, tags) values (4, 1, 'Norene', 'Wilsher', 'nwilsher3@topsy.com', 'Health Care');
insert into PROJECT_USERS (id, project_id, first_name, last_name, email, tags) values (5, 2, 'Malvin', 'Kerner', 'mkerner4@w3.org', 'Health Care');


insert into PROJECT_USERS (id, project_id, first_name, last_name, email, tags, confidential) values (1, 1, 'Pru', 'Cornewall', 'pcornewall0@slideshare.net', 'n/a', 'true');
insert into PROJECT_USERS (id, project_id, first_name, last_name, email, tags, confidential) values (2, 1, 'Nettie', 'Wicklen', 'nwicklen1@pcworld.com', 'Health Care', 'false');
insert into PROJECT_USERS (id, project_id, first_name, last_name, email, tags, confidential) values (3, 3, 'Elie', 'Pantling', 'epantling2@timesonline.co.uk', 'Consumer Services', 'true');
insert into PROJECT_USERS (id, project_id, first_name, last_name, email, tags, confidential) values (4, 1, 'Norene', 'Wilsher', 'nwilsher3@topsy.com', 'Health Care', 'false');
insert into PROJECT_USERS (id, project_id, first_name, last_name, email, tags, confidential) values (5, 2, 'Malvin', 'Kerner', 'mkerner4@w3.org', 'Health Care', 'false');


insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0001', 'Park', 'Tonry', 'Male', 1, 'be', 'p1', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0002', 'Krysta', 'Beyn', 'Female', 1, 'be', 'p2', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0003', 'Roarke', 'Dietzler', 'Male', 1, 'be', 'p3', 'US');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0004', 'Kennedy', 'Cossington', 'Male', 1, 'fe', 'p1', 'SG');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0005', 'Christabel', 'Bingell', 'Female', 1, 'fe', 'p2', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0006', 'Sari', 'Keneforde', 'Female', 1, 'fe', 'p3', 'US');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0007', 'Parnell', 'Elderton', 'Male', 1, 'te', 'p1', 'SG');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0008', 'Bobinette', 'Mattosoff', 'Female', 1, 'te', 'p2', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('D0009', 'Ronny', 'Ault', 'Female', 1, 'te', 'p3', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('P0001', 'Dagmar', 'Topley', 'Female', 2, 'pm', 'p2', 'SG');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('P0002', 'Sigrid', 'Gleed', 'Female', 2, 'ds', 'p2', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('P0003', 'Kissiah', 'Blackmuir', 'Female', 2, 'pr', 'p2', 'US');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('P0004', 'Leonidas', 'Starkings', 'Male', 2, 'am', 'p2', 'US');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('P0005', 'Tiffany', 'Wong', 'Male', 2, 'am', 'p3', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('P0006', 'Alex', 'Berlin', 'Male', 2, 'pr', 'p3', 'SG');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('P0007', 'Zack', 'Erlane', 'Male', 2, 'pm', 'p3', 'US');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('S0001', 'Marlene', 'Rutigliano', 'Female', 3, 'ceo', 'p3', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('S0002', 'Wilbur', 'Gowling', 'Male', 3, 'cto', 'p3', 'SG');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('S0003', 'Jaew', 'Sandra', 'Male', 3, 'cfo', 'p3', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('O0001', 'Jojo', 'Tiningo', 'Female', 4, 'op', 'p1', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('O0002', 'Wilbur', 'Gowling', 'Male', 4, 'op', 'p2', 'SG');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('O0003', 'Jaew', 'Sandra', 'Male', 4, 'cfo', 'p3', 'CN');
insert into EMPLOYEES (id, first_name, last_name, gender, department_id, position, access_level, base) values ('P0008', 'Joseph', 'Tenter', 'Male', 2, 'ds', 'p3', 'US');



INSERT INTO DEPARTMENTS (ID, NAME) VALUES (1, 'DEVELOPMENT');
INSERT INTO DEPARTMENTS (ID, NAME) VALUES (2, 'PRODUCT');
INSERT INTO DEPARTMENTS (ID, NAME) VALUES (3, 'SUPPORT');
INSERT INTO DEPARTMENTS (ID, NAME) VALUES (4, 'OPERATION');


