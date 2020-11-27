package br.com.fatec.controller;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import br.com.fatec.model.DataBase;
import java.util.ArrayList;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/ShapeToPost")
public class ShapeToPost extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/");
    }
    
    protected void doPost(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        final ArrayList<String> tLst = new ArrayList<String>();
        final ArrayList<String> sLst = new ArrayList<String>();
        for (final String key : request.getParameterMap().keySet()) {
            sLst.add(request.getParameter(key));
            tLst.add(key);
        }
        try {
        	final HttpSession session = request.getSession();
            final DataBase db = new DataBase();
            final String s = session.getAttribute("Arquivo").toString();
            final String t = session.getAttribute("Alvo").toString();
            @SuppressWarnings("unchecked")
			ArrayList<String> comp = db.getColumns(t).get(0);
            if(comp.size() == tLst.size()) {
                final String tCol = String.join(", ", tLst);
                final String sCol = String.join(", ", sLst);
            	db.insertInto(t, tCol, sCol, s);
            	response.sendRedirect("/op/sucesso.html");
            }
            else {
            	db.dropTable(s);
            	response.sendRedirect("/op/falha.html");
            }
        }
        catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("/op/falha.html");
        }
    }
}