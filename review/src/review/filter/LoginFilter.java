package review.filter;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by 90860 on 2017/2/8 0008.
 */
public class LoginFilter implements Filter {


    private FilterConfig config;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

        config = filterConfig;


    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session =request.getSession();

        String noFilter = config.getInitParameter("noFilter");
        if (noFilter!=null){
            String[] noFilterArray = noFilter.split(";");
            for (int i=0;i<noFilterArray.length;i++){
                if (request.getRequestURI().indexOf(noFilterArray[i]) !=-1) {
                    filterChain.doFilter(servletRequest, servletResponse);
                    return;
                }
            }
        }


        if ( session.getAttribute("account") != null) {
            filterChain.doFilter(servletRequest, servletResponse);
        } else {
            response.sendRedirect("index.jsp");
        }
    }

    @Override
    public void destroy() {

    }
}
