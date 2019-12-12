INSERT INTO usr (id, username, password, active)
    values(1, 'admin', 'admin123', true);

INSERT INTO user_role (user_id, roles)
values ((select id from usr where username = 'admin'), 'USER');

INSERT INTO user_role (user_id, roles)
values ((select id from usr where username = 'admin'), 'ADMIN');