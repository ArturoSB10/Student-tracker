INSERT INTO Classes (description, code) VALUES
('Class 1', '001'),
('Class 2', '002'),
('Class 3', '003');

GO
INSERT INTO Grades (number, code) VALUES
(1, '001'),
(2, '002'),
(3, '003');

GO
INSERT INTO Teachers (idCard, name, gradeId, classId) VALUES
('1234567889', 'Teacher 1', (SELECT id FROM Grades WHERE code = '001'), (SELECT id FROM Classes WHERE code = '001')),
('1234567879', 'Teacher 2', (SELECT id FROM Grades WHERE code = '002'), (SELECT id FROM Classes WHERE code = '002')),
('3451212345', 'Teacher 3', (SELECT id FROM Grades WHERE code = '003'), (SELECT id FROM Classes WHERE code = '003'));

GO
INSERT INTO Direction(street, city, state, postalCode) VALUES
('Stree 1', 'City 1', 'State 1', '001'),
('Stree 2', 'City 2', 'State 2', '002'),
('Stree 3', 'City 3', 'State 3', '003'),
('Stree 4', 'City 4', 'State 4', '004'),
('Stree 5', 'City 5', 'State 5', '005');

GO
INSERT INTO Parents(idCard, name, contact, directionId) VALUES
('1234567890', 'Parent 1', '123-123', (SELECT id FROM Direction WHERE postalCode = '001')),
('1234567891', 'Parent 2', '123-122', (SELECT id FROM Direction WHERE postalCode = '001')),
('1234567892', 'Parent 3', '123-121', (SELECT id FROM Direction WHERE postalCode = '001')),
('1234567893', 'Parent 4', '123-111', (SELECT id FROM Direction WHERE postalCode = '002')),
('1234567894', 'Parent 5', '123-222', (SELECT id FROM Direction WHERE postalCode = '002')),
('1234567895', 'Parent 6', '123-321', (SELECT id FROM Direction WHERE postalCode = '002')),
('1234567896', 'Parent 7', '123-234', (SELECT id FROM Direction WHERE postalCode = '003')),
('1234567897', 'Parent 8', '123-333', (SELECT id FROM Direction WHERE postalCode = '003')),
('1234567898', 'Parent 9', '123-112', (SELECT id FROM Direction WHERE postalCode = '003')),
('1234567899', 'Parent 10', '123-345', (SELECT id FROM Direction WHERE postalCode = '003')),
('1234567889', 'Parent 5', '123-222', (SELECT id FROM Direction WHERE postalCode = '002')),
('1234567879', 'Parent 6', '123-321', (SELECT id FROM Direction WHERE postalCode = '002')),
('1234567869', 'Parent 7', '123-234', (SELECT id FROM Direction WHERE postalCode = '003')),
('1234567859', 'Parent 8', '123-333', (SELECT id FROM Direction WHERE postalCode = '003')),
('1234567849', 'Parent 9', '123-112', (SELECT id FROM Direction WHERE postalCode = '003')),
('1234567839', 'Parent 10', '123-345', (SELECT id FROM Direction WHERE postalCode = '003')),
('1234567829', 'Parent 10', '123-345', (SELECT id FROM Direction WHERE postalCode = '003')),
('1234567809', 'Parent 10', '123-345', (SELECT id FROM Direction WHERE postalCode = '003')),
('1234567189', 'Parent 10', '123-345', (SELECT id FROM Direction WHERE postalCode = '003')),
('1234567819', 'Parent 10', '123-345', (SELECT id FROM Direction WHERE postalCode = '003'));


GO
INSERT INTO ParentsWork(work, charge, workContact, parentId) VALUES
('Work 1', 'Charge 1', '999-123', (SELECT id FROM Parents WHERE idCard = '1234567891')),
('Work 2', 'Charge 2', '999-122', (SELECT id FROM Parents WHERE idCard = '1234567899')),
('Work 3', 'Charge 3', '999-121', (SELECT id FROM Parents WHERE idCard = '1234567897')),
('Work 4', 'Charge 4', '999-112', (SELECT id FROM Parents WHERE idCard = '1234567891')),
('Work 5', 'Charge 5', '999-131', (SELECT id FROM Parents WHERE idCard = '1234567894'));



