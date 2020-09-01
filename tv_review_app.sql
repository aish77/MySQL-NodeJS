CREATE table reviewers (
    id INT(100) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
)


CREATE TABLE series(
    id INT(100) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    released_year VARCHAR(100),
    genre VARCHAR(100)
)


CREATE TABLE reviews (
    id INT(100) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    rating DECIMAL(2,1),
    series_id INT(100),
    reviewers_id INT(100),
    FOREIGN KEY (series_id) references series(id),
    FOREIGN KEY (reviewers_id) references reviewers(id)
)