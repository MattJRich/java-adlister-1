package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
                .forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        try {
        String[] categories = request.getParameterValues("category");
        String catString = Arrays.toString(categories);
        System.out.println(catString);
//            String title = request.getParameter("title");
//            String description = request.getParameter("description");
//            User user = (User) request.getSession().getAttribute("user");
//            long userId = user.getId();
//            String date = DaoFactory.getAdsDao().getCurrentDate();
//            int adId = DaoFactory.getAdsDao().insertIntoAds(userId, title, description, date);
//            for (String category: categories) {
//                DaoFactory.getAdsDao().insertAdCategories(adId, Long.parseLong(category));
//            }
//            }
////
//        catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//
        response.sendRedirect("/ads");
    }
}