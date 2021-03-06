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
//			Ki???m tra account th??? 2
//			N???u kh??ng c?? ph??ng ban (t???c l?? department == null) th?? s??? in ra text 
//			"Nh??n vi??n n??y ch??a c?? ph??ng ban"
//			N???u kh??ng th?? s??? in ra text "Ph??ng ban c???a nh??n vi??n n??y l?? ???"		

		System.out.println(" check account2");
		if (account2.departmentName == null) {
			;
			System.out.println("nhan vien nay chua co phong ban");
		} else {
			System.out.println("Phong ban cua nhan vien nay la: " + account2.departmentName.departmentName);
		}
		System.out.println("\n");

//		Question 2: 
//			Ki???m tra account th??? 2
//			N???u kh??ng c?? group th?? s??? in ra text "Nh??n vi??n n??y ch??a c?? group"
//			N???u c?? m???t trong 1 ho???c 2 group th?? s??? in ra text "Group c???a nh??n vi??n 
//			n??y l?? Java Fresher, C# Fresher"
//			N???u c?? m???t trong 3 Group th?? s??? in ra text "Nh??n vi??n n??y l?? ng?????i 
//			quan tr???ng, tham gia nhi???u group"
//			N???u c?? m???t trong 4 group tr??? l??n th?? s??? in ra text "Nh??n vi??n n??y l?? 
//			ng?????i h??ng chuy???n, tham gia t???t c??? c??c group"

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
//			S??? d???ng to??n t??? ternary ????? l??m Question 1

		System.out.println("check account 2");
		System.out.println(account2.departmentName == null ? "nhan vien nay chua co phong ban"
				: "phong ban cua nhan vien nay la: " + account2.departmentName.departmentName);
		System.out.println("\n");

//	 	Question 4:
//			S??? d???ng to??n t??? ternary ????? l??m y??u c???u sau:
//			Ki???m tra Position c???a account th??? 1
//			N???u Position = Dev th?? in ra text "????y l?? Developer"
//			N???u kh??ng ph???i th?? in ra text "Ng?????i n??y kh??ng ph???i l?? Developer"		

		System.out.println("check positon 1");
		System.out.println(account1.positionName.positionName.toString() == "DEV" ? " day la Developer "
				: "nguoi nay khong phai la Developer ");
		System.out.println("\n");

//-----------------------------------SWITCH CASE---------------------------------//		

//		Question 5:
//			L???y ra s??? l?????ng account trong nh??m th??? 1 v?? in ra theo format sau:
//			N???u s??? l?????ng account = 1 th?? in ra "Nh??m c?? m???t th??nh vi??n"
//			N???u s??? l?????ng account = 2 th?? in ra "Nh??m c?? hai th??nh vi??n"
//			N???u s??? l?????ng account = 3 th?? in ra "Nh??m c?? ba th??nh vi??n"
//			C??n l???i in ra "Nh??m c?? nhi???u th??nh vi??n"

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
//			S??? d???ng switch case ????? l??m l???i Question 2

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
//			S??? d???ng switch case ????? l??m l???i Question 4

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
//			In ra th??ng tin c??c account bao g???m: Email, FullName v?? t??n ph??ng ban c???a 
//			h???

		System.out.println("In ra thong tin cac account bao gom: Email,FullName va ten phong ban cua ho");
		Account[] accounts = { account1, account2, account3 };

		for (Account account : accounts) {
			System.out.println(
					"AccountId:" + account.id + " Email :" + account.email + " FullName : " + account.fullName);
		}
		System.out.println("\n");

//		Question 9: 
//			In ra th??ng tin c??c ph??ng ban bao g???m: id v?? name	

		System.out.println("In ra thong tin cac phong ban bao gom : id va name");
		Group[] groups = { group1, group2, group3 };

		for (Group group : groups) {
			System.out.println("GroupId: " + group.id + " groupName: " + group.groupName);

		}
		System.out.println("\n");
		
		
//---------------------------------------FOR---------------------------------------------------//		
		
//		Question 10: 
//			In ra th??ng tin c??c account bao g???m: Email, FullName v?? t??n ph??ng ban c???a 
//			h??? theo ?????nh d???ng nh?? sau:
//			Th??ng tin account th??? 1 l??: 
//			Email: NguyenVanA@gmail.com
//			Full name: Nguy???n V??n A
//			Ph??ng ban: Sale
//			Th??ng tin account th??? 2 l??: 
//			Email: NguyenVanB@gmail.com
//			Full name: Nguy???n V??n B
//			Ph??ng ban: Marketting		
		
		
		
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
//			In ra th??ng tin c??c ph??ng ban bao g???m: id v?? name theo ?????nh d???ng sau:
//			Th??ng tin department th??? 1 l??:
//			Id: 1
//			Name: Sale
//			Th??ng tin department th??? 2 l??:
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
//			Ch??? in ra th??ng tin 2 department ?????u ti??n theo ?????nh d???ng nh?? Question 10		
		
		
		
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
//			In ra th??ng tin t???t c??? c??c account ngo???i tr??? account th??? 2		
		
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
//			In ra th??ng tin t???t c??? c??c account c?? id < 4	
		
		
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
//			In ra c??c s??? ch???n nh??? h??n ho???c b???ng 20
		
		System.out.println("In ra cac so chan nho hon hoac bang 20");
		for (int i = 0; i <= 20; i++ ) {
			if ( i%2 == 0) {
				System.out.println( i  );
				
			}
			
		}
		
		
		
		
		

	}

}
