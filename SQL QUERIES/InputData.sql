


USE PkSchool;

INSERT INTO Assignments (Title,Description,SubDate,OralMark,TotalMark)
VALUES 
('Website','Build a website using HTML-CSS-JS','2021-06-26',70,90),
('OOP','Build a databse with classes','2021-07-10',80, 95),
('Tic Tac Toe','Build the game tic tac toe','2021-07-25',80, 100),
('API','Build an application using API','2021-08-11', 80, 95),
('AIR TICKET','Build an application for booking airtickets','2021-08-24',80, 100),
('Game','Build a game with two players','2021-09-12',60, 90),
('WebDesign','Build a website using HTML-CSS-Bootstrap','2021-09-25',70, 90),
('Uiversity Grade Claculator', 'A calculator of grades','2021-06-30', 70, 90),
('Fast Food Management', 'Build a fast food shop', '2021-07-28', 80, 95), 
('Employee Wage Calcualtor', 'Build an employee salary calculator', '2021-08-22', 80, 100),
('Paint App', 'An app for painting', '2021-09-15', 80, 95), 
('Flappy Bird', 'Flappy Bird game', '2021-10-10', 80, 100),
('Hospital Management', 'A hospital appointment arrange system','2021-10-30', 60, 90),
('Text Editor', 'A text editor for windows', '2021-12-15', 70, 90),
('Car Accessories System', 'Buy a car accessorie','2021-06-30', 70, 90),
('Coffe Shop','Coffe shop management system', '2021-07-17', 80, 95),
('Payroll Manager', 'Paying your taxes','2021-08-02', 80, 100), 
('Supplier Management', 'Supply system','2021-08-21', 80, 95),
('Pacaman Shooter', 'Pacman game', '2021-09-10', 80, 100),
('School System', 'School management system','2021-09-20', 60, 90),
('Contanct Book', 'Build a contact book','2021-09-27', 70, 90),
('Ludo Game', 'Built a ludo game','2021-06-30', 70, 90),
('Puzzle Game', 'Make a puzzle','2021-07-18', 80, 95),
('Pharmacy Shop', 'Build a pharmacy shop','2021-08-03', 80, 100),
('Quiz Game', 'Build a quiz game', '2021-08-24', 80, 95),
('Super Market', 'Build a super market','2021-09-15', 80, 100),
('Image Processing', 'Build an image processor','2021-10-27', 60, 90),
('Music Player', 'Build a music player','2021-12-20', 70, 90);


INSERT INTO Students(FirstName,LastName,DateOfBirth,TuitionFees)
VALUES
('Panagiotis', 'Kempas','1996-07-21', 2500), 
('Labros', 'Papadimitriou','1993-11-01', 3500),
('Antonis', 'Chamailidis', '1992-02-11', 3000),
('Spyros', 'Dellis','1990-06-07', 2500),
('Christos', 'Dimitrakopoulos','1989-04-13', 3700),
('Christos', 'Karamolegkos','1991-01-27', 4000),
('Konstantinos', 'Dimitriou','1995-03-25', 3500),
('Triantafilia', 'Dwnou','1994-04-22', 2500),
('Nikos', 'Filiopoulos','1988-05-11', 2000), 
('Iosif', 'Vasou','1990-10-30', 4500),
('Vasiliki', 'Kalantzi', '1988-12-17', 2000),
('Ioannis', 'Karakasidis','1990-08-31', 3000),
('Anna', 'Kitou', '1992-11-18', 2500),
('Kostas','Likos', '1993-01-07', 4000),
('Giannis', 'Michailidis','1991-08-30', 3000),
('Leonidas', 'Mourikis','1985-07-25', 3500), 
('Natalia', 'Papadatou','1994-06-08', 2500),
('Androniki','Theofylaktidou','1996-05-10', 4000),
('Rafail', 'Tsikriteas','1991-02-19', 3500),
('Giannis', 'Kyriakopoulos','1992-04-15', 3000),
('Alexandra', 'Alexandridou','1994-05-18', 2500), 
('Spyros', 'Zaxos','1991-09-07', 4000),
('Giorgos', 'Xiwnis','1990-06-08', 2500), 
('Gwgw', 'Ntintifa', '1989-11-15', 4000), 
('Evelina', 'Georgiou','1994-08-19', 2500),
('Nikos', 'Sideris', '1991-07-21', 3000), 
('Antreas', 'Patsima','1991-08-27', 2500), 
('Spyros', 'Stamou','1992-01-15', 4000); 


INSERT INTO Trainers(FirstName,LastName,Subject)
VALUES
('ktoras', 'Gkatsos', 'C#'), 
('Giorgos', 'Pasparakis', 'Java'),
('Alexandros', 'Papanikas', 'C#'),
('Themis', 'Kalogirou', 'OOP'),
('Eleni', 'Papadima', 'Javascript'),
('Thanasis', 'Diwgenis', 'HTML-CSS'),
('Mixalhs', 'Anagnwstou', 'SQL'),
('Zwh', 'Andreou', 'Python'); 


INSERT INTO Courses(Title,Stream,Type,StartDate,EndDate)
VALUES
('C#', 'CB14', 'Full-Time','2021-06-11','2021-09-30'),
('C#','CB14', 'Part-Time','2021-06-10','2021-12-22'),
('Java', 'CB15', 'Full-Time','2021-06-15','2021-09-29'),
('Java','CB15', 'Part-Time','2021-06-18','2021-12-23');

INSERT INTO AssignmentCourse(Course_Id,Assignment_Id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(4, 22),
(4, 23),
(4, 24),
(4, 25),
(4, 26),
(4, 27),
(4, 28);

INSERT INTO StudentCourse(Course_Id,Student_Id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(4, 22),
(4, 23),
(4, 24),
(4, 25),
(4, 26),
(4, 27),
(4, 28),
(1, 25),
(2, 15),
(3, 10),
(4, 9);


INSERT INTO TrainerCourse(Course_Id,Trainer_Id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(1, 8),
(1, 7),
(2, 6),
(2, 5),
(3, 4),
(3, 3),
(4, 2),
(4, 1);



-----------------PROCEDURES---------------------------------------

CREATE PROCEDURE InsertCourse 
( @Title VARCHAR(50), @Stream VARCHAR(30), @Type VARCHAR(50), @StartDate DATE, @EndDate DATE) 
AS
BEGIN
INSERT INTO Courses(Title,Stream,Type,StartDate,EndDate) 
VALUES (@Title,@Stream,@Type,@StartDate,@EndDate)
END


CREATE PROCEDURE InsertStudent
( @FirstName VARCHAR(50) , @LastName VARCHAR(50), @DateOfBirth DATE, @TuitionFees INT)
AS
BEGIN
INSERT INTO Students (FirstName,LastName,DateOfBirth,TuitionFees)
VALUES (@FirstName,@LastName,@DateOfBirth,@TuitionFees)
END


CREATE PROCEDURE InsertTrainer
( @FirstName VARCHAR(50) , @LastName VARCHAR(50), @Subject VARCHAR(50))
AS
BEGIN
INSERT INTO Trainers (FirstName,LastName,Subject)
VALUES (@FirstName,@LastName,@Subject)
END


CREATE PROCEDURE InsertAssignment
( @Title VARCHAR(50), @Description VARCHAR(150), @SubDate DATE, @OralMark INT, @TotalMark INT)
AS
BEGIN
INSERT INTO Assignments(Title,Description,SubDate,OralMark,TotalMark)
VALUES (@Title,@Description,@SubDate,@OralMark,@TotalMark)
END
