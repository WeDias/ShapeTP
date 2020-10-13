package br.com.fatec;

import java.awt.FileDialog;
import java.awt.Frame;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserInterface {
    private static ToConvert conv = new ToConvert();
    private static DataBase dataBase;
    
    public static String optionS(String acao) throws ClassNotFoundException, SQLException, IOException{
        if(acao != null){
            String name = "";
            FileDialog fd = new FileDialog((Frame) null, "Selecionar Shapefile", FileDialog.LOAD);
            fd.setMultipleMode(true);
            fd.setFile("*.shp");
            fd.setVisible(true);
            if(fd.getFile() != null){
                for(File selected: fd.getFiles()){
                   name = selected.getName();
                   conv.shpToPost(selected.getAbsolutePath());
                }
                return name.replace(".shp", "").toLowerCase();
            }
            return "false";
        }
        return null;
    }
    
    public static void optionP(String acao) throws ClassNotFoundException, SQLException, IOException{
        if(acao != null){
            FileDialog fd = new FileDialog((Frame) null, "Salvar Shapefile", FileDialog.SAVE);
            fd.setVisible(true);
            if(fd.getFile() != null){
                for(File selected: fd.getFiles()){
                   conv.postToShp(selected.getAbsolutePath(), acao);
                }
            }
        }
    }
        
    public static ArrayList<String> tables() throws SQLException, ClassNotFoundException{
        dataBase = new DataBase();
        return dataBase.getTables();
    }
    
    public static ArrayList<ArrayList> columns(String tableName) throws ClassNotFoundException, SQLException {
        dataBase = new DataBase();
        return dataBase.getColumns(tableName);
    }
    
    public static void insert(String t, String tCol, String sCol, String s) throws ClassNotFoundException, SQLException{
        dataBase = new DataBase();
        dataBase.insertInto(t, tCol, sCol, s);
    }
    
}
