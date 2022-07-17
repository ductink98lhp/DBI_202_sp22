-- QUERY --


-- INDEXES --

CREATE INDEX Stu_Name ON Students([Last_Name], [First_Name])

CREATE INDEX Lec_Name ON Lectures([Last_Name], [First_Name])

SELECT * FROM Students WHERE [Last_Name] = N'Nguyễn Văn' AND [First_Name] = 'A'

-- VIEW --

CREATE VIEW View_Assess_AssessSystem AS
SELECT Classes.ClassID, Enroll.GrID, AsgID, Semester, [Start_Date], [End_Date], Assess.AssID, [AS].CouID, [AS].CatID, [Num_of_Ques], Duration, [Weigh]
FROM 
	Classes INNER JOIN Enroll ON Classes.ClassID = Enroll.ClassID
			INNER JOIN Assess ON Classes.ClassID = Assess.ClassID
			INNER JOIN [Assessment_System] AS [AS] ON [AS].AssID = Assess.AssID

SELECT * FROM View_Assess_AssessSystem

-- TRIGGER -- 

CREATE TRIGGER View_Average ON [View_Students_Classes]
AFTER INSERT, UPDATE
AS
	DECLARE @AVG FLOAT;
	DECLARE @CLASS VARCHAR(50);
	DECLARE @STU VARCHAR(50);
	DECLARE @AVERAGE FLOAT;
	DECLARE @STA VARCHAR(50);
	SELECT @STU = StudentID, @CLASS = ClassID, @AVG = Average, @STA = [Status] FROM inserted;

	SELECT @AVERAGE = SUM(Score * [Weigh])  
	FROM 
		JOIN_Groups_Students AS J INNER JOIN Enroll ON J.GrID = Enroll.GrID
					INNER JOIN [dbo].View_Assess_AssessSystem AS VAA ON VAA.ClassID = Enroll.ClassID AND VAA.GrID = J.GrID
					INNER JOIN Grade ON J.StudentID = Grade.StudentID AND Grade.AssID = VAA.AssID
	WHERE J.StudentID = @STU AND VAA.ClassID = @CLASS
	GROUP BY J.StudentID, VAA.ClassID, VAA.CouID, VAA.GrID
	IF @AVG <> @AVERAGE
	BEGIN
		PRINT 'Average score added to [View] was not corresponding to the average scored counted from [Grade]'
		ROLLBACK TRAN
	END
	ELSE IF (NOT @STA = 'PASSED') AND (NOT @STA = 'NOT PASSED')
	BEGIN
		PRINT 'Status must be passed or not passed'
		ROLLBACK TRAN
	END
	ELSE IF (@AVG <= 4 AND @STA = 'PASSED') OR (@AVG > 4 AND @STA = 'NOT PASSED')
	BEGIN
		PRINT 'Incorrect Status'
		ROLLBACK TRAN
	END
	
	UPDATE [View_Students_Classes] SET Average = 8.645, [Status] = 'ASDFK' WHERE StudentID = 'HE00001' AND ClassID = 'FA21APRO'

	SELECT * FROM [View_Students_Classes]

-- STORED PROCEDURE -- 

CREATE PROCEDURE Count_Student
	@GR VARCHAR(50),
	@COUNT INT OUT
AS
BEGIN
	SELECT @COUNT = COUNT(StudentID) FROM JOIN_Groups_Students WHERE GrID = @GR
END

DECLARE @NumOfStu INT = 0;
EXEC Count_Student @GR = 'IA1604', @COUNT = @NumOfStu OUT
PRINT @NumOfStu;


-- 10 REQUIRED QUERIES -- 

-- 1: A QUERY THAT USES ORDER BY --

SELECT * FROM Students ORDER BY [First_Name], [Last_Name]


-- 2: A QUERY THAT USES INNER JOIN --

SELECT Students.StudentID, [Last_Name], [First_Name], Classes.ClassID, AsgID, Semester, [Start_Date], [End_Date] 
FROM
	Students INNER JOIN JOIN_Groups_Students ON Students.StudentID = JOIN_Groups_Students.StudentID
			 INNER JOIN Enroll ON Enroll.GrID = JOIN_Groups_Students.GrID
			 INNER JOIN Classes ON Enroll.ClassID = Classes.ClassID
			 


-- 3: A QUERY THAT ESES AGGREGATE FUNCTION --

SELECT Lectures.LecID, [Last_Name], [First_Name], Semester, COUNT(Assignment.AsgID) AS Assigned 
FROM 
	Lectures INNER JOIN Assignment ON Lectures.LecID = Assignment.LecID
			  INNER JOIN Classes ON Assignment.AsgID = Classes.AsgID
GROUP BY Lectures.LecID, [Last_Name], [First_Name], Semester


-- 4: A QUERY THAT USES GROUP BY AND HAVING -- 

SELECT Lectures.LecID, [Last_Name], [First_Name], Semester, Enroll.GrID, Enroll.ClassID, COUNT(StudentID) AS [Num of Students]    
FROM
	Lectures INNER JOIN Assignment ON Lectures.LecID = Assignment.LecID
			  INNER JOIN Classes ON Classes.AsgID = Assignment.AsgID
			  INNER JOIN Enroll ON Classes.ClassID = Enroll.ClassID
			  INNER JOIN JOIN_Groups_Students ON Enroll.GrID = JOIN_Groups_Students.GrID
