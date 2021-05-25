USE testingSystem3;

-- 
DROP PROCEDURE IF EXISTS get_DepartmentName_by_id;
DELIMITER $$
CREATE PROCEDURE get_DepartmentName_by_id( IN in_id smallint)
 BEGIN
 SELECT department FROM department WHERE departmentID = in_id;

 END$$
 
DELIMITER ;

-- Question 1: Tạo store để người dùng nhập vào tên phòng ban và in ra tất cả các  account thuộc phòng ban đ
DROP PROCEDURE IF EXISTS get_account_BY_DepartmentName;
DELIMITER $$
CREATE PROCEDURE
 get_account_BY_DepartmentName(IN in_departmentName VARCHAR(50))
 BEGIN
 SELECT a.*,d.DepartmentName FROM `account` a JOIN decallpartment d
 ON a.departmentID = d.departmentID
WHERE d.departmentName = in_departmentName;
 END$$
DELIMITER ;

-- Question 2: Tạo store để in ra số lượng account trong mỗi group

DROP PROCEDURE IF EXISTS get_sl_Account_By_Group;
DELIMITER $$
CREATE PROCEDURE
 ger_sl_Account_By_Group()
 BEGIN
 SELECT groupID
 , (SELECT groupName from `group` WHERE groupID = ga.groupID) as GROUP_NAME
 , count(*) AS sl FROM groupaccount ga

GROUP BY groupID;
 END$$
DELIMITER ;

call  get_sl_Account_By_Group();


-- Question 4: Tạo store để trả ra id của type question có nhiều câu hỏi nhất
DROP PROCEDURE IF EXISTS get_typeID_by_max_question;
DELIMITER $$
CREATE PROCEDURE
get_typeID_by_max_question(OUT out_typeID mediumint)
 BEGIN
 SELECT typeID INTO out_typeID
 FROM question GROUP BY typeID HAVING COUNT(*) =
 (SELECT MAX(SL)  FROM
(SELECT COUNT(*) AS SL FROM question GROUP BY typeID) AS COUNT_SL);

 END$$
DELIMITER ;

SET @id= 0;
call get_typeID_by_max_question(@id);
SELECT @id;

-- Question 5: Sử dụng store ở question 4 để tìm ra tên của type question

SELECT typeName FROM typequestion WHERE TypeID = @id;

USE TestingSystem3;
-- Question 6: Viết 1 store cho phép người dùng nhập vào 1 chuỗi và trả về group có tên
-- chứa chuỗi của người dùng nhập vào hoặc trả về user có username chứa
-- chuỗi của người dùng nhập vào
-- Trong bài tập này có thể sử dụng Union để join sau khi select 2 bảng.
DROP PROCEDURE IF EXISTS sp_get_name_or_group;
DELIMITER $$
CREATE PROCEDURE sp_get_name_or_group
( IN var_String VARCHAR(50)
)
BEGIN
		SELECT g.GroupName FROM `group` g WHERE g.GroupName LIKE
		CONCAT("%",var_String,"%")
		-- hàm concat để nối chuỗi, các chuỗi con cách nhau bởi dấu ,
		UNION
		SELECT a.Username FROM `account` a WHERE a.Username LIKE
		CONCAT("%",var_String,"%");
END$$
DELIMITER ;
Call sp_get_name_or_group('si');

-- Question 7: Viết 1 store cho phép người dùng nhập vào thông tin fullName, email và
-- trong store sẽ tự động gán:
-- username sẽ giống email nhưng bỏ phần @..mail đi
-- positionID: sẽ có default là developer
-- departmentID: sẽ được cho vào 1 phòng chờ
-- Sau đó in ra kết quả tạo thành công
DROP PROCEDURE IF EXISTS insert_Account_by_Email;
DELIMITER $$
CREATE PROCEDURE insert_Account_by_Email
( IN var_Email VARCHAR(50),
IN var_Fullname VARCHAR(50))
BEGIN
-- Khai báo các biến cục bộ trong thân store để thực hiện câu lệnh trong thân store
		DECLARE v_Username VARCHAR(50) DEFAULT SUBSTRING_INDEX(var_Email, '@', 1);
		-- Hàm SUBSTRING_INDEX dùng để cắt chuỗi, với var_Email là nội dung chuỗi '@' là điểm cắt, số 1 là cắt ở điểm thứ mấy
		DECLARE v_DepartmentID TINYINT UNSIGNED DEFAULT 11;
		DECLARE v_PositionID TINYINT UNSIGNED DEFAULT 1;
		DECLARE v_CreateDate DATETIME DEFAULT now();
		INSERT INTO `account` (`Email`, `Username`, `FullName`,
		`DepartmentID`, `PositionID`, `CreateDate`)
		VALUES (var_Email, v_Username, var_Fullname,
		v_DepartmentID, v_PositionID, v_CreateDate);
