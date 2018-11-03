CREATE TABLE user
(
        id INT NOT NULL,
        name VARCHAR(15) DEFAULT 'No name entered',
        age INT
);

-- INSERT INTO user(id, name, age)
-- VALUES(NULL, 'justin', 8);

INSERT INTO user(id, name, age)
VALUES  (1, 'justin', NULL),
        (2, NULL, 9);

INSERT INTO user(id, age)
VALUES (3, 20);



SELECT * FROM user;