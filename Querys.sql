-- 1. The top 3 kids with more lateness by week and month-- Month
WITH RankedLates AS (
    SELECT 
        DATEADD(MONTH, DATEDIFF(MONTH, 0, Lates.date), 0) AS StartOfMonth,
        Students.idCard,
        COUNT(*) AS RecordCount,
        ROW_NUMBER() OVER (PARTITION BY DATEADD(MONTH, DATEDIFF(MONTH, 0, Lates.date), 0) 
                           ORDER BY COUNT(*) DESC) AS RowNum
    FROM Lates
    JOIN Students ON Lates.studentId = Students.id
    GROUP BY DATEADD(MONTH, DATEDIFF(MONTH, 0, Lates.date), 0), Students.idCard
)

SELECT StartOfMonth, idCard, RecordCount
FROM RankedLates
WHERE RowNum <= 3
ORDER BY StartOfMonth, idCard;

-- Week
WITH RankedLates AS (
    SELECT 
        DATEPART(WEEK, Lates.date) AS WeekNumber,
        Students.idCard,
        COUNT(*) AS RecordCount,
        ROW_NUMBER() OVER (PARTITION BY DATEPART(WEEK, Lates.date) 
                           ORDER BY COUNT(*) DESC) AS RowNum
    FROM Lates
    JOIN Students ON Lates.studentId = Students.id
    GROUP BY DATEPART(WEEK, Lates.date), Students.idCard
)

SELECT WeekNumber, idCard, RecordCount
FROM RankedLates
WHERE RowNum <= 3
ORDER BY WeekNumber, idCard;


-- 2. The top 2 siblings with lateness by week
WITH RankedLates AS (
    SELECT 
        DATEPART(WEEK, Lates.date) AS WeekNumber,
        Siblings.idCard,
        COUNT(*) AS RecordCount,
        ROW_NUMBER() OVER (PARTITION BY DATEPART(WEEK, Lates.date) 
                           ORDER BY COUNT(*) DESC) AS RowNum
    FROM Lates
    JOIN Students ON Lates.studentId = Students.id
	JOIN Siblings ON Siblings.idCard = Students.idCard
    GROUP BY DATEPART(WEEK, Lates.date), Siblings.idCard
)

SELECT WeekNumber, idCard, RecordCount
FROM RankedLates
WHERE RowNum <= 2
ORDER BY WeekNumber, idCard;




-- 3. They need to be able to get the information of their parents by student
SELECT
    S.idCard AS StudentId,
    S.name AS StudentName,
    S.lastName AS StudentLastName,
    P1.idCard AS FatherId,
    P1.name AS FatherName,
    P2.idCard AS MotherId,
    P2.name AS MotherName
FROM Students AS S
LEFT JOIN StudenParents AS SP ON S.id = SP.studentId
LEFT JOIN Parents AS P1 ON SP.fatherId = P1.id
LEFT JOIN Parents AS P2 ON SP.motherId = P2.id;


-- 4. The city that has the most students late

SELECT TOP 1
    D.city AS CityWithMostLateStudents,
    COUNT(L.studentId) AS NumberOfLates
FROM Direction AS D
INNER JOIN Parents AS P ON D.id = P.directionId
INNER JOIN StudenParents AS SP ON P.id = SP.fatherId OR P.id = SP.motherId
INNER JOIN Lates AS L ON SP.studentId = L.studentId
GROUP BY D.city;
