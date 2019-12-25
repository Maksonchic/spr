INSERT INTO usr (id, username, password, active)
    values((select next_val from hibernate_sequence), 'admin', 'admin123', true);

INSERT INTO user_role (user_id, roles)
values ((select id from usr where username = 'admin'), 'USER');

INSERT INTO user_role (user_id, roles)
values ((select id from usr where username = 'admin'), 'ADMIN');

update hibernate_sequence set next_val = (next_val + 1);