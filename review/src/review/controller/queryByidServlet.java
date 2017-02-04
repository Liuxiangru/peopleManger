package review.controller;

import review.dao.PeopleDaoImpl;
import review.entity.People;
import review.service.PeopleDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by 90860 on 2017/2/3.
 */
@WebServlet(name = "queryByidServlet")
public class queryByidServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PeopleDao pdi =new PeopleDaoImpl();

        int  pid= Integer.parseInt(request.getParameter("pid"));

        People p= pdi.queryPeopleByPid(pid);

        request.getSession().setAttribute("p",p);

//        session

        System.out.println("pname---"+p.getName());

        if (p!=null){
            response.sendRedirect(request.getContextPath()+"/queryById.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }
}
