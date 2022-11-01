package servlet;

import controlador.Consultas;
import controlador.Estudiantes;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author josueemilian
 */
public class RegistrarAlumno extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String nombre = request.getParameter("Nombre"); //cap del form
        String apellido = request.getParameter("Apellido");
        int carnet = Integer.parseInt(request.getParameter("Carnet"));
        Date fecha_Nacimiento = Date.valueOf(request.getParameter("Nacimiento"));
        String correo = request.getParameter("Correo");
        String celular = request.getParameter("Celular");
        
        ArrayList<String> campos = new ArrayList();
        Estudiantes e = new Estudiantes(carnet, nombre, apellido, fecha_Nacimiento, correo,celular);
        Consultas co = new Consultas();
        co.registrarEstudiante(e);
        request.getRequestDispatcher("registroEstudiantes.jsp").forward(request, response);

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

