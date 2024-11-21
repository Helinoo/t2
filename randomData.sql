INSERT INTO instructor (firstName, lastName, personNumber, email, adress, zip, city)
VALUES 
('John', 'Doe', '123456789012', 'john.doe@example.com', '123 Elm Street', '12345', 'Springfield'),
('Jane', 'Smith', '987654321098', 'jane.smith@example.com', '456 Oak Avenue', '54321', 'Shelbyville'),
('Emily', 'Johnson', '456789123456', 'emily.johnson@example.com', '789 Pine Road', '67890', 'Rivertown'),
('Michael', 'Brown', '654321987654', 'michael.brown@example.com', '101 Maple Street', '78901', 'Hilltown');

INSERT INTO instructor_availability (instructorID, startTime, endTime)
VALUES 
(1, '08:00', '12:00'),
(2, '13:00', '17:00'),
(3, '09:00', '15:00'),
(4, '10:00', '14:00');

INSERT INTO instrument (brand, type, stock, locationOfInstrument, rentalID)
VALUES 
('Fender', 'Guitar', 10, 'Storage A', NULL),
('Yamaha', 'Piano', 5, 'Room 101', NULL),
('Stradivarius', 'Violin', 2, 'Storage B', NULL),
('Pearl', 'Drums', 7, 'Storage C', NULL),
('Roland', 'Keyboard', 6, 'Room 102', NULL);

INSERT INTO instruments_to_teach (instructorID, instrumentsTaught)
VALUES 
(1, 'Guitar, Keyboard'),
(2, 'Piano'),
(3, 'Violin'),
(4, 'Drums');

INSERT INTO lesson (instructorID, date)
VALUES 
(1, '2024-01-15 10:00:00'),
(2, '2024-01-16 14:00:00'),
(3, '2024-01-17 09:00:00'),
(4, '2024-01-18 11:00:00');

INSERT INTO student (firstName, lastName, personNumber, email, adress, zip, city)
VALUES 
('Alice', 'Johnson', '111222333444', 'alice.johnson@example.com', '10 Main St', '10001', 'Metropolis'),
('Bob', 'Williams', '222333444555', 'bob.williams@example.com', '20 South Ave', '10002', 'Gotham'),
('Charlie', 'Brown', '333444555666', 'charlie.brown@example.com', '30 West Blvd', '10003', 'Hillview'),
('Daisy', 'Miller', '444555666777', 'daisy.miller@example.com', '40 East Lane', '10004', 'Springville');

INSERT INTO student_lesson (studentID, lessonID)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(1, 3),
(2, 4);

INSERT INTO rental (studentID, instrumentID, dateOfRental, dueDateOfRental)
VALUES 
(1, 1, '2024-01-01', '2024-02-01'),
(2, 2, '2024-01-10', '2024-02-10'),
(3, 3, '2024-01-15', '2024-02-15'),
(4, 4, '2024-01-20', '2024-02-20');

INSERT INTO price_list (lessonID, price, lessonType, lessonSkill)
VALUES 
(1, 50, 'individuallesson', 'beginner'),
(2, 70, 'grouplesson', 'intermediate'),
(3, 100, 'ensemblelesson', 'advanced'),
(4, 80, 'grouplesson', 'beginner');

INSERT INTO ensemble_lesson (lessonID, genre, minStudents, maxStudents)
VALUES 
(3, 'rock', 5, 10),
(4, 'classical', 3, 8);

INSERT INTO group_lesson (lessonID, minStudents, maxStudents, instrument)
VALUES 
(1, 3, 10, 'Guitar'),
(2, 5, 15, 'Piano');

INSERT INTO individual_lesson (lessonID, instrument)
VALUES 
(1, 'Violin'),
(2, 'Keyboard');

INSERT INTO phone (phoneNumber, studentID, instructorID)
VALUES 
('123-456-7890', 1, NULL),
('987-654-3210', NULL, 1),
('456-123-7890', 2, NULL),
('789-654-1230', NULL, 2);

INSERT INTO contact_person (firstName, lastName, StudentID)
VALUES 
('Mary', 'Johnson', 1),
('James', 'Williams', 2),
('Linda', 'Brown', 3),
('Sarah', 'Miller', 4);

