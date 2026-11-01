CREATE TABLE groups (
    id INT AUTO_INCREMENT PRIMARY KEY,
    group_name VARCHAR(255) NOT NULL
);

INSERT INTO groups (group_name)
SELECT `group`
FROM student
GROUP BY `group`;

ALTER TABLE student
ADD COLUMN groups_id INT;

UPDATE student
INNER JOIN groups ON student.`group` = groups.group_name
SET student.groups_id = groups.id;

ALTER TABLE student
DROP COLUMN `group`;

ALTER TABLE student
ADD CONSTRAINT fk_student_group
FOREIGN KEY (groups_id) REFERENCES groups(id);


CREATE TABLE cities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR(255) NOT NULL
);

INSERT INTO cities (city_name)
SELECT city
FROM student
GROUP BY city;

ALTER TABLE student
ADD COLUMN city_id INT;

UPDATE student
INNER JOIN cities ON student.city = cities.city_name
SET student.city_id = cities.id;

ALTER TABLE student
DROP COLUMN city;

ALTER TABLE student
ADD CONSTRAINT fk_student_city
FOREIGN KEY (city_id) REFERENCES cities(id);


CREATE TABLE statuses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    status_name VARCHAR(255) NOT NULL
);

INSERT INTO statuses (status_name)
SELECT status
FROM student
GROUP BY status;

ALTER TABLE student
ADD COLUMN status_id INT;

UPDATE student
INNER JOIN statuses ON student.status = statuses.status_name
SET student.status_id = statuses.id;

ALTER TABLE student
DROP COLUMN status;

ALTER TABLE student
ADD CONSTRAINT fk_student_status
FOREIGN KEY (status_id) REFERENCES statuses(id);