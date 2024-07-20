<%-- 
    Document   : lista-productos
    Created on : 3/07/2024, 10:41:54
    Author     : informatica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="org.diegogarcia.webapp.model.Producto"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Listado</title>
</head>
<body>
    <nav class="position-relative navbar navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="/formulario-productos/formulario-productos.html">Listado de Productos</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
            <div class="offcanvas-header">
              <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Menú</h5>
              <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                <li class="nav-item">
                  <a class="nav-link" href="./index.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./formulario-productos/formulario-productos.jsp">Formulario</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="./producto-servlet">Lista</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </nav>

      <div class="container mt-5">
          <table class="table table-dark table-hover">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Nombre</th>
                <th scope="col">Descripción</th>
                <th scope="col">Marca</th>
                <th scope="col">Precio</th>
              </tr>
            </thead>
            <tbody class="table-group-divider">
                    <% List<Producto> productos = (List)request.getAttribute("productos"); %>
                    <% for(Producto producto:productos){%>
                        <tr>
                            <th scope="row"><%=producto.getProductoId()%>
                            <td><%=producto.getNombreProducto()%></td>
                            <td><%=producto.getMarcaProducto()%></td>
                            <td><%=producto.getDescripcionProducto()%></td>
                            <td><%=producto.getPrecio()%></td>
                        </tr>
                        <%}%>
            </tbody>
          </table>
      </div>

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
