package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;
    private String username;
    private String dateMade;
    private String catString;

    public Ad(long id, long userId, String title, String description, String username, String dateMade, String catString) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.username = username;
        this.dateMade = dateMade;
        this.catString = catString;
    }

    public Ad(long id, long userId, String title, String description, String dateMade, String catString) {
        this.id = id;
        this.dateMade = dateMade;
        this.catString = catString;
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public Ad(long id, String title, String description, String username, String dateMade, String catString) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.username = username;
        this.dateMade = dateMade;
        this.catString = catString;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getDateMade() {
        return dateMade;
    }

    public void setDateMade(String dateMade) {
        this.dateMade = dateMade;
    }

    public String getCatString() {
        return catString;
    }

    public void setCatString(String catString) {
        this.catString = catString;
    }
}