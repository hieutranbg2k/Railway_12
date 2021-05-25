SELECT * FROM 			sinhvien_dh.university;

SELECT 					* FROM university 
WHERE
						universityID > ANY( 
SELECT 					universityID FROM university
WHERE 					universityID < 5 AND universityID !=2
						);






-- Question 1: Tạo view có chứa danh sách nhân viên thuộc phòng ban sale

USE 					testingsystem3;
CREATE OR REPLACE VIEW 	account_sale AS
SELECT 					a.*
FROM  					`account` a JOIN
						department d ON a.departmentID = d.departmentID
WHERE 					d.departmentName = 'sale' ;

SELECT * FROM account_sale;
 
 -- Question 2: Tạo view có chứa thông tin các account tham gia vào nhiều group nhất
 
 DROP VIEW IF Exists 	account_max_group;
 CREATE VIEW 			account_max_group AS(
 WITH 					cte_t as (
 SELECT 				COUNT(AccountID) AS sl
 FROM 					groupaccount 
 GROUP BY 				AccountID
 )
 SELECT 				A.AccountID, A.FullName, COUNT(GA.AccountID)
 FROM 					groupaccount  GA
 JOIN 					`Account` A ON A.AccountID = GA.AccountID
 GROUP BY 				GA.AccountID
 HAVING 				COUNT(GA.AccountID) = (SELECT MAX(sl)
												FROM cte_t));
                                
  -- Question 3: Tạo view có chứa câu hỏi có những content quá dài (content quá 300 từ dược coi là quá dài) và xóa nó đi                            

	CREATE OR REPLACE VIEW  question_12 AS (
    SELECT 				*
    FROM 				question
    WHERE 				length(content) > 20);
    DELETE FROM 		question_12;
    
    -- Question 4: Tạo view có chứa danh sách các phòng ban có nhiều nhân viên nhất
    
CREATE OR REPLACE VIEW 	Department_max_employee AS (
SELECT 					d.*, count(a.DepartmentID) AS 'Nhan Vien'
FROM 					Department d
JOIN 					`Account` a ON d.DepartmentID = a.DepartmentID
GROUP BY				a.DepartmentID
HAVING					count(a.DepartmentID) =
(SELECT					MAX(CountAcount) FROM 
(SELECT  				count(*) AS CountAcount
FROM					`Account` a
GROUP BY 				a.DepartmentID ) AS MaxAcount)
);

SELECT * FROM 			Department_max_employee ;
    
 
-- Question 5: Tạo view có chứa tất các các câu hỏi do user họ Nguyễn tạo

CREATE OR REPLACE VIEW Question_user_Yurik AS (
SELECT 					Q.QuestionID, Q.Content, A.FullName
FROM   					Question Q
JOIN   					`Account` A ON A.AccountID = Q.CreatorID
WHERE					SUBSTRING_INDEX(FullName,' ',1) = 'Yurik');

SELECT * FROM 			Question_user_Yurik;
    
    
							