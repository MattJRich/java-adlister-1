package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.List;

public interface Users {
    User findByUsername(String username);
    Long insert(User user) throws SQLIntegrityConstraintViolationException;
    boolean validateUsername(String username) throws SQLException;
    boolean validateEmail(String username) throws SQLException;
    int updateUsername(String username, long id) throws SQLIntegrityConstraintViolationException;
    int updateEmail(String email, long id) throws SQLIntegrityConstraintViolationException;
}
