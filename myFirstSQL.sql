CREATE TABLE instructor (
  instructorID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
  firstName VARCHAR(50) NOT NULL,
  lastName VARCHAR(50) NOT NULL,
  personNumber VARCHAR(12) NOT NULL,
  email VARCHAR(50) NOT NULL,
  adress VARCHAR(50) NOT NULL,
  zip VARCHAR(50) NOT NULL,
  city VARCHAR(50) NOT NULL
);

CREATE TABLE instructor_availability (
  instructorID INT NOT NULL,
  startTime VARCHAR(50) NOT NULL,
  endTime VARCHAR(50) NOT NULL,
  FOREIGN KEY (instructorID) REFERENCES instructor(instructorID) ON DELETE CASCADE
);

CREATE TABLE instrument (
  instrumentID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
  brand VARCHAR(50),
  type VARCHAR(50) NOT NULL,
  stock INT NOT NULL,
  locationOfInstrument VARCHAR(100) NOT NULL,
  rentalID INT,
  FOREIGN KEY (rentalID) REFERENCES rental(rentalID)
);

CREATE TABLE instruments_to_teach (
  instructorID INT NOT NULL,
  instrumentsTaught VARCHAR (500) NOT NULL,
  FOREIGN KEY (instructorID) REFERENCES instructor(instructorID) ON DELETE CASCADE
);

CREATE TABLE lesson (
  lessonID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
  instructorID INT NOT NULL,
  date TIMESTAMP(10) NOT NULL,
  FOREIGN KEY (instructorID) REFERENCES instructor(instructorID) ON DELETE CASCADE
);

CREATE TABLE student (
  studentID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
  firstName VARCHAR(50) NOT NULL,
  lastName VARCHAR(50) NOT NULL,
  personNumber VARCHAR(12) NOT NULL,
  email VARCHAR(50) NOT NULL,
  adress VARCHAR(50) NOT NULL,
  zip VARCHAR(50) NOT NULL,
  city VARCHAR(50) NOT NULL,
  studentID_0 INT,
  FOREIGN KEY (studentID_0) REFERENCES student(studentID) ON DELETE SET NULL
);

CREATE TABLE student_lesson (
  studentID INT NOT NULL,
  lessonID INT NOT NULL,
  PRIMARY KEY (studentID, lessonID),
  FOREIGN KEY (studentID) REFERENCES student(studentID),
  FOREIGN KEY (lessonID) REFERENCES lesson(lessonID),
);

CREATE TABLE rental (
  rentalID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
  studentID INT NOT NULL,
  instrumentID INT NOT NULL,
  dateOfRental DATE NOT NULL,
  dueDateOfRental DATE NOT NULL,
  FOREIGN KEY (studentID) REFERENCES student(studentID),
  FOREIGN KEY (instrumentID) REFERENCES instrument(instrumentID)
);

CREATE TABLE price_list (
  lessonID INT NOT NULL,
  price INT NOT NULL,
  lessonType ENUM (individuallesson, grouplesson, ensemblelesson) NOT NULL,
  lessonSkill ENUM (beginner, intermediate, advanced) NOT NULL,
  FOREIGN KEY (lessonID) REFERENCES lesson(lessonID)
);

CREATE TABLE ensemble_lesson (
  ensemble_lessonID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
  lessonID INT,
  genre ENUM (punk, rock, classical) NOT NULL,
  minStudents INT NOT NULL,
  maxStudents INT NOT NULL,
  FOREIGN KEY (lessonID) REFERENCES lesson(lessonID)
);

CREATE TABLE group_lesson (
  group_lessonID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
  lessonID INT,
  minStudents INT NOT NULL,
  maxStudents INT NOT NULL,
  instrument VARCHAR(50) NOT NULL,
  FOREIGN KEY (lessonID) REFERENCES lesson(lessonID)
);

CREATE TABLE individual_lesson (
  individual_lessonID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
  lessonID INT,
  instrument VARCHAR(50) NOT NULL,
  FOREIGN KEY (lessonID) REFERENCES lesson(lessonID)
);

CREATE TABLE contact_person (
  firstName VARCHAR(50) NOT NULL,
  lastName VARCHAR(50) NOT NULL,
  StudentID INT NOT NULL,
  FOREIGN KEY (studentID) REFERENCES student(studentID) ON DELETE CASCADE
);

CREATE TABLE student_phone (
    phoneNumber VARCHAR(15) NOT NULL,
    studentID INT,
    FOREIGN KEY (studentID) REFERENCES student(studentID) ON DELETE CASCADE,
);

CREATE TABLE instructor_phone (
    phoneNumber VARCHAR(15) NOT NULL,
    instructorID INT,
    FOREIGN KEY (instructorID) REFERENCES instructor(instructorID) ON DELETE CASCADE,
);

CREATE TABLE contact_person_phone (
    phoneNumber VARCHAR(15) NOT NULL,
    contact_personID INT,
    FOREIGN KEY (contact_personID) REFERENCES contact_person(contact_personID) ON DELETE CASCADE,
);
