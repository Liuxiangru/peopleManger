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
public class updateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        //声明
        People p = new People();
        PeopleDaoImpl pdi =new PeopleDaoImpl();
        //获取
        int  pid= Integer.parseInt(request.getParameter("pid"));
        String  name=  request.getParameter("name");
        String  sex=  request.getParameter("sex");
        int  age= Integer.parseInt(request.getParameter("age"));
        //设置
        p.setPid(pid);
        p.setName(name);
        p.setSex(sex);
        p.setAge(age);
        //调用更新
        boolean d = pdi.updatePeople(p);
        if (d==true){
            response.sendRedirect(request.getContextPath() + "/loginsuccess.jsp");
        }else{

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }
}
