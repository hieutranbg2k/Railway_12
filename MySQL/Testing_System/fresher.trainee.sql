DROP DATABASE IF EXISTS fresher;
CREATE DATABASE 		fresher;
USE 					fresher;
DROP TABLE IF EXISTS 	Trainee;
CREATE TABLE 			Trainee(
TraineeID				MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,	
Full_Name				NVARCHAR(20) NOT NULL,
Birth_Date				DATE,
Gender					ENUM( 'MALE', 'FEMALE', 'UNKNOWN' ) NOT NULL,
ET_IQ					INT UNSIGNED check (ET_IQ < 20),
ET_Gmath				INT UNSIGNED check (ET_Gmath < 20),
ET_English				INT UNSIGNED check	(ET_English < 50),
Training_Class			VARCHAR(30) NOT NULL,
Evaluation_Notes		VARCHAR(50) NOT NULL
);


INSERT INTO Trainee(Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes)
VALUES 		( 'TRAN DANG HIEU', ' 1999-12-05', 'MALE', '3','5','49','VTI001','HUBTHN'),
			('NNGUYEN TRUNG NAM', '1999-11-06', 'MALE', '18','17','48','VTI001','DHBKHN'),
            ( 'NGUYEN THI THAO', '1998-12-04', 'FEMALE', '16','15','40','VTI001','HUSTHN'),
            ( 'BUI THI HUONG', ' 1997-11-05', 'FEMALE', '14','15','42','VTI003','DHGTVTHN'),
            ( 'BUI DUY HUNG', ' 1999-11-06', 'MALE', '16','17','46','VTI001','HUSTHN'),
            ( 'NGUYEN DUY HUNG', ' 1999-04-06', 'MALE', '12','13','49','VTI002','NEUHN'),
            ( 'DAO BA LOC', ' 1999-09-05', 'MALE', '11','18','42','VTI002','DHMTHN'),
            ( 'DUONG VAN BE', ' 1999-11-05', 'MALE', '11','14','29','VTI002','HUBTHN'),
            ( 'NGUYEN THI MINH PHAC', ' 1999-10-07', 'MALE', '14','15','30','VTI002','HUSTHN'),
            ( 'TRAN VAN DOC', ' 1970-09-06', 'MALE', '09','06','23','VTI002','DHVHHN');
			
            
            
-- Question 3: Insert 1 bản ghi mà có điểm ET_English =30. Sau đó xem kết quả.

INSERT INTO 	Trainee(Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes)
VALUES 			('NGUYEN DINH VU','1999-09-12', 'MALE','19','19','30','VTI002','DHMHN');

-- Question 4: Viết lệnh để lấy ra tất cả các thực tập sinh đã vượt qua bài test đầu vào,và sắp xếp theo ngày sinh. Điểm ET_IQ >=12, ET_Gmath>=12, ET_English>=20

SELECT* FROM 	Trainee
WHERE  			ET_IQ >=12 and ET_Gmath>=12 and ET_English>=20
ORDER BY	 	Birth_Date ASC;


-- Question 5: Viết lệnh để lấy ra thông tin thực tập sinh có tên bắt đầu bằng chữ N và kết thúc bằng chữ C

SELECT *
FROM 			Trainee
WHERE 			Full_Name LIKE'N%C';

-- Question 6: Viết lệnh để lấy ra thông tin thực tập sinh mà tên có ký thự thứ 2 là chữ G

SELECT *
FROM 			Trainee
WHERE 			Full_Name LIKE '_G%';
            
-- Question 7: Viết lệnh để lấy ra thông tin thực tập sinh mà tên có 10 ký tự và ký tự cuối cùng là C

SELECT *
FROM 			Trainee
WHERE 			length(Full_Name) = 10 AND Full_Name LIKE '%C';

-- Question 8: Viết lệnh để lấy ra Fullname của các thực tập sinh trong lớp, lọc bỏ các tên trùng nhau

SELECT DISTINCT Full_Name
FROM 			Trainee;

-- Question 9: Viết lệnh để lấy ra Fullname của các thực tập sinh trong lớp, sắp xếp các tên này  theo thứ tự từ A-Z

SELECT 	 		Full_Name 
FROM 			Trainee
ORDER BY		Full_Name ASC;

-- Question 10: Viết lệnh để lấy ra thông tin thực tập sinh có tên dài nhất

SELECT * 
FROM 			Trainee
WHERE 			length(Full_Name)= (SELECT MAX(length(Full_Name)) FROM Trainee);

-- Question 11: Viết lệnh để lấy ra ID, Fullname và Ngày sinh thực tập sinh có tên dài nhất

SELECT 			TraineeID,Full_Name,Birth_Date
FROM 			Trainee
WHERE 			length(Full_Name)= (SELECT MAX(length(Full_Name)) FROM Trainee);


-- Question 12: Viết lệnh để lấy ra Tên, và điểm IQ, Gmath, English thực tập sinh có tên dài nhất

SELECT 			Full_Name,ET_IQ,ET_Gmath,ET_English
FROM 			Trainee
WHERE 			length(Full_Name)= (SELECT MAX(length(Full_Name)) FROM Trainee);

-- Question 13 Lấy ra 5 thực tập sinh có tuổi nhỏ nhất

