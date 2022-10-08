---- insert into project_feedback

TRUNCATE TABLE PROJECT_FEEDBACK;

INSERT INTO PROJECT_FEEDBACK (id, project_id, feedback, improvement, competing_proj, update_time) values (1, 1, 'feedback', 'need improve', 'TikTok', TO_DATE('11/21/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_FEEDBACK (id, project_id, feedback, improvement, competing_proj, update_time) values (2, 2, 'feedback', 'need improve', 'Douyin', TO_DATE('11/22/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_FEEDBACK (id, project_id, feedback, improvement, competing_proj, update_time) values (3, 3, 'feedback', 'need improve', 'Grab', TO_DATE('11/23/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_FEEDBACK (id, project_id, feedback, improvement, competing_proj, update_time) values (4, 4, 'feedback', 'need improve', 'Shopee', TO_DATE('11/24/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_FEEDBACK (id, project_id, feedback, improvement, competing_proj, update_time) values (5, 5, 'feedback', 'need improve', 'Gojek', TO_DATE('11/25/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_FEEDBACK (id, project_id, feedback, improvement, competing_proj, update_time) values (6, 6, 'feedback', 'need improve', 'ShopBack', TO_DATE('11/26/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_FEEDBACK (id, project_id, feedback, improvement, competing_proj, update_time) values (7, 7, 'feedback', 'need improve', 'Foodpanda', TO_DATE('11/27/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_FEEDBACK (id, project_id, feedback, improvement, competing_proj, update_time) values (8, 8, 'feedback', 'need improve', 'Meituan', TO_DATE('11/28/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_FEEDBACK (id, project_id, feedback, improvement, competing_proj, update_time) values (9, 9, 'feedback', 'need improve', 'Pinduoduo', TO_DATE('11/29/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_FEEDBACK (id, project_id, feedback, improvement, competing_proj, update_time) values (10, 10, 'feedback', 'need improve', 'Taobao', TO_DATE('11/30/2021', 'mm/dd/yyyy'));

---- insert into project_copywrite
TRUNCATE TABLE PROJECT_COPYWRITE;

INSERT INTO PROJECT_COPYWRITING (id, project_id, employee_id, group_type, content, update_time) values (1, 2, 'MK0001', 'traditional', 'no content', TO_DATE('11/21/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_COPYWRITING (id, project_id, employee_id, group_type, content, update_time) values (2, 2, 'MK0002', 'new', 'no content', TO_DATE('11/23/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_COPYWRITING (id, project_id, employee_id, group_type, content, update_time) values (3, 3, 'MK0003', 'traditional', 'no content', TO_DATE('11/23/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_COPYWRITING (id, project_id, employee_id, group_type, content, update_time) values (4, 4, 'MK0004', 'new', 'no content', TO_DATE('11/24/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_COPYWRITING (id, project_id, employee_id, group_type, content, update_time) values (5, 5, 'MK0005', 'traditional', 'no content', TO_DATE('11/25/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_COPYWRITING (id, project_id, employee_id, group_type, content, update_time) values (6, 6, 'MK0006', 'new', 'no content', TO_DATE('11/26/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_COPYWRITING (id, project_id, employee_id, group_type, content, update_time) values (7, 7, 'MK0001', 'traditional', 'no content', TO_DATE('11/27/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_COPYWRITING (id, project_id, employee_id, group_type, content, update_time) values (8, 8, 'MK0002', 'new', 'no content', TO_DATE('11/28/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_COPYWRITING (id, project_id, employee_id, group_type, content, update_time) values (9, 9, 'MK0003', 'traditional', 'no content', TO_DATE('11/29/2021', 'mm/dd/yyyy'));
INSERT INTO PROJECT_COPYWRITING (id, project_id, employee_id, group_type, content, update_time) values (10, 10, 'MK0004', 'new', 'no content', TO_DATE('11/30/2021', 'mm/dd/yyyy'));


---- insert into event_planning
TRUNCATE TABLE EVENT_PLANNING;

INSERT INTO EVENT_PLANNING (id, employee_id, event_type, purpose, event_object, budget, event_location, final_time) values (1, 'MK0001', 'type', 'just for fun', 'object', 5000, 'Singapore', TO_DATE('11/21/2021', 'mm/dd/yyyy'));
INSERT INTO EVENT_PLANNING (id, employee_id, event_type, purpose, event_object, budget, event_location, final_time) values (2, 'MK0002', 'type', 'just for fun', 'object', 5100, 'Beijing', TO_DATE('11/22/2021', 'mm/dd/yyyy'));
INSERT INTO EVENT_PLANNING (id, employee_id, event_type, purpose, event_object, budget, event_location, final_time) values (3, 'MK0003', 'type', 'just for fun', 'object', 5200, 'Shanghai', TO_DATE('11/23/2021', 'mm/dd/yyyy'));
INSERT INTO EVENT_PLANNING (id, employee_id, event_type, purpose, event_object, budget, event_location, final_time) values (4, 'MK0004', 'type', 'just for fun', 'object', 5300, 'Hong Kong', TO_DATE('11/24/2021', 'mm/dd/yyyy'));
INSERT INTO EVENT_PLANNING (id, employee_id, event_type, purpose, event_object, budget, event_location, final_time) values (5, 'MK0005', 'type', 'just for fun', 'object', 5400, 'New York', TO_DATE('11/25/2021', 'mm/dd/yyyy'));
INSERT INTO EVENT_PLANNING (id, employee_id, event_type, purpose, event_object, budget, event_location, final_time) values (6, 'MK0006', 'type', 'just for fun', 'object', 5500, 'London', TO_DATE('11/26/2021', 'mm/dd/yyyy'));
INSERT INTO EVENT_PLANNING (id, employee_id, event_type, purpose, event_object, budget, event_location, final_time) values (7, 'MK0001', 'type', 'just for fun', 'object', 5600, 'Paris', TO_DATE('11/27/2021', 'mm/dd/yyyy'));
INSERT INTO EVENT_PLANNING (id, employee_id, event_type, purpose, event_object, budget, event_location, final_time) values (8, 'MK0002', 'type', 'just for fun', 'object', 5700, 'Los Angeles', TO_DATE('11/28/2021', 'mm/dd/yyyy'));
INSERT INTO EVENT_PLANNING (id, employee_id, event_type, purpose, event_object, budget, event_location, final_time) values (9, 'MK0003', 'type', 'just for fun', 'object', 5800, 'Tokyo', TO_DATE('11/29/2021', 'mm/dd/yyyy'));
INSERT INTO EVENT_PLANNING (id, employee_id, event_type, purpose, event_object, budget, event_location, final_time) values (10, 'MK0004', 'type', 'just for fun', 'object', 5900, 'Sydney', TO_DATE('11/30/2021', 'mm/dd/yyyy'));
