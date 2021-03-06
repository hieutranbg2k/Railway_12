package HelloWorld;

import java.time.LocalDate;
import java.util.Date;

public class FistClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//      DEPARTMENT
		Department department1 = new Department();
		department1.id = 1;
		department1.departmentName = "Sale";

		Department department2 = new Department();
		department2.id = 2;
		department2.departmentName = "Marketing";

		Department department3 = new Department();
		department3.id = 3;
		department3.departmentName = "IT";

		System.out.println("id: " + department1.id);
		System.out.println("departmentName: " + department1.departmentName);
		System.out.print("\n");

		System.out.println("id: " + department2.id);
		System.out.println("departmentName: " + department2.departmentName);
		System.out.print("\n");

		System.out.println("id: " + department3.id);
		System.out.println("departmentName: " + department3.departmentName);
		System.out.print("\n");

//		POSITION				
		Position position1 = new Position();
		position1.id = 1;
		position1.positionName = PositonName.DEV;

		Position position2 = new Position();
		position2.id = 2;
		position2.positionName = PositonName.SCRUM_MASTER;

		Position position3 = new Position();
		position3.id = 3;
		position3.positionName = PositonName.TEST;

		System.out.println("id:" + position1.id);
		System.out.println("PositonName:" + position1.positionName);
		System.out.print("\n");

		System.out.println("id:" + position2.id);
		System.out.println("PositonName:" + position2.positionName);
		System.out.print("\n");

		System.out.println("id:" + position3.id);
		System.out.println("PositonName:" + position3.positionName);
		System.out.print("\n");

//		GROUP		
		Group group1 = new Group();
		group1.id = 1;
		group1.groupName = "Group1 ";
		
		

		Group group2 = new Group();
		group2.id = 2;
		group2.groupName = "Group2 ";

		Group group3 = new Group();
		group3.id = 3;
		group3.groupName = "Group3 ";
		
		

//		ACCOUNT		
		Account account1 = new Account();
		account1.id = 5;
		account1.email = "hieutranbg2k@gmail.com";
		account1.fullName = "Tran Dang Hieu";
		account1.userName = "hieutran99";
		account1.department = department1;
		account1.position = position1;
		Date date1 = new Date();
		account1.createDate = date1;

		Account account2 = new Account();
		account2.id = 6;
		account2.email = "thanthiphuongthanh2k@gmail.com";
		account2.fullName = "Than Thi Phuong Thanh";
		account2.userName = "ttpthanh2k";
		account2.department = department2;
		account2.position = position2;
		Date date2 = new Date();
		account2.createDate = date2;

		Account account3 = new Account();
		account3.id = 7;
		account3.email = "thantung2kk@gmail.com";
		account3.fullName = "Tran Thanh Tung";
		account3.userName = "tungthanh2k";
		account3.department = department3;
		account3.position = position3;
		Date date3 = new Date();
		account3.createDate = date3;

		Group[] dsNhom1 = { group1, group2 };
		account1.dsNhom = dsNhom1;
		System.out.println("ID nhan vien:" + account1.id);
		System.out.println("Ten nhan vien:" + account1.fullName);
		System.out.println("Email nhan vien:" + account1.email);
		System.out.println("Phong ban nhan vien:" + account1.department.departmentName);
		System.out.println("Vi tri nhan vien:" + account1.position.positionName);
		System.out.println("Ngay vao cong ty:" + account1.createDate.toString());
		System.out.println("Nhan vien o trong nhom: ");
		for (int i = 0; i < account1.dsNhom.length; i++) {
			System.out.println(account1.dsNhom[i].groupName);

		}
		System.out.print("\n");

		Group[] dsNhom2 = { group1, group3 };
		account2.dsNhom = dsNhom2;
		System.out.println("ID nhan vien:" + account2.id);
		System.out.println("Ten nhan vien:" + account2.fullName);
		System.out.println("Email nhan vien:" + account2.email);
		System.out.println("Phong ban nhan vien:" + account2.department.departmentName);
		System.out.println("Vi tri nhan vien:" + account2.position.positionName);
		System.out.println("Ngay vao cong ty:" + account2.createDate.toString());
		System.out.println("Nhan vien o trong nhom: ");
		for (int i = 0; i < account2.dsNhom.length; i++) {
			System.out.println(account2.dsNhom[i].groupName);

		}
		System.out.print("\n");

		Group[] dsNhom3 = { group2, group3 };
		account3.dsNhom = dsNhom3;
		System.out.println("ID nhan vien:" + account3.id);
		System.out.println("Ten nhan vien:" + account3.fullName);
		System.out.println("Email nhan vien:" + account3.email);
		System.out.println("Phong ban nhan vien:" + account3.department.departmentName);
		System.out.println("Vi tri nhan vien:" + account3.position.positionName);
		System.out.println("Ngay vao cong ty:" + account3.createDate.toString());
		System.out.println("Nhan vien o trong nhom: ");
		for (int i = 0; i < account3.dsNhom.length; i++) {
			System.out.println(account3.dsNhom[i].groupName);

		}
		System.out.print("\n");

