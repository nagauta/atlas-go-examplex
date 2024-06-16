CREATE TABLE tasks (
    id INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(512) NOT NULL,
    completed TINYINT(1) NOT NULL DEFAULT 0
);

INSERT INTO tasks (description) VALUES ("demo task");
INSERT INTO tasks (description) VALUES ("demo task2");