GO
INSERT INTO Students(idCard, name, lastName, age, gradeId, teacherId, parentId) VALUES
('9876543210', 'Student 1', 'Last Name 1', 7, (SELECT id FROM Grades WHERE code = '001'), (SELECT id FROM Teachers WHERE idCard = '1234567889'), (SELECT id FROM Parents WHERE idCard = '1234567890')),
('9876543211', 'Student 2', 'Last Name 2', 7, (SELECT id FROM Grades WHERE code = '002'), (SELECT id FROM Teachers WHERE idCard = '1234567889'), (SELECT id FROM Parents WHERE idCard = '1234567890')),
('9876543212', 'Student 3', 'Last Name 3', 7, (SELECT id FROM Grades WHERE code = '003'), (SELECT id FROM Teachers WHERE idCard = '1234567889'), (SELECT id FROM Parents WHERE idCard = '1234567890')),
('9876543213', 'Student 4', 'Last Name 4', 7, (SELECT id FROM Grades WHERE code = '002'), (SELECT id FROM Teachers WHERE idCard = '1234567889'), (SELECT id FROM Parents WHERE idCard = '1234567891')),
('9876543214', 'Student 5', 'Last Name 5', 7, (SELECT id FROM Grades WHERE code = '003'), (SELECT id FROM Teachers WHERE idCard = '1234567889'), (SELECT id FROM Parents WHERE idCard = '1234567892')),
('9876543215', 'Student 6', 'Last Name 6', 7, (SELECT id FROM Grades WHERE code = '002'), (SELECT id FROM Teachers WHERE idCard = '1234567879'), (SELECT id FROM Parents WHERE idCard = '1234567893')),
('9876543216', 'Student 7', 'Last Name 7', 7, (SELECT id FROM Grades WHERE code = '003'), (SELECT id FROM Teachers WHERE idCard = '1234567879'), (SELECT id FROM Parents WHERE idCard = '1234567893')),
('9876543217', 'Student 8', 'Last Name 8', 7, (SELECT id FROM Grades WHERE code = '001'), (SELECT id FROM Teachers WHERE idCard = '1234567879'), (SELECT id FROM Parents WHERE idCard = '1234567893')),
('9876543218', 'Student 9', 'Last Name 9', 7, (SELECT id FROM Grades WHERE code = '002'), (SELECT id FROM Teachers WHERE idCard = '1234567879'), (SELECT id FROM Parents WHERE idCard = '1234567894')),
('9876543219', 'Student 10', 'Last Name 10', 7, (SELECT id FROM Grades WHERE code = '003'), (SELECT id FROM Teachers WHERE idCard = '1234567879'), (SELECT id FROM Parents WHERE idCard = '1234567894')),
('9876543220', 'Student 11', 'Last Name 11', 7, (SELECT id FROM Grades WHERE code = '001'), (SELECT id FROM Teachers WHERE idCard = '1234567879'), (SELECT id FROM Parents WHERE idCard = '1234567895')),
('9876543230', 'Student 12', 'Last Name 12', 7, (SELECT id FROM Grades WHERE code = '002'), (SELECT id FROM Teachers WHERE idCard = '1234567879'), (SELECT id FROM Parents WHERE idCard = '1234567896')),
('9876543240', 'Student 13', 'Last Name 13', 7, (SELECT id FROM Grades WHERE code = '003'), (SELECT id FROM Teachers WHERE idCard = '1234567879'), (SELECT id FROM Parents WHERE idCard = '1234567897')),
('9876543250', 'Student 14', 'Last Name 14', 7, (SELECT id FROM Grades WHERE code = '002'), (SELECT id FROM Teachers WHERE idCard = '1234567879'), (SELECT id FROM Parents WHERE idCard = '1234567897')),
('9876543260', 'Student 15', 'Last Name 15', 7, (SELECT id FROM Grades WHERE code = '001'), (SELECT id FROM Teachers WHERE idCard = '3451212345'), (SELECT id FROM Parents WHERE idCard = '1234567897')),
('9876543270', 'Student 16', 'Last Name 16', 7, (SELECT id FROM Grades WHERE code = '002'), (SELECT id FROM Teachers WHERE idCard = '3451212345'), (SELECT id FROM Parents WHERE idCard = '1234567898')),
('9876543280', 'Student 17', 'Last Name 17', 7, (SELECT id FROM Grades WHERE code = '003'), (SELECT id FROM Teachers WHERE idCard = '3451212345'), (SELECT id FROM Parents WHERE idCard = '1234567898')),
('9876543290', 'Student 18', 'Last Name 18', 7, (SELECT id FROM Grades WHERE code = '001'), (SELECT id FROM Teachers WHERE idCard = '3451212345'), (SELECT id FROM Parents WHERE idCard = '1234567898')),
('9876543310', 'Student 19', 'Last Name 19', 7, (SELECT id FROM Grades WHERE code = '002'), (SELECT id FROM Teachers WHERE idCard = '3451212345'), (SELECT id FROM Parents WHERE idCard = '1234567891')),
('9876543410', 'Student 20', 'Last Name 20', 7, (SELECT id FROM Grades WHERE code = '003'), (SELECT id FROM Teachers WHERE idCard = '3451212345'), (SELECT id FROM Parents WHERE idCard = '1234567899'));

