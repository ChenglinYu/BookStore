package web.client;

import domain.Book;
import domain.Cart;
import domain.Category;
import domain.Page;
import service.impl.BusinessServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class BuyServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String bookid = request.getParameter("bookid");
            BusinessServiceImpl service = new BusinessServiceImpl();
            Book book = service.findBook(bookid);
            Cart cart = (Cart) request.getSession().getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                request.getSession().setAttribute("cart", cart);
            }
            service.buyBook(cart, book);
            List<Category> categories = service.getAllCategory();
            request.setAttribute("categories", categories);
            String pagenum = request.getParameter("pagenum");
            Page page = service.getBookPageData(pagenum);
            request.setAttribute("page", page);
            request.getRequestDispatcher("/client/body.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "¹ºÂòÊ§°Ü");
            request.getRequestDispatcher("/message.jsp").forward(request, response);
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }
//
//    public void getAll(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        BusinessServiceImpl service = new BusinessServiceImpl();
//        List<Category> categories = service.getAllCategory();
//        request.setAttribute("categories", categories);
//        String pagenum = request.getParameter("pagenum");
//        Page page = service.getBookPageData(pagenum);
//        request.setAttribute("page", page);
//        request.getRequestDispatcher("/client/cart.jsp").forward(request, response);
//    }

}
