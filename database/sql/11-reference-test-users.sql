set search_path to supercharge;

--
--
--
INSERT INTO users VALUES (1000001, 'no_roles',
                          '3073d6808f708b93c86a273ed3eb2c251cafc319dedbe58e5cad6b5e69e14982',
                          '6fc3b8a5c44561fda5aa9d93e5a7a453cc525c7fcdcc5b4849e7cd6f33f59d3c',
                          'no_roles@example.com', TRUE, now(), now()
);


--
--
--
INSERT INTO users VALUES (1000003, 'feature_only',
                          '3073d6808f708b93c86a273ed3eb2c251cafc319dedbe58e5cad6b5e69e14982',
                          '6fc3b8a5c44561fda5aa9d93e5a7a453cc525c7fcdcc5b4849e7cd6f33f59d3c',
                          'feature_only@example.com', TRUE, now(), now()
);
insert into user_role values ((select user_id from users where username='feature_only'),(select role_id from roles where role_name='feature'));

--
--
--
INSERT INTO users VALUES (1000004, 'editor_only',
                          '3073d6808f708b93c86a273ed3eb2c251cafc319dedbe58e5cad6b5e69e14982',
                          '6fc3b8a5c44561fda5aa9d93e5a7a453cc525c7fcdcc5b4849e7cd6f33f59d3c',
                          'editor_only@example.com', TRUE, now(), now()
);
insert into user_role values ((select user_id from users where username='editor_only'),(select role_id from roles where role_name='editor'));

--
--
--
INSERT INTO users VALUES (1000005, 'admin_only',
                          '3073d6808f708b93c86a273ed3eb2c251cafc319dedbe58e5cad6b5e69e14982',
                          '6fc3b8a5c44561fda5aa9d93e5a7a453cc525c7fcdcc5b4849e7cd6f33f59d3c',
                          'admin@example.com', TRUE, now(), now()
);
insert into user_role values ((select user_id from users where username='admin_only'),(select role_id from roles where role_name='admin'));

--
--
--
INSERT INTO users VALUES (1000006, 'admin_editor',
                          '3073d6808f708b93c86a273ed3eb2c251cafc319dedbe58e5cad6b5e69e14982',
                          '6fc3b8a5c44561fda5aa9d93e5a7a453cc525c7fcdcc5b4849e7cd6f33f59d3c',
                          'admin_editor@example.com', TRUE, now(), now()
);
insert into user_role values ((select user_id from users where username='admin_editor'),(select role_id from roles where role_name='admin'));
insert into user_role values ((select user_id from users where username='admin_editor'),(select role_id from roles where role_name='editor'));
insert into user_config (user_id, unit, modified_date, version) select user_id, case user_id % 2 when 0 then 'MI'::distance_unit_type else 'KM'::distance_unit_type end, now(), 1 from users;
