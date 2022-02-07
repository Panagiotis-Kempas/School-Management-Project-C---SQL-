--QUERIES ERWTIMATA

USE PkSchool;
--A list of all the students
CREATE VIEW AllStudents AS Select * From STUDENTS;

SELECT * FROM AllStudents;
--A list of all the trainers
CREATE VIEW AllTrainers AS Select * From TRAINERS;

SELECT * FROM AllTrainers;
--A list of all the assignments
 CREATE VIEW AllAssignments AS Select * From ASSIGNMENTS;

SELECT * FROM AllAssignments;
--A list of all the courses
CREATE VIEW AllCourses As Select * From COURSES;

SELECT * FROM AllCourses;

--All the students per course

CREATE VIEW StudentsPerCourse AS
SELECT FirstName,LastName,Title,Stream,Type FROM Students
INNER JOIN StudentCourse
ON Students.Student_Id = StudentCourse.Student_Id
INNER JOIN Courses
ON StudentCourse.Course_Id = Courses.Course_Id;

SELECT * FROM StudentsPerCourse

--All the trainers per course
CREATE VIEW TrainersPerCourse AS
SELECT FirstName,LastName,Title,Stream,Type FROM Trainers
INNER JOIN TrainerCourse
ON Trainers.Trainer_Id = TrainerCourse.Trainer_Id
INNER JOIN Courses
ON TrainerCourse.Course_Id = Courses.Course_Id;

SELECT * FROM TrainersPerCourse;

--All the assignments per course

SELECT c.Title,c.Stream,c.Type,a.Title,a.Description FROM Courses c
INNER JOIN AssignmentCourse d
ON d.Course_Id = c.Course_Id
INNER JOIN Assignments a
ON a.Assignment_Id = d.Assignment_Id;

--All the assignments per course per student

SELECT c.Title,c.Stream,c.Type,a.Title,a.Description,s.FirstName,s.LastName FROM Assignments a
INNER JOIN AssignmentCourse ca
ON a.Assignment_Id = ca.Assignment_Id
INNER JOIN Courses c
ON ca.Course_Id = c.Course_Id
INNER JOIN StudentCourse cs
ON c.Course_Id = cs.Course_Id
INNER JOIN Students s
ON s.Student_Id = cs.Student_Id;


--A list of students that belong to more than one courses

SELECT s.FirstName,s.LastName,s.Student_Id,COUNT(cs.Course_Id) AS NumberOfCourses FROM StudentCourse cs
INNER JOIN Students s
ON s.Student_Id = cs.Student_Id
GROUP BY s.Student_Id,s.FirstName,s.LastName  HAVING COUNT(cs.Course_Id) > 1;

