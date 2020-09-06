package dataLayer;

import java.sql.*;

public class DB_user {
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/project?serverTimezone=EST5EDT";

    static final String USER = "projectuser";
    static final String PASS = "test123";

    //checks whether particular user exists in database
    public boolean isValidUserLogIn(String sUserName, String sUserPassword){
        boolean isValidUser = false;

        Connection conn = null;
        Statement stmt = null;
        String sql = "";

        try{
            //registering jdbc driver
            Class.forName("com.mysql.jdbc.Driver");


            //opening a connection
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL,USER,PASS);

            //executing a query
            System.out.println("Creating statement...");
            stmt = conn.createStatement();

            sql = "SELECT * FROM hosts WHERE host_name = \"" + sUserName + "\" AND host_password = \"" + sUserPassword + "\"";

            System.out.println(sql);

            //extracting data from result set
            ResultSet rs = stmt.executeQuery(sql);

            if(rs.next()){
                isValidUser = true;
            }

            rs.close();
            stmt.close();
            conn.close();

            //error handling
        }catch(SQLException se){
            se.printStackTrace();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            try{
                //closing resources
                if(stmt!=null)
                    stmt.close();
            }catch(SQLException se2){
            }
            try {
                if(conn!=null)
                    conn.close();
            }catch(SQLException se){
                se.printStackTrace();
            }
        }
        System.out.println("Closing DB Connection - Goodbye!");
        return isValidUser;
    }
}
