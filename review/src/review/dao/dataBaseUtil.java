package review.dao;

import java.sql.*;

/**
 * Created by 90860 on 2017/1/23.
 */
public class dataBaseUtil {
    private static String driver = "com.mysql.jdbc.Driver";
    private static String url = "jdbc:mysql://127.0.0.1:3306/lxr";
    private static String userName = "root";
    private static String passWord = "root";

    /**
     * @return 返回Connection
     */
    public static Connection getConnection()  {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (null == conn) {
            try {
                conn = DriverManager.getConnection(url, userName, passWord);
            } catch (SQLException e) {
                System.out.println("数据库连接失败");
                e.printStackTrace();
            }
        }
        return conn;
    }

}