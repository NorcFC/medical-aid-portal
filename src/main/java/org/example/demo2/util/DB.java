package org.example.demo2.util;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class DB {
    private static String url;
    private static String user;
    private static String pass;

    static {
        try (InputStream in = DB.class.getClassLoader().getResourceAsStream("db.properties")) {
            Properties p = new Properties();
            p.load(in);
            url  = p.getProperty("db.url");
            user = p.getProperty("db.user");
            pass = p.getProperty("db.pass");
            // Driver is autoloaded by mysql-connector-j
        } catch (Exception e) {
            throw new RuntimeException("Failed to load DB config", e);
        }
    }

    public static Connection get() throws Exception {
        return DriverManager.getConnection(url, user, pass);
    }
}