GO
INSERT INTO Siblings(idCard, studentId) VALUES
('9876543211', (SELECT id FROM Students WHERE idCard = '9876543212')),
('9876543211', (SELECT id FROM Students WHERE idCard = '9876543213')),
('9876543211', (SELECT id FROM Students WHERE idCard = '9876543214')),
('9876543212', (SELECT id FROM Students WHERE idCard = '9876543211')),
('9876543212', (SELECT id FROM Students WHERE idCard = '9876543213')),
('9876543212', (SELECT id FROM Students WHERE idCard = '9876543214')),
('9876543213', (SELECT id FROM Students WHERE idCard = '9876543211')),
('9876543213', (SELECT id FROM Students WHERE idCard = '9876543212')),
('9876543213', (SELECT id FROM Students WHERE idCard = '9876543214')),
('9876543214', (SELECT id FROM Students WHERE idCard = '9876543211')),
('9876543214', (SELECT id FROM Students WHERE idCard = '9876543212')),
('9876543214', (SELECT id FROM Students WHERE idCard = '9876543213')),
('9876543250', (SELECT id FROM Students WHERE idCard = '9876543260')),
('9876543260', (SELECT id FROM Students WHERE idCard = '9876543250'));



GO
INSERT INTO StudenParents(studentId, fatherId, motherId) VALUES
((SELECT id FROM Students WHERE idCard = '9876543210'), (SELECT id FROM Parents WHERE idCard = '1234567891'), (SELECT id FROM Parents WHERE idCard = '1234567890')),
((SELECT id FROM Students WHERE idCard = '9876543211'), (SELECT id FROM Parents WHERE idCard = '1234567892'), (SELECT id FROM Parents WHERE idCard = '1234567893')),
((SELECT id FROM Students WHERE idCard = '9876543212'), (SELECT id FROM Parents WHERE idCard = '1234567892'), (SELECT id FROM Parents WHERE idCard = '1234567893')),
((SELECT id FROM Students WHERE idCard = '9876543213'), (SELECT id FROM Parents WHERE idCard = '1234567892'), (SELECT id FROM Parents WHERE idCard = '1234567893')),
((SELECT id FROM Students WHERE idCard = '9876543214'), (SELECT id FROM Parents WHERE idCard = '1234567892'), (SELECT id FROM Parents WHERE idCard = '1234567893')),
((SELECT id FROM Students WHERE idCard = '9876543215'), (SELECT id FROM Parents WHERE idCard = '1234567894'), (SELECT id FROM Parents WHERE idCard = '1234567895')),
((SELECT id FROM Students WHERE idCard = '9876543216'), (SELECT id FROM Parents WHERE idCard = '1234567889'), (SELECT id FROM Parents WHERE idCard = '1234567879')),
((SELECT id FROM Students WHERE idCard = '9876543217'), (SELECT id FROM Parents WHERE idCard = '1234567869'), (SELECT id FROM Parents WHERE idCard = '1234567859')),
((SELECT id FROM Students WHERE idCard = '9876543218'), (SELECT id FROM Parents WHERE idCard = '1234567895'), (SELECT id FROM Parents WHERE idCard = '1234567895')),
((SELECT id FROM Students WHERE idCard = '9876543219'), (SELECT id FROM Parents WHERE idCard = '1234567849'), (SELECT id FROM Parents WHERE idCard = '1234567839')),
((SELECT id FROM Students WHERE idCard = '9876543220'), (SELECT id FROM Parents WHERE idCard = '1234567829'), (SELECT id FROM Parents WHERE idCard = '1234567819')),
((SELECT id FROM Students WHERE idCard = '9876543230'), (SELECT id FROM Parents WHERE idCard = '1234567896'), (SELECT id FROM Parents WHERE idCard = '1234567897')),
((SELECT id FROM Students WHERE idCard = '9876543240'), (SELECT id FROM Parents WHERE idCard = '1234567809'), (SELECT id FROM Parents WHERE idCard = '1234567189')),
((SELECT id FROM Students WHERE idCard = '9876543250'), (SELECT id FROM Parents WHERE idCard = '1234567898'), (SELECT id FROM Parents WHERE idCard = '1234567899')),
((SELECT id FROM Students WHERE idCard = '9876543260'), (SELECT id FROM Parents WHERE idCard = '1234567898'), (SELECT id FROM Parents WHERE idCard = '1234567899'));

