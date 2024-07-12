
package org.lisandrojimenez.webapp.service;

import java.util.List;
import org.lisandrojimenez.webapp.model.Producto;

public interface IProductoService {
    
    public List<Producto>listarProducto();
    
    public void agregarProducto(Producto producto);
    
    public void eliminarProducto(int productoId);
    
    public Producto buscarProducto(int productoId);
    
    public void editarProducto(Producto producto);
    
    
}
