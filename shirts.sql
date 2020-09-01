DROP DATABASE shirts_db;

create database shirts_db;

use shirts_db;

CREATE TABLE shirts(
    shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(100),
    color VARCHAR(100),
    shirt_size VARCHAR(1),
    last_worn VARCHAR(100),
    PRIMARY KEY (shirt_id)
);

INSERT INTO shirts (article, color, shirt_size, last_worn) Values('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);


SELECT * FROM shirts;