- -- Question 2: lấy ra tất cả các phòng ban
USE TestingSystem3;
SELECT * FROM Department;

-- Question 3: lấy ra id của phòng ban "Sale"
USE TestingSystem3;
SELECT * 
FROM Department
WHERE DepartmentName = 'Sale';

-- - Question 6: Lấy ra tên group đã tham gia trước ngày 20/12/2019
SELECT *
FROM `Group`
WHERE CreateDate < '2020-03-28';

-- -  Lấy ra ID của question có >= 4 câu trả lời
SELECT *
FROM Question
WHERE QuestionID >= 4;

-- Question 8: Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20/12/2019

SELECT * FROM testingsystem3.exam
WHERE Duration >= 60 AND CreateDate < ' 2019-4-7 ';

-- Question 9: Lấy ra 5 group được tạo gần đây nhất

SELECT * FROM testingsystem3.group
ORDER BY CreateDate DESC LIMIT 5;

-- Question 10: Đếm số nhân viên thuộc department có id = 2
SELECT COUNT(AccountID) AS 'so nhan vien' 
FROM testingsystem3.account
WHERE DepartmentID =2;

-- Question 11: Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ o

 SELECT * FROM testingsystem3.account
 WHERE FullName LIKE 'D%)';
 
 -- Question 12: Xóa tất cả các exam được tạo trước ngày 20/12/2019

DELETE
 FROM testingsystem3.exam
 WHERE CreateDate < '2020-4-5';

 
 -- Question 13: Xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"

DELETE
FROM testingsystem3.question
WHERE Content LIKE 'cau hoi%';

-- Question 14: Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và  email thành loc.nguyenba@vti.com.vn
UPDATE 	`Account`
SET 			Username = 'Nguyễn Bá Lộc',
				Email =    'loc.nguyenba@vti.com.vn'
WHERE 			AccountID = 5;

-- Question 15: update account có id = 5 sẽ thuộc group có id = 4

UPDATE groupaccount
SET 
    groupID = 100
WHERE
    AccountID = 5;
 



