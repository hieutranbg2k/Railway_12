package bt_bosung;

import java.util.Iterator;
import java.util.Scanner;

public class Program {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
////1* - viết hàm tính chu vi hình chữ nhật

//		Scanner scanner = new Scanner(System.in);
//		System.out.println("Mot ban nhap vao chieu rong: " );
//		int chieuRong = scanner.nextInt();
//		System.out.println("Moi ban nhap vao chieu dai: ");
//		int chieuDai = scanner.nextInt();
//		//String soTrave = demSo(soNhapVao);
//		int chuVi = chuViHinhChuNhat(chieuRong, chieuDai);
//		System.out.println("chu vi hinh chu nhat co: chieu rong " + chieuRong  + ""
//				+ " (cm) ,chieu dai " + chieuDai +" (cm) la  : " + chuVi + " (cm)" );

//// 2** - viết hàm tính diện tích hình vuông.
//		Scanner scanner = new Scanner(System.in);
//		System.out.println("Moi ban nhap do dai mot canh");
//		int doDaiCanh = scanner.nextInt();
//		//String soTrave = denso(soNhapVao);
//		int dienTich = dienTichHinhVuong (doDaiCanh);
//		System.out.println("dien tich hinh vuong co: do dai canh " + doDaiCanh + "(cm) la " + dienTich + "(cm^2) ");

////3*** - Viết chương trình tìm tất cả các số chia hết cho 7 nhưng không phải bội số của 5, nằm trong đoạn 10 và 200

//		for (int j = 10; j < 200; j++) {
//			if (j%7 == 0 && j%5 != 0) {
//				System.out.println("Boi so cua 7 la: " + j);
//					
//				}
//			}

//// 4**** - Hãy viết chương trình tính tổng các chữ số của một số nguyên bất kỳ. Ví dụ: Số 8545604 có tổng các chữ số là: 8+5+4+5+6+0+4= 32.

//		int n, soDu, tong = 0;
//		Scanner scanner = new Scanner(System.in);
//
//		System.out.println("Nhập vào số nguyên dương bất kỳ: ");
//		n = scanner.nextInt();
//
//		while (n > 0) {
//			soDu = n % 10;
//			n = n / 10;
//			tong += soDu;
//		}
//
//		System.out.println("Tổng các chữ số = " + tong);

//	5****** - Viết chương trình giải phương trình bậc 2
		
//		 double a, b, c, x1, x2, delta;
//		    String ketQua = "";
//		    Scanner scanner = new Scanner(System.in);
//		     
//		    System.out.println("Giải phương trình ax^2 + bx + c = 0");
//		         
//		    do {
//		        System.out.print("Nhập a (a # 0): ");
//		        a = scanner.nextDouble();
//		    } while (a == 0);
//		    System.out.print("Nhập b: ");
//		    b = scanner.nextDouble();
//		    System.out.print("Nhập c: ");
//		    c = scanner.nextDouble();
//		         
//		    // tính delta = b * b - 4 * a * c;
//		    delta = Math.pow(b, 2) - 4 * a * c;
//		         
//		    // kiểm tra nếu delta < 0 thì phương trình vô nghiệm
//		    // delta = 0 thì phương trình có nghiệm kép
//		    // delta > 0 thì phương trình có 2 nghiệm phân biệt
//		    if (delta < 0) {
//		        ketQua = "Phương trình vô nghiệm!";
//		    } else if (delta == 0) {
//		        x1 = x2 = -b/ (2*a);
//		        ketQua = "Phương trình co nghiem kep x1 = x2 =" + x1  ;
//		       
//		    } else {
//		        x1 = (-b + Math.sqrt(delta)) / (2 * a);
//		        x2 = (-b - Math.sqrt(delta)) / (2 * a);
//		        ketQua = "Phương trình có 2 nghiệm x1 = " + x1 + " và x2 = " + x2;
//		    }
//		         
//		    System.out.println(ketQua);
		
// 6****** - Viết chương trình đăng nhập tài khoản, cho phép nhập vào username và password, nếu nhập đúng thông báo đăng nhập thành công
		
//		    int username = 123, password = 123456;
//	        int demoUser, demoPass1;
//	        Scanner scanner = new Scanner(System.in);
//	         
//	        do {
//	            System.out.println("Nhập vào username: ");
//	            demoUser = scanner.nextInt();
//	            System.out.println("Nhập vào password: ");
//	            demoPass1 = scanner.nextInt();
//	        } while((username != demoUser) || (password != demoPass1));
//	     
//	        System.out.println("Welcome " + demoUser);
	    
		
		
		
	}
//// 1* - viết hàm tính chu vi hình chữ nhật	
//	public static int chuViHinhChuNhat (int chieuRong, int chieuDai) {
//		int chuVi = (chieuRong + chieuDai)*2;
//		return chuVi;
//	}

//// 2** - viết hàm tính diện tích hình vuông.
//	public static int dienTichHinhVuong  ( int doDaiCanh) {
//		int dienTich = doDaiCanh * doDaiCanh;
//		return dienTich;
//	}
//		
//	

}
