
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import java.util.List;
import org.diegogarcia.webapp.model.Producto;
import org.diegogarcia.webapp.util.JpaUtil;


public class Main {
    
   private static EntityManager em = JpaUtil.getEntityManager();
    
    public static void main(String []args){
        
        TypedQuery<Producto> query = em.createQuery("Select p From Producto p", Producto.class);
        List<Producto> productos = query.getResultList();
    
       productos.forEach(producto -> System.out.println(producto));
    
        for(Producto producto:productos){
            System.out.println(producto);
        }
    }
}
