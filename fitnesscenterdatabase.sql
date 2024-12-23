USE fitness_center;
CREATE TABLE Members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);
CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (name, age)
VALUES
('Karla', '27'),
('Britt', '35'),
('Nina', '33');

SELECT * FROM Members;

INSERT INTO WorkoutSessions ( session_id, member_id, session_date, session_time, activity)
VALUES
('1','1', '2024-05-06', '10:30 AM', 'pilates'),
('15','2', '2024-05-08', '8:30 AM', 'pilates'),
('45','3', '2024-05-12', '9:15 AM', 'pilates');

SELECT * FROM WorkoutSessions; 

UPDATE WorkoutSessions
SET   session_time = '6:00 PM'
WHERE session_id = 45;

DELETE FROM WorkoutSessions
WHERE member_id = 3;

DELETE FROM Members
WHERE id = 3;

SELECT * FROM Members;