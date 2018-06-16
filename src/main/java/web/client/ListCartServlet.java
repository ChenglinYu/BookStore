package web.client;

import domain.Category;
import domain.Page;
import service.impl.BusinessServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by snow on 2018/6/16.
 */
public class ListCartServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BusinessServiceImpl service = new BusinessServiceImpl();
        List<Category> categories = service.getAllCategory();
        request.setAttribute("categories", categories);
        String pagenum = request.getParameter("pagenum");
        Page page = service.getBookPageData(pagenum);
        request.setAttribute("page", page);

        request.getRequestDispatcher("/client/cart_new.jsp").forward(request, response);
    }
}
