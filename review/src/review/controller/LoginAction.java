package review.controller;

import review.dao.dataBaseUtil;
import review.entity.People;

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
@WebServlet(name = "LoginAction")
public class LoginAction extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        System.out.println("account"+account);
        System.out.println("password"+password);
        HttpSession session = request.getSession();
//        String account="qq";
//        String password="qq";

        /**
         * 声明 连接 预处理声明  结果集 sql
         */
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql =null;
        try {
            conn = dataBaseUtil.getConnection();
            sql = "select account,password from account where account=? and password=?";
            System.out.println("执行的sql语句" + sql);
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, account);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
//            System.out.println(rs + "-----------" + rs.next());//把这句注释掉就可以了跳到登陆成功 不注释登录失败 什么情况

            if(rs.next()){
                System.out.println("登陆成功");
                response.sendRedirect(request.getContextPath() + "/loginsuccess.jsp");
//                request.getRequestDispatcher("/loginsuccess.jsp").forward(request, response);
                session.setAttribute("account", account);
//                request.setAttribute("account",account);
            }else{
                System.out.println("登录失败");
                response.sendRedirect(request.getContextPath() + "/index.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
                if (rs!=null){
                    rs.close();
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
