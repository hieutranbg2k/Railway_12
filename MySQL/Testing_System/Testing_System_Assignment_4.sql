-- Question 1: Viết lệnh để lấy ra danh sách nhân viên và thông tin phòng ban của họ
	SELECT 		*
	FROM `		account` a 
	JOIN 		Department d ON
				a.DepartmentID= d.DepartmentID;

-- Question 2: Viết lệnh để lấy ra thông tin các account được tạo sau ngày 20/12/2010 

	SELECT 		*
	FROM 		`account` a
	WHERE 		CreateDate > '2010-12-20';

-- Question 3: Viết lệnh để lấy ra tất cả các developer
	SELECT		* 
	FROM 		`account` a
	JOIN 		`position` p ON
				a.PositionID = p.PositionID 
	WHERE 		p.PositionName = 'Dev';

-- Question 4: Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên

	SELECT  	COUNT(a.DepartmentID) AS tong , d.DepartmentName 
	FROM 		`account` a
	JOIN		department d ON
				a.DepartmentID = d.DepartmentID
	GROUP BY 	a.DepartmentID
	HAVING 		COUNT(a.DepartmentID) > 3;

-- Question 5: Viết lệnh để lấy ra danh sách câu hỏi được sử dụng trong đề thi nhiều nhất
	SELECT 		q.QuestionID, q.Content FROM examquestion e
	INNER JOIN 	question q ON e.QuestionID = q.QuestionID
	GROUP BY 	e.QuestionID 
	HAVING 		count(e.QuestionID) = 
	(SELECT 	max(countQuestion) FROM 
	(SELECT 	count(*) as countQuestion 
	FROM 		examquestion 
	GROUP BY 	QuestionID) as maxCount);
    
    -- Question 6: Thông kê mỗi category Question được sử dụng trong bao nhiêu Question
    
    SELECT 		c.CategoryID, c.CategoryName, COUNT(c.CategoryID) AS 'TONG SO'
    FROM 		categoryquestion c
    LEFT JOIN	question q ON c.CategoryID = q.CategoryID
    GROUP BY 	c.CategoryID;
    
    -- Question 7: Thông kê mỗi Question được sử dụng trong bao nhiêu Exam

	SELECT		q.Content, q.QuestionID, COUNT(eq.QuestionID) AS 'TONG SO'
	FROM		Question q
	LEFT JOIN 	ExamQuestion eq ON eq.QuestionID = q.QuestionID
	GROUP BY	q.QuestionID
	ORDER BY 	eq.ExamID ASC;

-- Question 8: Lấy ra Question có nhiều câu trả lời nhất
  
	SELECT 		q.Content, q.QuestionID, count(q.QuestionID) AS 'TONG SO'
	FROM		question q
	JOIN 		answer a ON	q.QuestionID = a.QuestionID
	GROUP BY  	a.QuestionID
	HAVING 		count(a.QuestionID) = 
    
    (SELECT 	max(COUNTA) FROM
    (SELECT 	count(a.QuestionID) AS COUNTA
    FROM 		answer a
    GROUP BY 	a.QuestionID)  AS MAXCOUNTA);
    
    -- Question 9: Thống kê số lượng account trong mỗi group
    SELECT 		* , count(gr.AccountID) AS 'TONG SO'
    FROM 		GroupAccount gr
    RIGHT JOIN `Group` g ON gr.GroupID = g.GroupID
    GROUP BY 	 g.GroupID;

-- Question 10: Tìm chức vụ có ít người nhất

SELECT *
FROM `position` p
JOIN `account` a 
ON p.PositionID = a.PositionID
GROUP BY p.PositionID
HAVING COUNT(p.PositionID) =
(SELECT MIN(countPosition) 
FROM
(SELECT count(*) AS countPosition
FROM `position` p
GROUP BY PositionID ) AS mincountPosition);

-- Question 11: Thống kê mỗi phòng ban có bao nhiêu dev, test, scrum master, PM

SELECT d.DepartmentID, d.DepartmentName, p.PositionName, COUNT(p.PositionID) AS SL 
FROM `account` a
JOIN department d ON a.DepartmentID = d.DepartmentID
JOIN position p ON a.PositionID = p.PositionID
GROUP BY a.DepartmentID, a.PositionID;

