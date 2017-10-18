package master;

import java.sql.Connection;
import java.sql.DriverManager;

public class Koneksi {
    private Connection con = null;

    public Koneksi(){
        getConnection();
    }

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/cerdas_cermat_admin","root","");
            return con;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
