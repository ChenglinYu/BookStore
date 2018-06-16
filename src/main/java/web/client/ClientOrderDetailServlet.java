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

public class ClientOrderDetailServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String orderid = request.getParameter("orderid");
        BusinessServiceImpl service = new BusinessServiceImpl();
        Order order = service.findOrder(orderid);
        request.setAttribute("order", order);
//        request.getRequestDispatcher("/client/clientorderdetail.jsp").forward(request, response);


        //TODO: 显示订单详情
        List<Category> categories = service.getAllCategory();
        request.setAttribute("categories", categories);
        String pagenum = request.getParameter("pagenum");
        Page page = service.getBookPageData(pagenum);
        request.setAttribute("page", page);
        request.getRequestDispatcher("/client/orderDetail_new.jsp").forward(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }

}
