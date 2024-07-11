
package org.lisandrojimenez.webapp.service;

import jakarta.persistence.EntityManager;
import java.util.List;
import org.lisandrojimenez.webapp.model.Producto;
import org.lisandrojimenez.webapp.util.JPAUtil;

public class ProductoService implements IProductoService{

    private EntityManager em;
    public ProductoService(){
        this.em = JPAUtil.getEntityManager();
    }
    
    @Override
    public List<Producto> listarProducto() {
        return em.createQuery("SELECT p FROM Producto p", Producto.class).getResultList();
    }

    @Override
    public void agregarProducto(Producto producto) {
        em.persist(producto);
    }

    @Override
    public void eliminarProducto(int productoId) {
    }

    @Override
    public Producto buscarProducto(int productoId) {
        Producto producto = null;
        return producto;
    }

    @Override
    public void editarProducto(Producto producto) {
    }
    
}
