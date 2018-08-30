package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.HelloWorldServlet", urlPatterns = "/home")
public class HelloWorldServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //response.getWriter().println("<h1>Hello, World!</h1>");
        List<Ad> all = DaoFactory.getAdsDao().all();
        for (Ad ad: all) {
            System.out.println(ad.getTitle());
        }

        request.setAttribute("all", DaoFactory.getAdsDao().all());
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
