/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package dal;

import Model.User;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import util.MaHoa;


public class UserDAOTest {

    @Test
    public void testGetUserByUserId() {
        System.out.println("getUserByUserId");
        // ID tai khoan muon test
        int ID = 3;
        // Tài khoản muốn nhận được
        MaHoa change = new MaHoa();
        String password = change.toSHA1("123");
        User expected = new User(3, "theanh", password, 
                "Nguyễn Thế Anh", "anhnt@fpt.edu.vn", null, null, null, 2);
        // Tài khoản được lấy ra
        UserDAO dao = new UserDAO();
        User result = dao.getUserByUserId(ID);
        //check result
        System.out.println(expected.toString());
        System.out.println(result.toString());
        // Kết quả
        assertEquals(expected.toString(), result.toString());
    }

    @Test
    public void testGetAllSeller() {
        System.out.println("getAllSeller");
        // Kết quả muốn nhận được
        List<User> listExpect = new ArrayList<>();
        MaHoa change = new MaHoa();
        User seller1 = new User(3, "theanh", change.toSHA1("123"), 
                "Nguyễn Thế Anh", "anhnt@fpt.edu.vn", null, null, null, 2);
        User seller2 = new User(4, "anhquan", change.toSHA1("123"), 
                "Nguyễn Anh Quân", "quanna@fpt.edu.vn", null, null, null, 2);
        listExpect.add(seller1);
        listExpect.add(seller2);
        // Kết quả nhận được
        UserDAO dao = new UserDAO();
        List<User> listResult = dao.getAllSeller();
        // in ra kết quả
        System.out.println(listExpect.toString());
        System.out.println(listResult.toString());
        // Kết quả
        assertEquals(listExpect.toString(), listResult.toString());
    }
    
    //khong phai void
    // checkWithGmail
    @Test
    public void testCheckWithGmail() {
        System.out.println("CheckWithGmail");
        // Username, password tai khoan muon test
        String username = "sa";
        String email = "sa@fpt.edu.vn";
        // Tài khoản muốn nhận được
        User expected = new User(5, "sa", "c2Fmd2VxZndlO2hmaXVkc2Zhc2RmYXNkZmFz", 
                "sa", "sa@fpt.edu.vn", null, null, null, 3);
        // Tài khoản được lấy ra
        UserDAO dao = new UserDAO();
        User result = dao.checkWithGmail(username, email);
        //check result
        System.out.println(expected.toString());
        System.out.println(result.toString());
        // Kết quả
        assertEquals(expected.toString(), result.toString());
    }
    // List<User> getAll()
    @Test
    public void testGetAll() throws ParseException {
        System.out.println("getAll");
        // Kết quả muốn nhận được
        List<User> listExpect = new ArrayList<>();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        User user1 = new User(1, "hoangduy", "MTIzNDU2Nzg5ZndlcWZ3ZTtoZml1ZHNmYXNkZmFzZGZhcw==", 
                "Nguyễn Hoàng Duy", "duynhhe180181@fpt.edu.vn", null, null, null, 1);
        User user2 = new User(2, "uyenbeo", "NTEyMDA0ZndlcWZ3ZTtoZml1ZHNmYXNkZmFzZGZhcw==", 
                "Nguyễn Thu Uyên", "Uyennt@fpt.edu.vn", null, null, null, 1);
        User user3 = new User(3, "theanh", "MTIzZndlcWZ3ZTtoZml1ZHNmYXNkZmFzZGZhcw==", 
                "Nguyễn Thế Anh", "anhnt@fpt.edu.vn", null, null, null, 2);
        User user4 = new User(4, "anhquan", "MTIzZndlcWZ3ZTtoZml1ZHNmYXNkZmFzZGZhcw==", 
                "Nguyễn Anh Quân", "quanna@fpt.edu.vn", null, null, null, 2);
        User user5 = new User(5, "sa", "c2Fmd2VxZndlO2hmaXVkc2Zhc2RmYXNkZmFz", 
                "sa", "sa@fpt.edu.vn", null, null, null, 3);
        User user6 = new User(6, "123", "MTIzZndlcWZ3ZTtoZml1ZHNmYXNkZmFzZGZhcw==", 
                "123", "123@fpt.edu.vn", null, null, null, 3);
        User user9 = new User(9, "8", "OGZ3ZXFmd2U7aGZpdWRzZmFzZGZhc2RmYXM=", 
                "8", "8", null, null, null, 3);
        User user10 = new User(10, "1234", "MTIzNGZ3ZXFmd2U7aGZpdWRzZmFzZGZhc2RmYXM=", 
                    "Nguyen anh quan", "hamidibasma@gmail.com", format.parse("1900-01-01"), "Male", "1234", 3);
        User user11 = new User(11, "9", "OWZ3ZXFmd2U7aGZpdWRzZmFzZGZhc2RmYXM=", 
                "9", "9", null, null, null, 3);
        listExpect.add(user1);
        listExpect.add(user2);
        listExpect.add(user3);
        listExpect.add(user4);
        listExpect.add(user5);
        listExpect.add(user6);
        listExpect.add(user9);
        listExpect.add(user10);
        listExpect.add(user11);
        // Kết quả nhận được
        UserDAO dao = new UserDAO();
        List<User> listResult = dao.getAll();
        // in ra kết quả
        System.out.println(listExpect.toString());
        System.out.println(listResult.toString());
        // Kết quả
        assertEquals(listExpect.toString(), listResult.toString());
    }
    // check(String username, String password) 
    
    //void
    //changePass(String pass, int id)
    @Test
    public void testChangePass() throws Exception {
          UserDAO dao = new UserDAO();
          MaHoa change = new MaHoa();
          // Gọi changePass để đổi mật khẩu
          dao.changePass(change.toSHA1("8"), 9);
          
          //Lấy mật khẩu trong database xem nó đã thay đổi chưa
          User u = dao.getUserByUserId(9);
          // check mật khẩu
          assertEquals(change.toSHA1("8"), u.getPassword());
    }
    
}
