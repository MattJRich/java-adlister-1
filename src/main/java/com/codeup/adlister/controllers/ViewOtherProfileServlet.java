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
import java.util.List;

@WebServlet(name = "ViewOtherProfileServlet", urlPatterns = "/viewOtherProfile")
public class ViewOtherProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            try {
                User user = DaoFactory.getUsersDao().findByUsername(request.getParameter("username"));
                long userId = user.getId();
                request.setAttribute("user", user);
                List<Ad> userAds = DaoFactory.getAdsDao().getUserAds(userId);

                int numberOfAds = userAds.size();
                request.setAttribute("userAds", userAds);
                request.setAttribute("numberOfAds", numberOfAds);
                request.getRequestDispatcher("/WEB-INF/viewOtherProfile.jsp").forward(request, response);
            } catch (SQLException e) {
                e.printStackTrace();
            }

        } else {
            String username = request.getParameter("username");
            User currentUser = (User) request.getSession().getAttribute("user");
            String currentUsername = currentUser.getUsername();
            if (username.equals(currentUsername)) {
                response.sendRedirect("/profile");
            } else {
                try {
                    User user = DaoFactory.getUsersDao().findByUsername(request.getParameter("username"));
                    long userId = user.getId();
                    request.setAttribute("user", user);
                    List<Ad> userAds = DaoFactory.getAdsDao().getUserAds(userId);

                    int numberOfAds = userAds.size();
                    request.setAttribute("userAds", userAds);
                    request.setAttribute("numberOfAds", numberOfAds);
                    request.getRequestDispatcher("/WEB-INF/viewOtherProfile.jsp").forward(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }


            }
        }


    }
}
