package Assignment2;

import java.time.LocalDate;
import java.util.Iterator;

public class FirstClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

// 		 DEPARTMENT

		Department department1 = new Department();
		department1.id = 1;
		department1.departmentName = "Marketing";

		Department department2 = new Department();
		department2.id = 2;
		department2.departmentName = "Sale";

		Department department3 = new Department();
		department3.id = 3;
		department3.departmentName = "IT";

//		POSITION

		Position position1 = new Position();
		position1.id = 1;
		position1.positionName = PositionName.DEV;

		Position position2 = new Position();
		position2.id = 2;
		position2.positionName = PositionName.PM;

		Position position3 = new Position();
		position3.id = 3;
		position3.positionName = PositionName.SCRUM_MASTER;

//		GROUP

		Group group1 = new Group();
		group1.id = 1;
		group1.groupName = "Angels of Death";
		group1.createDate = LocalDate.of(2021, 2, 2);

		Group group2 = new Group();
		group2.id = 2;
		group2.groupName = "Army of Darkness";
		group2.createDate = LocalDate.of(2020, 5, 20);

		Group group3 = new Group();
		group3.id = 3;
		group3.groupName = "As Fast As Lightning";
		group3.createDate = LocalDate.of(2019, 3, 25);

// 		ACCOUNT

		Account account1 = new Account();
		account1.id = 1;
		account1.email = "hieutranbg2k@gmail.com";
		account1.userName = "hieutran";
		account1.fullName = "tran dang hieu";
		account1.departmentName = department1;
		account1.positionName = position1;
		account1.createDate = LocalDate.now();
		Group[] groups1 = { group1, group2 };
		account1.groups = groups1;

		Account account2 = new Account();
		account2.id = 2;
		account2.email = "hieutranbg99@gmail.com";
		account2.userName = "hieutran99";
		account2.fullName = "tran van hieu";
		account2.departmentName = department2;
		account2.positionName = position2;
		account2.createDate = LocalDate.now();
		Group[] groups2 = { group2, group3 };
		account2.groups = groups2;

		Account account3 = new Account();
		account3.id = 3;
		account3.email = "thanthiphuongthanh@gmail.com";
		account3.userName = "phuongthanh";
		account3.fullName = "than thi phuong thanh";
		account3.departmentName = department3;
		account3.positionName = position3;
		account3.createDate = LocalDate.now();
		Group[] groups3 = { group1, group3 };
		account3.groups = groups3;

//		ADD GROUP ACCOUNT

		group1.accounts = new Account[] { account1, account2 };
		group2.accounts = new Account[] { account2, account3 };
		group3.accounts = new Account[] { account3, account1 };

//		Question 1:
//			Kiểm tra account thứ 2
//			Nếu không có phòng ban (tức là department == null) thì sẽ in ra text 
//			"Nhân viên này chưa có phòng ban"
//			Nếu không thì sẽ in ra text "Phòng ban của nhân viên này là …"		

		System.out.println(" check account2");
		if (account2.departmentName == null) {
			;
			System.out.println("nhan vien nay chua co phong ban");
		} else {
			System.out.println("Phong ban cua nhan vien nay la: " + account2.departmentName.departmentName);
		}
		System.out.println("\n");

//		Question 2: 
//			Kiểm tra account thứ 2
//			Nếu không có group thì sẽ in ra text "Nhân viên này chưa có group"
//			Nếu có mặt trong 1 hoặc 2 group thì sẽ in ra text "Group của nhân viên 
//			này là Java Fresher, C# Fresher"
//			Nếu có mặt trong 3 Group thì sẽ in ra text "Nhân viên này là người 
//			quan trọng, tham gia nhiều group"
//			Nếu có mặt trong 4 group trở lên thì sẽ in ra text "Nhân viên này là 
//			người hóng chuyện, tham gia tất cả các group"

		System.out.println("check account 2");
		if (account2.groups == null) {
			System.out.println("Nhan vien nay chua co group");
		} else {
			int countGroup = account2.groups.length;
			if (countGroup == 1 || countGroup == 2) {
				System.out.println("Group cua nhan vien nay la Java Fresher, C## Fresher");

			}
			if (countGroup == 3) {
				System.out.println("Nhan vien nay la nguoi quan trong, tham gia nhieu group");

			}
			if (countGroup >= 4) {
				System.out.println("nhan vien nay la nguoi hong chuyen, tham gia tat ca cac group");

			}
			System.out.println("\n");

		}

