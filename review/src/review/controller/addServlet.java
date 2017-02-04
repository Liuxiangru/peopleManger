package review.controller;

import review.dao.PeopleDaoImpl;
import review.entity.People;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by 90860 on 2017/2/3.
 */
@WebServlet(name = "addServlet")
public class addServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        People p = new People();
        PeopleDaoImpl pdi =new PeopleDaoImpl();

        String  name=  request.getParameter("name");
        String  sex=  request.getParameter("sex");
        int  age= Integer.parseInt(request.getParameter("age"));

        p.setName(name);
        p.setSex(sex);
        p.setAge(age);

        boolean d =pdi.addPeople(p);
        if (d==true){
            response.sendRedirect(request.getContextPath() + "/loginsuccess.jsp");
        }else{

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }
}
