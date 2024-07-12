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
import org.lisandrojimenez.webapp.model.Producto;
import org.lisandrojimenez.webapp.service.ProductoService;

@WebServlet("/producto-servlet")
@MultipartConfig
public class ProductoServlet extends HttpServlet {

    private ProductoService ps;
    
    @Override
    public void init() throws ServletException{
        super.init();
        this.ps = new ProductoService();
        
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       List<Producto>producto = ps.listarProducto();
       req.setAttribute("productos", producto);
       req.getRequestDispatcher("./lista-productos/lista-productos.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> datosProductos = new ArrayList<>();

        
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
