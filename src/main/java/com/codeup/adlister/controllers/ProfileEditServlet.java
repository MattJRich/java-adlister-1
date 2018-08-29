package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

@WebServlet(name = "ProfileEditServlet", urlPatterns = "/profile/edit")
public class ProfileEditServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/profileEdit.jsp").forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String email = request.getParameter("email");

        User user =  (User) request.getSession().getAttribute("user");
        long id = user.getId();

        System.out.println(username);
        System.out.println(email);

        if (email == null ) {
            try {
                boolean usernameNotValid = DaoFactory.getUsersDao().validateUsername(username);
                if (usernameNotValid) {
                    request.setAttribute("usernameTaken", true);
                    request.getRequestDispatcher("/WEB-INF/profileEdit.jsp").forward(request, response);
                } else {
                    request.setAttribute("usernameTaken", false);
                    System.out.println(DaoFactory.getUsersDao().updateUsername(username, id));
                    request.getSession().removeAttribute("user");
                    User newUser = DaoFactory.getUsersDao().findByUsername(username);
                    request.getSession().setAttribute("user", newUser);
                    request.getRequestDispatcher("/WEB-INF/profileEdit.jsp").forward(request, response);
                }

            } catch (SQLIntegrityConstraintViolationException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }

        if (username == null) {
            try {
                boolean userEmailNotValid = DaoFactory.getUsersDao().validateEmail(email);
                    if (userEmailNotValid) {
                        request.setAttribute("emailTaken", true);
                        request.getRequestDispatcher("/WEB-INF/profileEdit.jsp").forward(request, response);

                    } else {
                        request.setAttribute("emailTaken", false);
                        System.out.println(DaoFactory.getUsersDao().updateEmail(email, id));
                        User currentUser = (User) request.getSession().getAttribute("user");
                        String currentUsername = currentUser.getUsername();
                        User newUser = DaoFactory.getUsersDao().findByUsername(currentUsername);
                        request.getSession().removeAttribute("user");
                        request.getSession().setAttribute("user", newUser);
                        request.getRequestDispatcher("/WEB-INF/profileEdit.jsp").forward(request, response);

                    }


            } catch (SQLException e) {
                e.printStackTrace();
            }


        }





        request.getSession().setAttribute("user", user);

        try {
            if (DaoFactory.getUsersDao().validateEmail(email) && DaoFactory.getUsersDao().validateUsername(username)) {
                request.setAttribute("bothTaken", true);
                return;

            } else if (DaoFactory.getUsersDao().validateUsername(username)) {
                request.setAttribute("email", email);
                request.setAttribute("usernameTaken", true);
                request.getRequestDispatcher("/WEB-INF/profileEdit.jsp").forward(request, response);
                return;

            } else if (DaoFactory.getUsersDao().validateEmail(email)) {
                request.setAttribute("username", username);
                request.setAttribute("emailTaken", true);
                request.getRequestDispatcher("/WEB-INF/profileEdit.jsp").forward(request, response);
                return;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

//        try {
//            DaoFactory.getUsersDao().updateUser(user);
//        } catch (SQLIntegrityConstraintViolationException e) {
//            e.printStackTrace();
//        }

    }
}



