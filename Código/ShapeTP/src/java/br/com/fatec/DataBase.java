package br.com.fatec;

import java.sql.*;
import java.util.ArrayList;

public class DataBase {
    private final String url;
    private final String user;
    private final String pass;
    private Connection conn;

    DataBase() throws ClassNotFoundException, SQLException{
        this.user = "postgres";
        this.pass = "postgres";
        this.url = "jdbc:postgresql://localhost:5432/postgis";
        Class.forName("org.postgresql.Driver");
    }

    public void connect() throws SQLException {
        if(this.conn == null) {
            this.conn = DriverManager.getConnection(
                this.url, this.user, this.pass);
        }
    }

    public void disconnect() throws SQLException {
        if(this.conn != null) {
            this.conn.close(); this.conn = null;
        }
    }

    public ArrayList<String> getTables() throws SQLException {
        connect();
        Statement stmt = conn.createStatement();
        ResultSet rst = stmt.executeQuery(
            "SELECT tablename " +
            "FROM pg_catalog.pg_tables " +
            "WHERE schemaname = 'fatecsjc'");
        ArrayList<String> list = new ArrayList<>();
        while(rst.next()) {
            list.add(rst.getString("tablename"));
        }
        disconnect();
        return list;
    }
    
    public ArrayList<ArrayList> getColumns(String tableName) throws SQLException {
        connect();
        Statement stmt = conn.createStatement();
        ResultSet rst = stmt.executeQuery(
            String.format(
                "(SELECT column_name AS column, data_type AS type " +
                "FROM information_schema.columns " +
                "WHERE table_name = '%s' " +
                "AND table_schema = 'fatecsjc' " +
                "AND data_type <> 'USER-DEFINED' " +
                "AND column_name <> 'gid') " +
                "UNION ALL " +
                "(SELECT f_geometry_column, type " +
                "FROM geometry_columns " +
                "WHERE f_table_schema = 'fatecsjc' " +
                "AND f_table_name = '%s' " +
                "AND f_geometry_column = 'geom')", tableName, tableName));
        ArrayList<ArrayList> result = new ArrayList<>();
        ArrayList<String> column = new ArrayList<>();
        ArrayList<String> type = new ArrayList<>();
        while(rst.next()) {
            column.add(rst.getString("column"));
            type.add(rst.getString("type"));
        }
        result.add(column);
        result.add(type);
        disconnect();
        return result;
    }
}
