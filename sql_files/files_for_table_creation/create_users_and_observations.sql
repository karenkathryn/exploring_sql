/*
    Author:     Karen Warmbein 
    Date:       August 12, 2020
    Purpose:    Create users and observations data tables                
    Note:       None
*/
DROP TABLE IF EXISTS user_info;
DROP TABLE IF EXISTS observation_info;

CREATE TABLE user_info ( 
    id INT,
    sucessful TEXT, 
    user_role TEXT);

INSERT INTO user_info(id, sucessful, user_role)   
VALUES (1, 'yes', 'astronomer'),
    (2, 'no', 'astronomer'),
    (3, 'no', 'astronomer'),
    (4, 'yes', 'astronomer'),
    (5, 'no', 'astronomer'),
    (6, 'no', 'observatory'),
    (7, 'yes', 'observatory'),
    (8, 'no', 'observatory'),
    (9, 'yes', 'observatory'),
    (10, 'no', 'observatory'),
    (11, 'no', 'observatory'),
    (12, 'no', 'observatory'),
    (13, 'yes', 'observatory'),
    (14, 'yes', 'observatory'),
    (15, 'no', 'observatory'),
    (16, 'no', 'astronomer');

CREATE TABLE observation_info ( 
    id INT,
    astronomer_id INT,
    observatory_id INT,
    location_id INT,
    weather_status TEXT, 
    observation_date TEXT);

INSERT INTO observation_info(id, astronomer_id, observatory_id, location_id, weather_status, observation_date)   
VALUES (1, 1, 6, 32, 'clear', '2016-05-03'),
    (2, 2, 7, 31, 'clear', '2016-05-03'),
    (3, 3, 8, 38, 'cloudy', '2016-05-03'),
    (4, 4, 9, 40, 'clear', '2016-05-03'),
    (5, 5, 10, 43, 'clear', '2017-06-30'),
    (6, 6, 11, 42, 'cloudy', '2017-06-30'),
    (7, 7, 12, 31, 'clear', '2017-06-30'),
    (8, 8, 13, 43, 'clear', '2017-06-30'),
    (9, 9, 14, 45, 'clear', '2017-06-30'),
    (10, 10, 15, 35, 'clear', '2017-06-30'),
    (11, 1, 11, 31, 'clear', '2017-06-30'),
    (12, 5, 12, 43, 'cloudy', '2017-06-30'),
    (13, 16, 10, 42, 'cloudy', '2018-05-01'),
    (14, 3, 10, 39, 'clear', '2018-05-01'),
    (15, 2, 10, 40, 'cloudy', '2018-05-01');


ALTER TABLE user_info 
ADD score INT;

UPDATE user_info SET score = 1 WHERE id = 1;
UPDATE user_info SET score = 1 WHERE id = 2;
UPDATE user_info SET score = 2 WHERE id = 3;
UPDATE user_info SET score = 2.5 WHERE id = 4;
UPDATE user_info SET score = 3 WHERE id = 5;
UPDATE user_info SET score = 3 WHERE id = 16;

UPDATE user_info SET score = 5 WHERE id = 6;
UPDATE user_info SET score = 8 WHERE id = 7;
UPDATE user_info SET score = 7 WHERE id = 8;
UPDATE user_info SET score = 10 WHERE id = 9;
UPDATE user_info SET score = 9 WHERE id = 10;
UPDATE user_info SET score = 9 WHERE id = 11;
UPDATE user_info SET score = 7 WHERE id = 12;
UPDATE user_info SET score = 10 WHERE id = 13;
UPDATE user_info SET score = 8 WHERE id = 14;
UPDATE user_info SET score = 10 WHERE id = 15;