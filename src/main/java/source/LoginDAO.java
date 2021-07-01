package source;

import model.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
    static Connection connection = null; //OPEN GATEWAY CONNECTION//
    static PreparedStatement ps = null; //SEND SQL COMMAND//
    static ResultSet rs = null; //GET RESULT FROM MySQL //

    public static Account checkLoginMethod(String userName, String userPassword) throws SQLException, ClassNotFoundException {
        String query = " SELECT account.user_name, account.user_password FROM db_project1.account WHERE user_name =? AND user_password =? ";
        connection = new DBContext().getConnection();
        ps = connection.prepareStatement(query);
        ps.setString(1,userName);
        ps.setString(2,userPassword);
        rs = ps.executeQuery();
        while (rs.next()) {
            return new Account(rs.getString(1),rs.getString(2));
        }
        return null;
    }

}
