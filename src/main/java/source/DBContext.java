package source;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {
    //INSERT YOUR OTHER CODE RIGHT AFTER THIS//
    //CHANGE OR UPDATE YOUR INFORMATION OF YOUR DATABASE CONNECTION, DO NOT CHANGE NAME OF INSTANCE VARIABLES IN THIS CLASS//

    private static final String serverName = "localhost";
    private static final String dbName = "db_project1";
    private static final String portNumber = "3306";
    private static final String instance = "";
    private static final String userID = "root";
    private static final String userPassword = "12345a@A";

    //USE BELOW METHOD FOR YOUR DATABASE CONNECTION FOR BOTH SINGLE & MULTIPLE SQL SERVER INSTANCE//
    //DO NOT EDIT THE BELOW METHOD, JUST USE IT FOR YOUR DATABASE CONNECTION//

    public Connection getConnection () throws ClassNotFoundException, SQLException {
        String url = "";
        if(instance == null || instance.trim().isEmpty()) {
            url = "jdbc:mysql://" + serverName + ":" + portNumber + "/" + dbName;
        } else {
            url = "jdbc:mysql://" + serverName + ":" + portNumber + "/" + instance + "/" + dbName;
        }
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection(url,userID,userPassword);
    }
}
