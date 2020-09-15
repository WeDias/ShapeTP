package br.com.fatec;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.IOException;
import java.io.BufferedReader;
import java.io.InputStreamReader;


public class ToConvert {
	
    private void run(String command) throws IOException {
        String output;
        Process p = Runtime.getRuntime().exec("cmd cmd.exe /c " + command);
        BufferedReader stdInput = new BufferedReader(new InputStreamReader(p.getInputStream()));
        while((output = stdInput.readLine()) != null){
            System.out.println(output);
        }
        System.out.println("Process finished !\n");
    }

    public void shpToPost(String pathFile) throws IOException {
        System.out.printf("Op: Shapefile to PostgreSQL\nFile: %s\n", pathFile);
        Path path = Paths.get(pathFile);
        String fileName = path.getFileName().toString().replace(".shp", "");
        String temp = "shp2pgsql -d -D -s 0 %s fatecsjc.%s | psql -h localhost -d postgis -U postgres";
        String command = String.format(temp, pathFile, fileName);
        run(command);
    }

    public void postToShp(String pathFile, String tableName) throws IOException {
        System.out.printf("Op: PostgreSQL To Shapefile \nFile: %s\nTableName: %s\n", pathFile, tableName);
        String temp = "pgsql2shp -f %s -h localhost -u postgres postgis fatecsjc.%s";
        String command = String.format(temp, pathFile, tableName);
        run(command);
    }
	
}