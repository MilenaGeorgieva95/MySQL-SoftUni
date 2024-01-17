CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(30) UNIQUE NOT NULL,
    password VARCHAR(26) NOT NULL,
    profile_picture BLOB,
    last_login_time DATETIME,
    is_deleted BOOLEAN
);

INSERT INTO users(username, password, last_login_time, is_deleted)
VALUES 
('JohnDoe', 'JohnDoe123', '2023-11-21-10-23-43',false),
('AliceDoe', 'AliceDoe123','2023-10-11-10-13-43',false),
('AnnSmith', 'AnnSmith123','2023-08-11-09-13-43',true),
('EllieBells', 'EllieBells123','2024-01-11-09-13-43',true),
('AdamRogers', 'AdamRogers123','2024-01-11-08-13-43',false);