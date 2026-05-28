/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mypkg;

import java.sql.*;
import java.io.*;
import java.util.Properties;

/**
 *
 * @author zed
 */
public class DAO {

    Connection con = null;

    public Connection toConnect(String driver) throws ClassNotFoundException, SQLException, IOException {
        Properties props = new Properties();
        try {
            props.load(new FileInputStream("src/mypkg/db.properties"));
            String url = props.getProperty("db.url");
            String username = props.getProperty("db.username");
            String password = props.getProperty("db.password");
            Class.forName(driver);
            con = DriverManager.getConnection(url, username, password);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return con;
    }

    public void toClose() throws SQLException {
        if (con != null) {
            con.close();
        }
    }

    public ResultSet toFetch(PreparedStatement pstm) throws SQLException {
        return pstm.executeQuery();
    }
}
