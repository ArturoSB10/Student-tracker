GO
CREATE TABLE Classes(
	id INT IDENTITY PRIMARY KEY,
	code NVARCHAR(3) UNIQUE NOT NULL,
    [description] NVARCHAR(50) NOT NULL,
);

GO
CREATE TABLE Grades(
	id INT IDENTITY PRIMARY KEY,
    number INT UNIQUE NOT NULL,
	code NVARCHAR(3) UNIQUE NOT NULL,
);

GO
CREATE TABLE Teachers (
    id INT IDENTITY PRIMARY KEY,
	idCard NVARCHAR(10) UNIQUE  NOT NULL,
    [name] NVARCHAR(50) NOT NULL,
	gradeId INT,
    classId INT,
	FOREIGN KEY (gradeId) REFERENCES Grades(id),
	FOREIGN KEY (classId) REFERENCES Classes(id)
);

GO
CREATE TABLE Direction (
    id INT IDENTITY PRIMARY KEY,
    street NVARCHAR(100) NOT NULL,
    city NVARCHAR(50) NOT NULL,
    [state] NVARCHAR(50) NOT NULL,
    postalCode NVARCHAR(10) NOT NULL
);

GO
CREATE TABLE Parents (
    id INT IDENTITY PRIMARY KEY,
	idCard NVARCHAR(10) UNIQUE  NOT NULL,
    [name] NVARCHAR(50) NOT NULL,
    contact NVARCHAR(100) NOT NULL,
    directionId INT,
    FOREIGN KEY (directionId) REFERENCES Direction(id)
);

GO
CREATE TABLE ParentsWork (
    id INT IDENTITY PRIMARY KEY,
    work NVARCHAR(100) NOT NULL,
    charge NVARCHAR(50) NOT NULL,
    workContact NVARCHAR(100) NOT NULL,
	parentId INT,
    FOREIGN KEY (parentId) REFERENCES Parents(id)
);

GO
CREATE TABLE Students (
    id INT IDENTITY PRIMARY KEY,
	idCard NVARCHAR(10) NOT NULL,
    [name] NVARCHAR(50) NOT NULL,
    lastName NVARCHAR(50) NOT NULL,
    age INT NOT NULL,
    gradeId INT,
    teacherId INT,
    parentId INT,
	FOREIGN KEY (gradeId) REFERENCES Grades(id),
    FOREIGN KEY (teacherId) REFERENCES Teachers(id),
    FOREIGN KEY (parentId) REFERENCES Parents(id)
);

GO
CREATE TABLE Siblings (
    id INT IDENTITY PRIMARY KEY,
	idCard NVARCHAR(10) NOT NULL,
	studentId INT,
	FOREIGN KEY (studentId) REFERENCES Students(id)
);

GO
CREATE TABLE StudenParents (
    studentId INT,
    fatherId INT,
    motherId INT,
    PRIMARY KEY (studentId),
    FOREIGN KEY (studentId) REFERENCES Students(id),
    FOREIGN KEY (fatherId) REFERENCES Parents(id),
    FOREIGN KEY (motherId) REFERENCES Parents(id)
);


GO 
CREATE TABLE Lates(
	id INT IDENTITY PRIMARY KEY,
	[date] DATETIME,
	studentId INT,
	FOREIGN KEY (studentId) REFERENCES Students(id)
);