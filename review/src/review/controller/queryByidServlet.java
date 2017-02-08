package review.controller;

import review.dao.PeopleDaoImpl;
import review.entity.People;
import review.dao.PeopleDao;
import review.service.PeopleService;
import review.service.PeopleServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by 90860 on 2017/2/3.
 */
@WebServlet(name = "queryByidServlet")
public class queryByidServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PeopleService psi = new PeopleServiceImpl();

        int  pid= Integer.parseInt(request.getParameter("pid"));

        People p= psi.queryPeopleByPid(pid);

        request.getSession().setAttribute("p",p);

        if (p.getName()!=null){
            response.sendRedirect(request.getContextPath()+"/queryById.jsp");
        }
        else {
            response.sendRedirect(request.getContextPath()+"/queryByIdFail.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }
}