//		Question 3:
//			Sử dụng toán tử ternary để làm Question 1

		System.out.println("check account 2");
		System.out.println(account2.departmentName == null ? "nhan vien nay chua co phong ban"
				: "phong ban cua nhan vien nay la: " + account2.departmentName.departmentName);
		System.out.println("\n");

//	 	Question 4:
//			Sử dụng toán tử ternary để làm yêu cầu sau:
//			Kiểm tra Position của account thứ 1
//			Nếu Position = Dev thì in ra text "Đây là Developer"
//			Nếu không phải thì in ra text "Người này không phải là Developer"		

		System.out.println("check positon 1");
		System.out.println(account1.positionName.positionName.toString() == "DEV" ? " day la Developer "
				: "nguoi nay khong phai la Developer ");
		System.out.println("\n");

//-----------------------------------SWITCH CASE---------------------------------//		

//		Question 5:
//			Lấy ra số lượng account trong nhóm thứ 1 và in ra theo format sau:
//			Nếu số lượng account = 1 thì in ra "Nhóm có một thành viên"
//			Nếu số lượng account = 2 thì in ra "Nhóm có hai thành viên"
//			Nếu số lượng account = 3 thì in ra "Nhóm có ba thành viên"
//			Còn lại in ra "Nhóm có nhiều thành viên"

		System.out.println("check so luong account trong nhom 1");
		int countAccountGroup = group1.accounts.length;
		switch (countAccountGroup) {
		case 1:
			System.out.println("nhom co mot thannh vien");
			break;
		case 2:
			System.out.println("nhom co hai thannh vien");
			break;
		case 3:
			System.out.println("nhom co ba thannh vien");
			break;
		default:
			System.out.println("nhom co nhieu thannh vien");
			break;
		}
		System.out.println("\n");

//		Question 6: 
//			Sử dụng switch case để làm lại Question 2

		System.out.println("check account 2");
		if (account2.groups == null) {
			System.out.println(" nhan vien nay chua co Group");

		} else {
			int countGroupsAccount = account2.groups.length;
			switch (countGroupsAccount) {
			case 1:
				System.out.println("Group cua nhan vien nay la Java Fresher, C# Fresher");
				break;
			case 2:
				System.out.println("Group cua nhan vien nay la Java Fresher, C# Fresher");
				break;
			case 3:
				System.out.println("nhan vien nay la nguoi quan trong, tham gia nhieu group");
				break;
			default:
				System.out.println("nhan vien nay la nguoi hong chuyen, tham gia tat ca cac group");
				break;

			}
			System.out.println("\n");
		}

//		Question 7: 
//			Sử dụng switch case để làm lại Question 4

		System.out.println("check Position cua account thu 1");
		switch (account1.positionName.positionName.toString()) {
		case "DEV":
			System.out.println("day la Developer");

			break;

		default:
			System.out.println("nguoi nay khong phai Developer");
			break;

		}
		System.out.println("\n");

//------------------------------------FOREACH----------------------------------------------//

//		Question 8: 
//			In ra thông tin các account bao gồm: Email, FullName và tên phòng ban của 
//			họ

		System.out.println("In ra thong tin cac account bao gom: Email,FullName va ten phong ban cua ho");
		Account[] accounts = { account1, account2, account3 };

		for (Account account : accounts) {
			System.out.println(
					"AccountId:" + account.id + " Email :" + account.email + " FullName : " + account.fullName);
		}
		System.out.println("\n");

//		Question 9: 
//			In ra thông tin các phòng ban bao gồm: id và name	

		System.out.println("In ra thong tin cac phong ban bao gom : id va name");
		Group[] groups = { group1, group2, group3 };

		for (Group group : groups) {
			System.out.println("GroupId: " + group.id + " groupName: " + group.groupName);

		}
		System.out.println("\n");
		
		
