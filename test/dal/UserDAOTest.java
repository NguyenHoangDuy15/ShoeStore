/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package dal;

import Model.User;
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
        User expected = new User(3, "theanh", password, "Nguyễn Thế Anh", "anhnt@fpt.edu.vn", null, null, null, 2);
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
        User seller1 = new User(3, "theanh", change.toSHA1("123"), "Nguyễn Thế Anh", "anhnt@fpt.edu.vn", null, null, null, 2);
        User seller2 = new User(4, "anhquan", change.toSHA1("123"), "Nguyễn Anh Quân", "quanna@fpt.edu.vn", null, null, null, 2);
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
}
