package org.lisandrojimenez.webapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/producto-servlet")
@MultipartConfig
public class ProductoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> datosProductos = new ArrayList<>();

        String alerta;
        String nombreProducto = req.getParameter("nombreProducto");
        String marcaProducto = req.getParameter("marcaProducto");
        String descripcionProducto = req.getParameter("descripcionProducto");
        String precioProducto = req.getParameter("precioProducto");

        datosProductos.add(nombreProducto);
        datosProductos.add(marcaProducto);
        datosProductos.add(descripcionProducto);
        datosProductos.add(precioProducto);

        String msj = null;
        if (nombreProducto.isEmpty()) {
            msj = "Campos incompletos, favor de llenar el campo del nombre";
        } else if (marcaProducto.isEmpty()) {
            msj = "Campos incompletos, favor de llenar el campo de la marca";
        } else if (descripcionProducto.isEmpty()) {
            msj = "Campos incompletos, favor de llenar el campo de la descripción";
        } else if (precioProducto.isEmpty()) {
            msj = "Campos incompletos!, favor de llenar el campo del precio";
        }
        req.setAttribute("mensaje", msj);

        req.setAttribute("datosProductos", datosProductos);

        getServletContext().getRequestDispatcher("/formulario-productos/formulario-productos.jsp").forward(req, resp);
    }

}