//---------------------------------------FOR---------------------------------------------------//		
		
//		Question 10: 
//			In ra thông tin các account bao gồm: Email, FullName và tên phòng ban của 
//			họ theo định dạng như sau:
//			Thông tin account thứ 1 là: 
//			Email: NguyenVanA@gmail.com
//			Full name: Nguyễn Văn A
//			Phòng ban: Sale
//			Thông tin account thứ 2 là: 
//			Email: NguyenVanB@gmail.com
//			Full name: Nguyễn Văn B
//			Phòng ban: Marketting		
		
		
		
		System.out.println("In ra thong tin cac account bao gom: Email, FullName, DepartmentName");
		Account[] accounts2 = {account1, account2};
		for (int i = 0; i < accounts2.length; i++) {
			System.out.println("\n");
			System.out.println("Thong tin account thu " + ( i+1 ) );
			System.out.println("Email: " +  accounts2[i].email );
			System.out.println("FullName: " + accounts2[i].fullName);
			System.out.println("DepartmentName: " + accounts2[i].departmentName.departmentName );
		}
		
		System.out.println("\n");
		
		
//		Question 11:
//			In ra thông tin các phòng ban bao gồm: id và name theo định dạng sau:
//			Thông tin department thứ 1 là:
//			Id: 1
//			Name: Sale
//			Thông tin department thứ 2 là:
//			Id: 2
//			Name: Marketing		
		
		
		System.out.println("In ra thong tin cac phong ban bao gom: id va name ");
		Department[] departments = {department1,department2,department3};
		for (int i = 0; i < departments.length; i++) {
			System.out.println("\n");
			System.out.println("Thong tin department thu" + (i + 1));
			System.out.println("Id: " + departments[i].id);
			System.out.println("DepartmentName: " + departments[i].departmentName);
			
		}
		
		System.out.println("\n");
		
		
//		Question 12:
//			Chỉ in ra thông tin 2 department đầu tiên theo định dạng như Question 10		
		
		
		
		System.out.println("In ra thong tin 2 department dau tien  ");
		Department[] departments2 = {department1,department2};
		for (int i = 0; i < departments2.length; i++) {
			System.out.println("\n");
			System.out.println("Thong tin department thu" + (i + 1));
			System.out.println("Id: " + departments2[i].id);
			System.out.println("DepartmentName: " + departments2[i].departmentName);
			
		}
		
		System.out.println("\n");
		
//		Question 13:
//			In ra thông tin tất cả các account ngoại trừ account thứ 2		
		
		System.out.println("In ra thong tin cac account ngoai tru account thu 2 ");

		Account[] accounts3 = {account1,account2,account3 };
		for (int i = 0; i < accounts3.length; i++) {
			if ( i != 1) {
				System.out.println("\n");
				System.out.println("Thong tin account thu" + ( i+1 ) );
				System.out.println("Email: " + accounts3[i].email);
				System.out.println("FullName: " + accounts3[i].fullName);
				System.out.println("DepartmentName: " + accounts3[i].departmentName.departmentName);
			}
			
		}
		System.out.println("\n");
		
		
		
//		Question 14: 
//			In ra thông tin tất cả các account có id < 4	
		
		
		System.out.println("In ra thong tin cac account co id < 4 ");

		Account[] accounts4 = {account1,account2,account3 };
		for (int i = 0; i < accounts4.length; i++) {
			if ( accounts4[i].id < 4 ) {
				System.out.println("\n");
				System.out.println("Thong tin account thu" + ( i+1 ) );
				System.out.println("Email: " + accounts3[i].email);
				System.out.println("FullName: " + accounts3[i].fullName);
				System.out.println("DepartmentName: " + accounts3[i].departmentName.departmentName);
			}
			
		}
		System.out.println("\n");
		

//		Question 15:
//			In ra các số chẵn nhỏ hơn hoặc bằng 20
		
		System.out.println("In ra cac so chan nho hon hoac bang 20");
		for (int i = 0; i <= 20; i++ ) {
			if ( i%2 == 0) {
				System.out.println( i  );
				
			}
			
		}
		
		
		
		
		

	}

}
