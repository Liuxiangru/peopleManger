package review.controller;

import review.dao.dataBaseUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by 90860 on 2017/1/24.
 */
@WebServlet(name = "Register")
public class Register extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setCharacterEncoding("UTF-8");
        String account = request.getParameter("account");
        String password = request.getParameter("password");

        Connection conn = null;

        PreparedStatement pstmt = null;

        int rs;

        String sql = null;

        String tip = "该账号已存在";

        sql = "insert into account(account,password) values(?,?)";

        try {
            conn = dataBaseUtil.getConnection();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("conn" + conn);
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, account);
            pstmt.setString(2, password);
            rs = pstmt.executeUpdate();
            System.out.println("rs:" + rs);
            if (rs == 1) {
                System.out.println("" + request.getContextPath());
                response.sendRedirect(request.getContextPath()+"/index.jsp");
//                request.getRequestDispatcher("/index.jsp").forward(request, response);
            } else {
                request.setAttribute("tip", tip);
                request.getRequestDispatcher("/register").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
                System.out.println("释放资源发生异常");
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