//		TYPEQUESTION

		TypeQuestion typequestion1 = new TypeQuestion();
		typequestion1.id = 1;
		typequestion1.typeName = TypeName.ESSAY;

		TypeQuestion typequestion2 = new TypeQuestion();
		typequestion2.id = 2;
		typequestion2.typeName = TypeName.MULTIPLE_CHOICE;

		System.out.println("id:" + typequestion1.id);
		System.out.println("typeName:" + typequestion1.typeName);
		System.out.print("\n");

		System.out.println("id:" + typequestion2.id);
		System.out.println("typeName:" + typequestion2.typeName);
		System.out.println("\n");

//		 CATEGORYQUESTION

		CategoryQuestion categoryQuestion1 = new CategoryQuestion();
		categoryQuestion1.id = 1;
		categoryQuestion1.categoryName = "Java";

		CategoryQuestion categoryQuestion2 = new CategoryQuestion();
		categoryQuestion2.id = 2;
		categoryQuestion2.categoryName = ".NET";

		CategoryQuestion categoryQuestion3 = new CategoryQuestion();
		categoryQuestion3.id = 3;
		categoryQuestion3.categoryName = "SQL";

		System.out.println("id:" + categoryQuestion1.id);
		System.out.println("categoryName:" + categoryQuestion1.categoryName);
		System.out.println("\n");

		System.out.println("id:" + categoryQuestion2.id);
		System.out.println("categoryName:" + categoryQuestion2.categoryName);
		System.out.println("\n");

		System.out.println("id:" + categoryQuestion3.id);
		System.out.println("categoryName:" + categoryQuestion3.categoryName);
		System.out.println("\n");

// 		QUESTION

		Question question1 = new Question();
		question1.id = 1;
		question1.content = "Cau hoi Sql";
		question1.category = categoryQuestion1;
		question1.typeID = typequestion1;
		question1.creator = account1;
		question1.createDate = LocalDate.now();

		Question question2 = new Question();
		question2.id = 2;
		question2.content = "Cau hoi JAVA";
		question2.category = categoryQuestion2;
		question2.typeID = typequestion2;
		question2.creator = account2;
		question2.createDate = LocalDate.now();

		Question question3 = new Question();
		question3.id = 3;
		question3.content = "Cau hoi PHP";
		question3.category = categoryQuestion3;
		question3.typeID = typequestion2;
		question3.creator = account3;
		question3.createDate = LocalDate.now();

		System.out.println("id:" + question1.id);
		System.out.println("content:" + question1.content);
		System.out.println("category:" + question1.category.categoryName);
		System.out.println("typeID:" + question1.typeID.typeName);
		System.out.println("creator:" + question1.creator.id);
		System.out.println("createDate:" + question1.createDate);
		System.out.println("\n");

		System.out.println("id:" + question2.id);
		System.out.println("content:" + question2.content);
		System.out.println("category:" + question2.category.categoryName);
		System.out.println("typeID:" + question2.typeID.typeName);
		System.out.println("creator:" + question2.creator.id);
		System.out.println("createDate:" + question2.createDate);
		System.out.println("\n");

		System.out.println("id:" + question3.id);
		System.out.println("content:" + question3.content);
		System.out.println("category:" + question3.category.categoryName);
		System.out.println("typeID:" + question3.typeID.typeName);
		System.out.println("creator:" + question3.creator.id);
		System.out.println("createDate:" + question3.createDate);
		System.out.println("\n");

