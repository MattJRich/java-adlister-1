package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

@WebServlet(name = "CategoryServlet", urlPatterns = "/category")
public class CategoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String category = request.getParameter("value");

        List<Ad> userAds = DaoFactory.getAdsDao().all(); // List all ads
        List<String> sortedAd = new ArrayList<>();
        for (Ad info: userAds) {
            if ("1".equalsIgnoreCase(category)) {
                // System.out.println(info.getCatString());
                if(info.getCatString().toLowerCase().contains("sports")){
                    sortedAd.add(info.getTitle());

                    request.setAttribute("catAd", DaoFactory.getAdsDao().selWhile((long) 1));
                    System.out.println(info.getDescription());
                }
            }

            if ("2".equalsIgnoreCase(category)) {
                // System.out.println(info.getCatString());
                if(info.getCatString().toLowerCase().contains("camping")){
                    sortedAd.add(info.getTitle());

                    request.setAttribute("catAd", DaoFactory.getAdsDao().selWhile((long) 2));
                    System.out.println(info.getDescription());
                }
            }

            if ("3".equalsIgnoreCase(category)) {
                // System.out.println(info.getCatString());
                if(info.getCatString().toLowerCase().contains("computers")){
                    sortedAd.add(info.getTitle());

                    request.setAttribute("catAd", DaoFactory.getAdsDao().selWhile((long) 3));
                    System.out.println(info.getDescription());
                }
            }

            if ("4".equalsIgnoreCase(category)) {
                // System.out.println(info.getCatString());
                if(info.getCatString().toLowerCase().contains("phones")){
                    sortedAd.add(info.getTitle());

                    request.setAttribute("catAd", DaoFactory.getAdsDao().selWhile((long) 4));
                    System.out.println(info.getDescription());
                }
            }

            if ("5".equalsIgnoreCase(category)) {
                // System.out.println(info.getCatString());
                if(info.getCatString().toLowerCase().contains("jobs")){
                    sortedAd.add(info.getTitle());

                    request.setAttribute("catAd", DaoFactory.getAdsDao().selWhile((long) 5));
                    System.out.println(info.getDescription());
                }
            }

            if ("6".equalsIgnoreCase(category)) {
                // System.out.println(info.getCatString());
                if(info.getCatString().toLowerCase().contains("clothing")){
                    sortedAd.add(info.getTitle());

                    request.setAttribute("catAd", DaoFactory.getAdsDao().selWhile((long) 6));
                    System.out.println(info.getDescription());
                }
            }

            if ("7".equalsIgnoreCase(category)) {
                // System.out.println(info.getCatString());
                if(info.getCatString().toLowerCase().contains("cars")){
                    sortedAd.add(info.getTitle());

                    request.setAttribute("catAd", DaoFactory.getAdsDao().selWhile((long) 7));
                    System.out.println(info.getDescription());
                }
            }

            if ("8".equalsIgnoreCase(category)) {
                // System.out.println(info.getCatString());
                if(info.getCatString().toLowerCase().contains("furniture")){
                    sortedAd.add(info.getTitle());

                    request.setAttribute("catAd", DaoFactory.getAdsDao().selWhile((long) 8));
                    System.out.println(info.getDescription());
                }
            }

            if ("9".equalsIgnoreCase(category)) {
                // System.out.println(info.getCatString());
                if(info.getCatString().toLowerCase().contains("other")){
                    sortedAd.add(info.getTitle());

                    request.setAttribute("catAd", DaoFactory.getAdsDao().selWhile((long) 9));
                    System.out.println(info.getDescription());
                }
            }
        }

        request.getRequestDispatcher("/WEB-INF/ads/category.jsp").forward(request, response);

    }
}
