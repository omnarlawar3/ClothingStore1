package com.store;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    public static Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");

            con = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521/FREEPDB1",
                "system",
                "1234"
            );

            System.out.println("DB Connected Successfully ✅");

        } catch (Exception e) {
            System.out.println("DB Connection Failed ❌");
            e.printStackTrace();
        }

        return con;
    }
}