-- Question 12: Lấy thông tin chi tiết của câu hỏi bao gồm: thông tin cơ bản của question, loại câu hỏi, ai là người tạo ra câu hỏi, câu trả lời là gì, …

SELECT 		t.TypeName AS 'LOAI CAU HOI', q.CreatorID AS 'ID NGUOI TAO', q.Content AS 'CAU HOI', a.Content AS 'CAU TRA LOI'
FROM		Question q 
JOIN 		Answer a ON	q.QuestionID = a.QuestionID
JOIN		TypeQuestion t ON q.TypeID = t.TypeID;

--  Question 13: Lấy ra số lượng câu hỏi của mỗi loại tự luận hay trắc nghiệm

SELECT 		TypeName AS 'LOAI CAU HOI', count(q.TypeID) AS ' TONG SO '
FROM  		Question q 
JOIN		TypeQuestion t ON q.TypeID = t.TypeID
GROUP BY	q.TypeID;

-- Question 14:Lấy ra group không có account nà0

SELECT *
FROM `Group`
WHERE GroupID NOT IN
(
SELECT GroupID 
FROM GroupAccount 
);


-- Question 15: Lấy ra group không có account nào
SELECT *
FROM `Group`
WHERE GroupID NOT IN
(
SELECT GroupID 
FROM GroupAccount 
);


-- Question 16: Lấy ra question không có answer nào

SELECT		*
FROM		Question
WHERE		QuestionID NOT IN
(
SELECT		QuestionID
From		Answer
);


-- thong ke moi vai kiem tra co bao nhieu cau hoi

SELECT 	*
FROM 		`account` a
JOIN 		department d ON a.DepartmentID = d.DepartmentID
JOIN 		position p ON a.PositionID = p.PositionID
ORDER BY 	a.DepartmentID, a.PositionID;

-- Question 17: 
-- a) Lấy các account thuộc nhóm thứ 1
-- b) Lấy các account thuộc nhóm thứ 2
-- c) Ghép 2 kết quả từ câu a) và câu b) sao cho không có record nào trùng nhau

-- a) Lấy các account thuộc nhóm thứ 1

SELECT 		*
FROM 		`account`
WHERE 		DepartmentID = 1;
-- b) Lấy các account thuộc nhóm thứ 2

SELECT 		*
FROM 		`account`
WHERE 		DepartmentID = 2;

-- c) Ghép 2 kết quả từ câu a) và câu b) sao cho không có record nào trùng nhau
SELECT 		*
FROM 		`account`
WHERE 		DepartmentID = 1
UNION
SELECT 		*
FROM 		`account`
WHERE 		DepartmentID = 2;

-- Question 18: 
-- a) Lấy các group có lớn hơn 5 thành viên
-- b) Lấy các group có nhỏ hơn 7 thành viên
-- c) Ghép 2 kết quả từ câu a) và câu b)

-- a) Lấy các group có lớn hơn 5 thành viên

SELECT 		GroupName, count(g.GroupID) AS ' SO LUONG'
FROM 		`Group` g
JOIN 		GroupAccount gr ON g.GroupID = gr.GroupID
GROUP BY 	g.GroupID
HAVING		count(g.GroupID)  >= 5;

-- b) Lấy các group có nhỏ hơn 7 thành viên

SELECT 		GroupName, count(g.GroupID) AS ' SO LUONG'
FROM 		`Group` g
JOIN 		GroupAccount gr ON g.GroupID = gr.GroupID
GROUP BY 	g.GroupID
HAVING		count(g.GroupID)  <= 7;

-- c) Ghép 2 kết quả từ câu a) và câu b)

SELECT 		GroupName, count(g.GroupID) AS ' SO LUONG'
FROM 		`Group` g
JOIN 		GroupAccount gr ON g.GroupID = gr.GroupID
GROUP BY 	g.GroupID
HAVING		count(g.GroupID)  >= 5
UNION
SELECT 		GroupName, count(g.GroupID) AS ' SO LUONG'
FROM 		`Group` g
JOIN 		GroupAccount gr ON g.GroupID = gr.GroupID
GROUP BY 	g.GroupID
HAVING		count(g.GroupID)  <= 7;