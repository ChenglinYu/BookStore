package web.client;

import domain.Category;
import domain.Order;
import domain.Page;
import service.impl.BusinessServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ClientListOrderServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userid = request.getParameter("userid");
        BusinessServiceImpl service = new BusinessServiceImpl();
        List<Order> orders = service.clientListOrder(userid);
        request.setAttribute("orders", orders);

        //TODO: 显示订单
//        request.getRequestDispatcher("/client/clientlistorder.jsp").forward(request, response);
        List<Category> categories = service.getAllCategory();
        request.setAttribute("categories", categories);
        String pagenum = request.getParameter("pagenum");
        Page page = service.getBookPageData(pagenum);
        request.setAttribute("page", page);
        request.getRequestDispatcher("/client/order_new.jsp").forward(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }

}
