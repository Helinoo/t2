-- Insert data into `instructor`
INSERT INTO instructor (firstName, lastName, personNumber, email, adress, zip, city)
VALUES 
('John', 'Doe', '123456789012', 'john.doe@example.com', '123 Elm St', '12345', 'Springfield'),
('Jane', 'Smith', '987654321098', 'jane.smith@example.com', '456 Oak Ave', '54321', 'Shelbyville'),
('Emily', 'Johnson', '456789123456', 'emily.johnson@example.com', '789 Pine Rd', '67890', 'Rivertown'),
('Michael', 'Brown', '654321987654', 'michael.brown@example.com', '101 Maple St', '78901', 'Hilltown');

-- Insert data into `student`
INSERT INTO student (firstName, lastName, personNumber, email, adress, zip, city, studentID_0)
VALUES 
('Alice', 'Johnson', '111222333444', 'alice.johnson@example.com', '10 Main St', '10001', 'Metropolis', NULL),
('Bob', 'Williams', '222333444555', 'bob.williams@example.com', '20 South Ave', '10002', 'Gotham', 1),
('Charlie', 'Brown', '333444555666', 'charlie.brown@example.com', '30 West Blvd', '10003', 'Hillview', NULL),
('Daisy', 'Miller', '444555666777', 'daisy.miller@example.com', '40 East Ln', '10004', 'Springville', NULL);

-- Insert data into `instrument`
INSERT INTO instrument (brand, instrumentType, stock, locationOfInstrument)
VALUES 
('Fender', 'Guitar', 10, 'Storage A'),
('Yamaha', 'Piano', 5, 'Room 101'),
('Stradivarius', 'Violin', 2, 'Storage B'),
('Pearl', 'Drums', 7, 'Storage C'),
('Roland', 'Keyboard', 6, 'Room 102');

-- Insert data into `rental`
INSERT INTO rental (studentID, instrumentID, dateOfRental, dueDateOfRental)
VALUES 
(1, 1, '2024-01-01', '2024-02-01'),
(2, 2, '2024-01-10', '2024-02-10'),
(3, 3, '2024-01-15', '2024-02-15'),
(4, 4, '2024-01-20', '2024-02-20');

-- Insert data into `lesson`
INSERT INTO lesson (instructorID, date)
VALUES 
(1, '2024-01-15 10:00 AM'),
(2, '2024-01-16 02:00 PM'),
(3, '2024-01-17 09:00 AM'),
(4, '2024-01-18 11:00 AM');

-- Insert data into `instructor_availability`
INSERT INTO instructor_availability (instructorID, startTime, endTime)
VALUES 
(1, '08:00 AM', '12:00 PM'),
(2, '01:00 PM', '05:00 PM'),
(3, '09:00 AM', '03:00 PM'),
(4, '10:00 AM', '02:00 PM');

-- Insert data into `instruments_to_teach`
INSERT INTO instruments_to_teach (instructorID, instrumentsTaught)
VALUES 
(1, 'Guitar'),
(2, 'Piano'),
(3, 'Violin'),
(4, 'Drums, Keyboard');

-- Insert data into `price_list`
INSERT INTO price_list (lessonID, price, lessonType, lessonSkill, siblingDiscount)
VALUES 
(1, 50, 'individual', 'beginner', TRUE),
(2, 70, 'group', 'intermediate', FALSE),
(3, 100, 'ensemble', 'advanced', TRUE),
(4, 80, 'group', 'beginner', FALSE);

-- Insert data into `student_lesson`
INSERT INTO student_lesson (studentID, lessonID, priceID)
VALUES 
(1, 1, 1), -- Alice, individual beginner lesson with sibling discount
(2, 2, 2), -- Bob, group intermediate lesson without sibling discount
(3, 3, 3), -- Charlie, ensemble advanced lesson with sibling discount
(4, 4, 4); -- Daisy, group beginner lesson without sibling discount

-- Insert data into `ensemble_lesson`
INSERT INTO ensemble_lesson (lessonID, genre, minStudents, maxStudents)
VALUES 
(3, 'rock', 5, 10),
(4, 'classical', 3, 8);

-- Insert data into `group_lesson`
INSERT INTO group_lesson (lessonID, minStudents, maxStudents, instrument)
VALUES 
(1, 3, 10, 'Guitar'),
(2, 5, 15, 'Piano');

-- Insert data into `individual_lesson`
INSERT INTO individual_lesson (lessonID, instrument)
VALUES 
(1, 'Violin'),
(2, 'Keyboard');

-- Insert data into `contact_person`
INSERT INTO contact_person (firstName, lastName, studentID)
VALUES 
('Mary', 'Johnson', 1),
('James', 'Williams', 2),
('Linda', 'Brown', 3),
('Sarah', 'Miller', 4);

-- Insert data into `student_phone`
INSERT INTO student_phone (phoneNumber, studentID)
VALUES 
('123-456-7890', 1),
('987-654-3210', 2),
('456-123-7890', 3),
('789-654-1230', 4);

-- Insert data into `instructor_phone`
INSERT INTO instructor_phone (phoneNumber, instructorID)
VALUES 
('111-222-3333', 1),
('222-333-4444', 2),
('333-444-5555', 3),
('444-555-6666', 4);

-- Insert data into `contact_person_phone`
INSERT INTO contact_person_phone (phoneNumber, contact_personID)
VALUES 
('555-123-4567', 1),
('555-456-7890', 2),
('555-789-0123', 3),
('555-012-3456', 4);