SELECT *
FROM 			Trainee
ORDER BY  		Birth_Date DESC LIMIT 5;

-- Question 14: Viết lệnh để lấy ra tất cả các thực tập sinh là ET, 1 ET thực tập sinh là
-- những người thỏa mãn số điểm như sau:
-- ET_IQ + ET_Gmath>=20
-- ET_IQ>=8
-- ET_Gmath>=8
-- ET_English>=18

SELECT *
FROM 			Trainee
WHERE 			ET_IQ + ET_Gmath>=20 AND ET_IQ>=8 AND ET_Gmath>=8 AND ET_English>=18;

-- Question 15: Xóa thực tập sinh có TraineeID = 5

DELETE
FROM 			Trainee
WHERE 			TraineeID = 5;

-- Question 16: Xóa thực tập sinh có tổng điểm ET_IQ, ET_Gmath <=15

DELETE
FROM 			TRAINEE
WHERE 			ET_IQ + ET_GMATH <= 15;

-- Question 17: Xóa thực tập sinh quá 30 tuổi.

DELETE
FROM	 		Trainee
WHERE year		(curdate()) - year(Birth_Date) > 30;

SELECT * FROM 	fresher.trainee;
USE 			fresher;
SELECT year 	(curdate());
SELECT 			Full_Name, year(curdate()) - year(Birth_Date)  
from 			Trainee;


-- Question 18: Thực tập sinh có TraineeID = 3 được chuyển sang lớp " VTI003". Hãy cập nhật thông tin vào database

UPDATE 			Trainee
SET 			Training_Class = 'VTI003'
WHERE 			TraineeID = 3;

-- Question 19: Do có sự nhầm lẫn khi nhập liệu nên thông tin của học sinh số 10 đang bị sai, hãy cập nhật lại tên thành “LeVanA”, điểm ET_IQ =10, điểm ET_Gmath =15, điểm ET_English = 30.

UPDATE 			Trainee
SET 			Full_Name = 'LE VAN A',
				ET_IQ 	  = '10',
				ET_Gmath  = '15',
				ET_English= '30'
	
WHERE 			TraineeID = 10;

-- Question 20: Đếm xem trong lớp VTI001 có bao nhiêu thực tập sinh.

SELECT 			COUNT(Training_Class) AS ' thuc tap sinh'
FROM 			Trainee
WHERE 			Training_Class =  'VTI001';

-- Question 21: Đếm xem trong lớp VTI001 có bao nhiêu thực tập sinh.

SELECT 			COUNT(Training_Class) AS ' thuc tap sinh'
FROM 			Trainee
WHERE 			Training_Class =  'VTI001';

-- Question 22: Đếm tổng số thực tập sinh trong lớp VTI001 và VTI003 có bao nhiêu thực tập  sinh.

SELECT 			count(Training_Class) AS ' thuc tap sinh'
FROM 			Trainee
WHERE 			Training_Class =  'VTI003' OR Training_Class = 'VTI001';

-- Question 23: Lấy ra số lượng các thực tập sinh theo giới tính: Male, Female, Unknown.

SELECT 			count(*) AS 'MALE'
FROM 			Trainee
WHERE 			Gender = 'MALE';
SELECT 			count(*) AS 'FEMALE'
FROM 			Trainee
WHERE 			Gender = 'FEMALE';
SELECT 			count(*) AS 'UNKNOWN'
FROM 			Trainee
WHERE 			Gender = 'UNKNOWN';

-- Question 24: Lấy ra lớp có lớn hơn 5 thực tập viên
SELECT 			Training_Class AS 'lop'
FROM			Trainee
GROUP BY 		Training_Class 
HAVING 			COUNT(Training_Class) >= 5;

-- Question 25: Lấy ra lớp có lớn hơn 5 thực tập viên
SELECT 			Training_Class 
FROM 			Trainee
GROUP BY 		Training_Class 
HAVING 			COUNT(Training_Class) >= 5;

-- Question 26: Lấy ra trường có ít hơn 4 thực tập viên tham gia khóa học
SELECT 		 	Evaluation_Notes 
FROM		 	Trainee
GROUP BY 	 	Evaluation_Notes
HAVING		 	COUNT(Evaluation_Notes) < 4;

-- Question 27:
-- Bước 1: Lấy ra danh sách thông tin ID, Fullname, lớp thực tập viên có lớp 'VTI001'
-- Bước 2: Lấy ra danh sách thông tin ID, Fullname, lớp thực tập viên có lớp 'VTI002'
-- Bước 3: Sử dụng UNION để nối 2 kết quả ở bước 1 và 2

-- B1
SELECT			TraineeID,Full_Name,Training_Class
FROM 			Trainee
WHERE 			Training_Class = 'VTI001';

-- B2
SELECT 			TraineeID,Full_Name,Training_Class
FROM 			Trainee
WHERE 			Training_Class = 'VTI002';

-- B3
SELECT 			TraineeID,Full_Name,Training_Class
FROM 			Trainee
WHERE 			Training_Class = 'VTI001'
UNION
SELECT 			TraineeID,Full_Name,Training_Class
FROM 			Trainee
WHERE 			Training_Class = 'VTI002';

