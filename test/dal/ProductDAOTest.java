/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package dal;

import Model.Product;
import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author THU UYEN
 */
public class ProductDAOTest {

    public ProductDAOTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    /**
     * Test of main method, of class ProductDAO.
     */
    @Test
    public void testDeleteProduct() {
        // Khởi tạo ProductDAO để thao tác với database
        ProductDAO productDao = new ProductDAO();

        // Gọi phương thức delete để xóa sản phẩm có ID = 3
        productDao.delete(3);

        // Thử lấy lại sản phẩm sau khi đã xóa
        Product deletedProduct = productDao.getProductById(3);

        // In ra giá trị của sản phẩm đã xóa để kiểm tra trong console
        System.out.println("Deleted Product: " + deletedProduct);

        // Kiểm tra xem sản phẩm đã bị xóa hay chưa (nếu xóa thành công, nó phải là null)
        assertNull(deletedProduct);
    }

    @Test
    public void testGetProductById() {
        System.out.println("getProductById");

        // ID sản phẩm muốn test
        int productId = 12;

        // Giá trị mong đợi
        Product expected = new Product(12, "Adidas Stan Smith", 199.00, "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/36970c01ecaf4001abdfac0200dd4c06_9366/Giay_Stan_Smith_trang_FX7519_01_standard.jpg", "Beautiful", 2);
        // Gọi hàm DAO để lấy dữ liệu
        ProductDAO dao = new ProductDAO();
        Product result = dao.getProductById(productId);

        // In ra để kiểm tra
        System.out.println(expected.toString());
        System.out.println(result.toString());

        // Kiểm tra kết quả
        assertEquals(expected.toString(), result.toString());
    }
}
