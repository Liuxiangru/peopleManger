package review.controller;

import review.dao.dataBaseUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by 90860 on 2017/1/24.
 */
@WebServlet(name = "Register")
public class Register extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        String account = request.getParameter("account");
        String password = request.getParameter("password");



        /**
         * 声明
         */
        Connection conn = null;
        PreparedStatement pstmt = null, pstmt1 = null;
        int rs;
        ResultSet rs1;
        String sql = null, sql1 = null;


        String tip = "该账号已存在";

        /**
         * 查询账号是否存在步骤
         */
        sql1 = "select account from account where account=? ";
        try {
            conn = dataBaseUtil.getConnection();
            pstmt1 = conn.prepareStatement(sql1);
            pstmt1.setString(1, account);
            rs1 = pstmt1.executeQuery();


            if (rs1 == null) {
                /**
                 * 注册步骤
                 */
                sql = "insert into account(account,password) values(?,?)";
                try {
                    pstmt = conn.prepareStatement(sql);
                    pstmt.setString(1, account);
                    pstmt.setString(2, password);
                    rs = pstmt.executeUpdate();
                    if (rs == 1) {
                        response.sendRedirect(request.getContextPath() + "/index.jsp");
//                request.getRequestDispatcher("/index.jsp").forward(request, response);
                    } else {
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
            } else {
                session.setAttribute("tip", tip);
                request.getRequestDispatcher("/register.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
