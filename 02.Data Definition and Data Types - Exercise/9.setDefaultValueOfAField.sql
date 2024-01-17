ALTER TABLE users
DROP COLUMN last_login_time,
ADD COLUMN last_login_time DATETIME DEFAULT NOW();

SELECT * FROM users;