//		ANSWER

		Answer answer1 = new Answer();
		answer1.id = 7;
		answer1.content = "Dap an SQL";
		answer1.question = question1;
		answer1.isCorrect = true;

		Answer answer2 = new Answer();
		answer2.id = 8;
		answer2.content = "Dap an JAVA";
		answer2.question = question2;
		answer2.isCorrect = false;

		Answer answer3 = new Answer();
		answer3.id = 9;
		answer3.content = "Dap an HPML";
		answer3.question = question3;
		answer3.isCorrect = true;

		System.out.println("id:" + answer1.id);
		System.out.println("content:" + answer1.content);
		System.out.println("question:" + answer1.question.content);
		System.out.println("isCorrect:" + answer1.isCorrect);
		System.out.println("\n");

		System.out.println("id:" + answer2.id);
		System.out.println("content:" + answer2.content);
		System.out.println("question:" + answer2.question.content);
		System.out.println("isCorrect:" + answer2.isCorrect);
		System.out.println("\n");

		System.out.println("id:" + answer3.id);
		System.out.println("content:" + answer3.content);
		System.out.println("question:" + answer3.question.content);
		System.out.println("isCorrect:" + answer3.isCorrect);
		System.out.println("\n");

//		EXAM

		Exam exam1 = new Exam();
		exam1.id = 1;
		exam1.code = "hh01";
		exam1.title = "De thi 60p";
		exam1.category = categoryQuestion1;
		exam1.duration = 60;
		exam1.creator = account1;
		exam1.createDate = LocalDate.now();
		Question[] questionsOfExam1 = { question1, question2 };
		exam1.questions = questionsOfExam1;

		Exam exam2 = new Exam();
		exam2.id = 2;
		exam2.code = "hh03";
		exam2.title = "De thi 30p";
		exam2.category = categoryQuestion2;
		exam2.duration = 30;
		exam2.creator = account2;
		exam2.createDate = LocalDate.now();
		Question[] questionsOfExam2 = { question1, question3 };
		exam2.questions = questionsOfExam2;

		System.out.println("id:" + exam1.id);
		System.out.println("code:" + exam1.code);
		System.out.println("title:" + exam1.title);
		System.out.println("category:" + exam1.category.categoryName);
		System.out.println("duration:" + exam1.duration);
		System.out.println("crator:" + exam1.creator.id);
		System.out.println("createDate:" + exam1.createDate);
		System.out.println("questions:");
		for (int i = 0; i < exam1.questions.length; i++) {
			System.out.println(exam1.questions[i].content);

		}
		System.out.print("\n");

		System.out.println("id:" + exam2.id);
		System.out.println("code:" + exam2.code);
		System.out.println("title:" + exam2.title);
		System.out.println("category:" + exam2.category.categoryName);
		System.out.println("duration:" + exam2.duration);
		System.out.println("crator:" + exam2.creator.id);
		System.out.println("createDate:" + exam2.createDate);
		System.out.println("questions:");
		for (int i = 0; i < exam2.questions.length; i++) {
			System.out.println(exam2.questions[i].content);

		}
		System.out.print("\n");

	}

}
