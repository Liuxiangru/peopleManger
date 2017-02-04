package review.controller;

import review.dao.PeopleDaoImpl;
import review.entity.People;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by 90860 on 2017/2/3.
 */
public class deleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PeopleDaoImpl pdi =new PeopleDaoImpl();

        int  pid= Integer.parseInt(request.getParameter("pid"));

        boolean  d= pdi.deletePeopleById(pid);
        if (d==true){
            response.sendRedirect(request.getContextPath() + "/loginsuccess.jsp");
        }else{
            System.out.println("false");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
