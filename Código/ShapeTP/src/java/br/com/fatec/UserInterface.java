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
    
    public static int optionS(String acao) throws ClassNotFoundException, SQLException, IOException{
        if(acao != null){
            FileDialog fd = new FileDialog((Frame) null, "Selecionar Shapefile", FileDialog.LOAD);
            fd.setMultipleMode(true);
            fd.setFile("*.shp");
            fd.setVisible(true);
            if(fd.getFile() != null){
                for(File selected: fd.getFiles()){
                   conv.shpToPost(selected.getAbsolutePath());
                }
                return 1;
            }
            return 0;
        }
        return -1;
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
}
