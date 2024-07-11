
package org.diegogarcia.webapp.service;

import java.util.List;
import org.diegogarcia.webapp.model.Producto;

public interface IProductosService {
    
    public List<Producto> listarProductos();

    public void agregarProducto();
    
    public void eliminarProducto(int productoId);
    
    public Producto buscarProductoporId(int productoId);
    
    public void editarProducto(Producto producto);
}
