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
 * Created by 90860 on 2017/2/10 0010.
 */
@WebServlet(name = "registerTestServlet")
public class registerTestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        String account = request.getParameter("account");

        /**
         * 声明
         */
        Connection conn = null;
        PreparedStatement pstmt1 = null;
        ResultSet rs1 = null;
        String sql1 = null;

        String tip = "该账号已经存在";
        String tip2 = "该账号可以使用";

        sql1 = "select account from account where account=? ";

        try {
            conn = dataBaseUtil.getConnection();
            pstmt1 = conn.prepareStatement(sql1);
            pstmt1.setString(1, account);
            rs1 = pstmt1.executeQuery();
            if (rs1.next()){
                System.out.println("rs1.next();"+rs1.next());
                response.getWriter().write(tip);
            }else {
                response.getWriter().write(tip2);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                if (pstmt1 != null) {
                    pstmt1.close();
                }
                if (conn != null) {
                    conn.close();
                }
                if (rs1 != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
