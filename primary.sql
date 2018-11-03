CREATE TABLE cards
(   card_number INT,
    name VARCHAR(15),
    code INT,
    PRIMARY KEY (card_number)
    
);

CREATE TABLE employees
(   
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(35) NOT NULL,
    last_name VARCHAR(35) NOT NULL,
    middle_name VARCHAR(35),
    age INT,
    status VARCHAR(30) NOT NULL DEFAULT 'employed',
    PRIMARY KEY (id)
);