END$$
DELIMITER ;
Call insert_Account_by_Email('thanhvc@vnext.com.vn','Thanh Vu');


-- Question 8: Viết 1 store cho phép người dùng nhập vào Essay hoặc Multiple-Choice
-- để thống kê câu hỏi essay hoặc multiple-choice nào có content dài nhất
DROP PROCEDURE IF EXISTS sp_getMaxNameQuesFormNameType;
DELIMITER $$
CREATE PROCEDURE sp_getMaxNameQuesFormNameType( IN var_Choice VARCHAR(50))
BEGIN
		-- Khai báo biến cục bộ v_TypeID để sử dụng trong thân hàm
		DECLARE v_TypeID TINYINT UNSIGNED;
		SELECT tq.TypeID INTO v_TypeID FROM typequestion tq WHERE tq.TypeName = var_Choice;
        -- Lấy ra type_ID dựa vào loại câu hỏi nhập vào sử dụng ở CTE dưới
		WITH CTE_LengContent AS(
		SELECT length(q.Content) AS leng FROM question q
		WHERE TypeID = v_TypeID)
		SELECT * FROM question q
		WHERE TypeID = v_TypeID
		AND length(q.Content) = (SELECT MAX(leng) FROM
		CTE_LengContent)
		;
END$$
DELIMITER ;

-- Question 9: Viết 1 store cho phép người dùng xóa exam dựa vào ID

DROP PROCEDURE IF EXISTS sp_Delete_Exam_WithID;
DELIMITER $$
CREATE PROCEDURE sp_Delete_Exam_WithID (IN in_ExamID TINYINT UNSIGNED)
BEGIN
-- Bảng Exam có liên kết khóa ngoại đến bảng examquestion vì vậy trước khi xóa dữ liệu trong
-- bảng exam cần xóa dữ liệu trong bảng examquestion trước hoặc sử dụng ON DELETE CASCADE
		DELETE FROM examquestion WHERE ExamID = in_ExamID;
		DELETE FROM Exam WHERE ExamID = in_ExamID;
END$$
DELIMITER ;
CALL sp_Delete_Exam_WithID(7);

-- Question 11: Viết store cho phép người dùng xóa phòng ban bằng cách người dùng
-- nhập vào tên phòng ban và các account thuộc phòng ban đó sẽ được
-- chuyển về phòng ban default là phòng ban chờ việc
DROP PROCEDURE IF EXISTS delete_department_by_name;
DELIMITER $$
CREATE PROCEDURE delete_department_by_name(IN var_DepartmentName VARCHAR(30))
BEGIN
		
		DECLARE v_DepartmentID VARCHAR(30) ;
        -- Tìm mã phòng ban dựa vào tên phòng ban
		SELECT D1.DepartmentID INTO v_DepartmentID FROM department D1 WHERE D1.DepartmentName
		= var_DepartmentName;
        -- Chuyển thông tin account đó về phòng ban 11
		UPDATE `account` A SET A.DepartmentID = '11' WHERE A.DepartmentID = v_DepartmentID;
        -- Xóa phòng ban
		DELETE FROM department d WHERE d.DepartmentName = var_DepartmentName;
END$$
DELIMITER ;
Call delete_department_by_name('Sale');

-- Question 12: Viết store để in ra mỗi tháng có bao nhiêu câu hỏi được tạo trong năm nay.
DROP PROCEDURE IF EXISTS Count_Question_By_Month;
DELIMITER $$
CREATE PROCEDURE Count_Question_By_Month()
BEGIN
		-- Sử dụng CTE tạo 1 bảng tạm CTE_12Months để lưu thông tin 12 tháng
		WITH CTE_12Months AS (
		SELECT 1 AS MONTH
		UNION SELECT 2 AS MONTH
		UNION SELECT 3 AS MONTH
		UNION SELECT 4 AS MONTH
		UNION SELECT 5 AS MONTH
		UNION SELECT 6 AS MONTH
		UNION SELECT 7 AS MONTH
		UNION SELECT 8 AS MONTH
		UNION SELECT 9 AS MONTH
		UNION SELECT 10 AS MONTH
		UNION SELECT 11 AS MONTH
		UNION SELECT 12 AS MONTH
		)
        -- Sử dụng JOIN kết hợp điều kiện ON là M.MONTH = month(Q.CreateDate), ở đây ON là
		-- 1 hàm của CreateDate
		SELECT M.MONTH, count(month(Q.CreateDate)) AS SL FROM CTE_12Months M
		LEFT JOIN (SELECT * FROM question Q1 WHERE year(Q1.CreateDate) = year(now()) ) Q
		ON M.MONTH = month(Q.CreateDate)
		GROUP BY M.MONTH;
END$$
DELIMITER ;
Call Count_Question_By_Month();



