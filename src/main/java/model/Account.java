package model;

public class Account {
    private String userName;
    private String userPassword;

    public Account(String userName, String userPassword) {
        this.userName = userName;
        this.userPassword = userPassword;
    }

    public Account() {
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }
}