GO 
INSERT INTO Lates(date, studentId) VALUES
(CONVERT(DATETIME, '2023/09/01'), (SELECT id FROM Students WHERE idCard = '9876543210')),
(CONVERT(DATETIME, '2023/08/01'), (SELECT id FROM Students WHERE idCard = '9876543211')),
(CONVERT(DATETIME, '2023/09/02'), (SELECT id FROM Students WHERE idCard = '9876543210')),
(CONVERT(DATETIME, '2023/09/03'), (SELECT id FROM Students WHERE idCard = '9876543210')),
(CONVERT(DATETIME, '2023/09/04'), (SELECT id FROM Students WHERE idCard = '9876543210')),
(CONVERT(DATETIME, '2023/09/05'), (SELECT id FROM Students WHERE idCard = '9876543210')),
(CONVERT(DATETIME, '2023/09/06'), (SELECT id FROM Students WHERE idCard = '9876543210')),
(CONVERT(DATETIME, '2023/08/30'), (SELECT id FROM Students WHERE idCard = '9876543211')),
(CONVERT(DATETIME, '2023/08/27'), (SELECT id FROM Students WHERE idCard = '9876543211')),
(CONVERT(DATETIME, '2023/06/03'), (SELECT id FROM Students WHERE idCard = '9876543212')),
(CONVERT(DATETIME, '2023/06/03'), (SELECT id FROM Students WHERE idCard = '9876543213')),
(CONVERT(DATETIME, '2023/06/03'), (SELECT id FROM Students WHERE idCard = '9876543214')),
(CONVERT(DATETIME, '2023/06/03'), (SELECT id FROM Students WHERE idCard = '9876543210')),
(CONVERT(DATETIME, '2023/06/04'), (SELECT id FROM Students WHERE idCard = '9876543215')),
(CONVERT(DATETIME, '2023/06/04'), (SELECT id FROM Students WHERE idCard = '9876543216')),
(CONVERT(DATETIME, '2023/06/15'), (SELECT id FROM Students WHERE idCard = '9876543217')),
(CONVERT(DATETIME, '2023/06/11'), (SELECT id FROM Students WHERE idCard = '9876543218')),
(CONVERT(DATETIME, '2023/06/21'), (SELECT id FROM Students WHERE idCard = '9876543219')),
(CONVERT(DATETIME, '2023/06/21'), (SELECT id FROM Students WHERE idCard = '9876543218')),
(CONVERT(DATETIME, '2023/07/24'), (SELECT id FROM Students WHERE idCard = '9876543213')),
(CONVERT(DATETIME, '2023/07/25'), (SELECT id FROM Students WHERE idCard = '9876543212')),
(CONVERT(DATETIME, '2023/07/01'), (SELECT id FROM Students WHERE idCard = '9876543211')),
(CONVERT(DATETIME, '2023/07/13'), (SELECT id FROM Students WHERE idCard = '9876543210')),
(CONVERT(DATETIME, '2023/07/12'), (SELECT id FROM Students WHERE idCard = '9876543210')),
(CONVERT(DATETIME, '2023/07/11'), (SELECT id FROM Students WHERE idCard = '9876543210')),
(CONVERT(DATETIME, '2023/09/07'), (SELECT id FROM Students WHERE idCard = '9876543215')),
(CONVERT(DATETIME, '2023/09/06'), (SELECT id FROM Students WHERE idCard = '9876543215')),
(CONVERT(DATETIME, '2023/09/05'), (SELECT id FROM Students WHERE idCard = '9876543215')),
(CONVERT(DATETIME, '2023/09/04'), (SELECT id FROM Students WHERE idCard = '9876543215')),
(CONVERT(DATETIME, '2023/09/03'), (SELECT id FROM Students WHERE idCard = '9876543215')),
(CONVERT(DATETIME, '2023/09/02'), (SELECT id FROM Students WHERE idCard = '9876543216')),
(CONVERT(DATETIME, '2023/09/01'), (SELECT id FROM Students WHERE idCard = '9876543218'));





