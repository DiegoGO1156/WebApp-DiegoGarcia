
package org.diegogarcia.webapp.service;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import java.util.List;
import org.diegogarcia.webapp.model.Producto;
import org.diegogarcia.webapp.util.JpaUtil;

public class ProductoService implements IProductosService{

    private EntityManager em;
    
    public ProductoService(){
        this.em = JpaUtil.getEntityManager();
    }
    
    @Override
    public List<Producto> listarProductos() {
        return em.createQuery("SELECT p FROM Producto p", Producto.class).getResultList();
    }

    @Override
    public void agregarProducto(Producto producto) {
        
        EntityTransaction transaccion = em.getTransaction();
        
        try{
            transaccion.begin();
            em.persist(producto);
            transaccion.commit();
        }catch(Exception e){
            if(transaccion.isActive()){
                transaccion.rollback();
            }
        }
        
        em.persist(producto);
    }

    @Override
    public void eliminarProducto(int productoId) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Producto buscarProductoporId(int productoId) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void editarProducto(Producto producto) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    
    
}
