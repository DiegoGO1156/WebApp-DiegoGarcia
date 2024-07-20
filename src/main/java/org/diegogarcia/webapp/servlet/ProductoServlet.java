package org.diegogarcia.webapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.diegogarcia.webapp.model.Producto;
import org.diegogarcia.webapp.service.ProductoService;

@WebServlet ("/producto-servlet")
@MultipartConfig


public class ProductoServlet extends HttpServlet{
    
    private ProductoService ps;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String path = req.getContextPath();
       
       if(path != null || path.equals("/")){
           agregarProducto(req,resp);
       }else{
           resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
       }
       
    }
    
    public void agregarProducto(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
       String nombreProducto = req.getParameter("nombreProducto");
       String descProducto = req.getParameter("descripcionProducto");
       String marcaProducto = req.getParameter("marcaProducto");
       Double precioProducto = Double.parseDouble(req.getParameter("precioProducto"));
       ps.agregarProducto(new Producto(nombreProducto, descProducto, marcaProducto, precioProducto));
       
       resp.sendRedirect("/SDBG/index.jsp");
       
    }
    

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      List<Producto> productos = ps.listarProductos();
      req.setAttribute("productos", productos);
      req.getRequestDispatcher("/lista-productos/lista-productos.jsp").forward(req, resp);
    }
    
    @Override
    public void init() throws ServletException{
        super.init();
        this.ps = new ProductoService();
    }
    /*
    resp.setContentType("text/html");
       
        ArrayList <String> producto = new ArrayList<>();
        
       String nombreProducto = req.getParameter("nombreProducto");
       String descProducto = req.getParameter("descripcionProducto");
       String marcaProducto = req.getParameter("marcaProducto");
       String precioProducto = req.getParameter("precioProducto");
       
       producto.add(nombreProducto);
       producto.add(descProducto);
       producto.add(marcaProducto);
       producto.add(precioProducto);
       
       req.setAttribute("productos", producto);
       getServletContext().getRequestDispatcher("/formulario-productos/formulario-productos.jsp").forward(req, resp);
    */
    
}