GROUP BY Lectures.LecID, [Last_Name], [First_Name], Semester, Enroll.GrID, Enroll.ClassID
HAVING Lectures.LecID = 'GVA'


-- 5: A QUERY THAT USES A SUB-QUERY AS A RELATION --

SELECT LEC.LecID, LEC.[Last_Name], LEC.[First_Name], Major, Semester, CouID, [AS].CatID,Details
FROM 
	(SELECT LecID,[Last_Name], [First_Name] FROM Lectures) AS LEC
		INNER JOIN 
			Assignment 
			ON Assignment.LecID = LEC.LecID
		INNER JOIN 
			(SELECT ClassID, AsgID, Semester FROM Classes) AS CLASS 
			ON Assignment.AsgID = CLASS.AsgID
		INNER JOIN 
			Assess 
			ON Assess.ClassID = CLASS.ClassID
		INNER JOIN
			(SELECT AssID, CouID, CatID,GuideID FROM [Assessment_System]) AS [AS]
			ON Assess.AssID = [AS].AssID
		INNER JOIN 
			Categories
			ON [AS].CatID = Categories.CatID
		INNER JOIN 
			Guide
			on [AS].GuideID = Guide.GuideID
ORDER BY LEC.LecID, Major, Semester, CatID


-- 6: A QUERY THAT USES A SUB-QUERY IN THE WHERE CLAUSE --

SELECT J.StudentID, J.GrID, Enroll.ClassID, CONCAT([Last_Name], ' ', [First_Name]) AS Lecture, CouID, CatID, Score, [Date]  
FROM
	JOIN_Groups_Students AS J INNER JOIN Enroll ON J.GrID = Enroll.GrID
				INNER JOIN View_Assess_AssessSystem AS VAA ON Enroll.ClassID = VAA.ClassID AND Enroll.GrID = VAA.GrID
				INNER JOIN Assignment ON Assignment.AsgID = VAA.AsgID 
				INNER JOIN Lectures ON Assignment.LecID = Lectures.LecID
				INNER JOIN Grade ON Grade.StudentID = J.StudentID AND Grade.AssID = VAA.AssID 
WHERE J.StudentID = (SELECT StudentID FROM Students WHERE [First_Name] = 'A' AND [Last_Name] = N'Nguyễn Văn')


-- 7: A QUERY THAT USES PARTIAL MATCHING IN THE WHERE CLAUSE --

SELECT J.StudentID, CONCAT([Last_Name], ' ', [First_Name]) AS [Student Name], ClassID, Average, [Status]
FROM 
	Students INNER JOIN JOIN_Groups_Students AS J ON Students.StudentID = J.StudentID 
			 INNER JOIN [View_Students_Classes] AS V ON J.StudentID = V.StudentID
WHERE ClassID LIKE 'FA21%'


-- 8: A QUERY THAT USES A SELF-JOIN --

SELECT Lectures.LecID, Lectures.Email, CONCAT(Lectures.[Last_Name], ' ', Lectures.[First_Name]) AS Lecture, CONCAT(LEADER.[Last_Name], ' ', LEADER.[First_Name]) AS [Leader] 
FROM Lectures LEFT JOIN Lectures AS [LEADER] ON Lectures.Report = LEADER.LecID


-- 9 --

SELECT Lectures.LecID, Lectures.Email, CONCAT(Lectures.[Last_Name], ' ', Lectures.[First_Name]) AS Lecture, Report, Major, Courses.[CName], Semester, Students.StudentID, CONCAT(Students.[Last_Name], ' ', Students.[First_Name]) AS [Student Name], Students.Email, Students.Gender
FROM
	Lectures INNER JOIN Assignment ON Lectures.LecID = Assignment.LecID
			  INNER JOIN Courses ON Courses.CouID = Assignment.Major
			  INNER JOIN Classes ON Classes.AsgID = Assignment.AsgID
			  INNER JOIN Enroll ON Classes.ClassID = Enroll.ClassID
			  INNER JOIN JOIN_Groups_Students ON JOIN_Groups_Students.GrID = Enroll.GrID
			  INNER JOIN Students ON Students.StudentID = JOIN_Groups_Students.StudentID
ORDER BY Lectures.LecID, Semester, Students.StudentID, Major


-- 10 --

SELECT Lectures.LecID, Lectures.Email AS [LecID Email], CONCAT(Lectures.[Last_Name], ' ', Lectures.[First_Name]) AS Lecture, J.GrID, CouID, J.StudentID, CONCAT(Students.[Last_Name], ' ', Students.[First_Name]) AS [Student Name], CatID, Score, [Date]
FROM
	Lectures INNER JOIN Assignment ON Lectures.LecID = Assignment.LecID
			  INNER JOIN View_Assess_AssessSystem AS VAA ON VAA.AsgID = Assignment.AsgID
			  INNER JOIN Enroll ON Enroll.ClassID = VAA.ClassID
			  INNER JOIN JOIN_Groups_Students AS J ON J.GrID = Enroll.GrID
			  INNER JOIN Students ON Students.StudentID = J.StudentID
			  INNER JOIN Grade ON J.StudentID = Grade.StudentID AND VAA.AssID = Grade.AssID
			  





			 
	









