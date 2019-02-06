import java.sql.*;

public class Db {
    static private Connection con;
    
    public static Connection getCon() throws Exception{
        if (con == null){
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=Projeto;user=sa;password=sqlserver");
        }
        return con;
    }
    
    public static void setData(String s) throws Exception{
        Db.getCon().createStatement().executeUpdate(s);
    }
    
    public static ResultSet getData(String s)throws Exception{
        return Db.getCon().createStatement().executeQuery(s);
    }
}