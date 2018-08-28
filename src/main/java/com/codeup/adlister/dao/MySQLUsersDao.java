package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection;
    private Config config = new Config();

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


    @Override
    public User findByUsername(String username) {
        String query = "SELECT * FROM users WHERE username = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, username);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    @Override
    public Long insert(User user) throws SQLIntegrityConstraintViolationException {
        String query = "INSERT INTO users(username, email, password) VALUES (?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLIntegrityConstraintViolationException myError) {
            throw new SQLIntegrityConstraintViolationException("this is an error");
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }

    private User extractUser(ResultSet rs) throws SQLException {
        if (! rs.next()) {
            return null;
        }
        return new User(
            rs.getLong("id"),
            rs.getString("username"),
            rs.getString("email"),
            rs.getString("password")
        );
    }

    @Override
    public boolean validateUsername(String username) throws SQLException {
        boolean usernameExist = false;
        DriverManager.registerDriver(new Driver());
        connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
        );
        String query = "SELECT * FROM users WHERE username = ?";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, username);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            if (rs.getString("username").equals(username)) {
                usernameExist = true;
            }
        }
        return usernameExist;
    }

    @Override
    public boolean validateEmail(String email) throws SQLException {
        boolean emailExist = false;
        DriverManager.registerDriver(new Driver());
        connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
        );
        String query = "SELECT * FROM users WHERE email = ?";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, email);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            if (rs.getString("email").equals(email)) {
                emailExist = true;
            }
        }
        return emailExist;
    }
}
