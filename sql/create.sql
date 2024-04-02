-- Active: 1710496661148@@127.0.0.1@3306
CREATE DATABASE IDTABLE;

CREATE TABLE USERINFO(
    userId varchar(60),
    username varchar(20),
    profileImg varchar(200),
    created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    Updated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE
    CURRENT_TIMESTAMP(),
    PRIMARY KEY(userId)

);

Insert into USERINFO(userId,username) VALUES
('onehousehee','han'),
('dynastygnim','kang'),
('po','park'),
('sonny','kim'),
('asd','faker');

SELECT userId,username
From USERINFO
Order by created DESC
LIMIT 1;


SELECT userId
From USERINFO
WHERE userId='asd';

DELETE From USERINFO
Where username='park';

UPDATE USERINFO
Set userId='dsa'
Where username='kim';
