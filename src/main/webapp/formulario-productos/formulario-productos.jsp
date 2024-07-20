<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.diegogarcia.webapp.model.Producto"%>
<%@page import="org.diegogarcia.webapp.model.Producto"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Formulario</title>
</head>
<body>
    <nav class="position-relative navbar navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="/formulario-productos/formulario-productos.html">Formulario de Productos</a>
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
                  <a class="nav-link" href="../index.jsp">Inicio</a>
                </li>
                <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="./formulario-productos.jsp">Formulario</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../producto-servlet">Lista</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </nav>

    
        <div class="container text-center">
        <%ArrayList <String> producto = (ArrayList)request.getAttribute("producto"); %>
        <% if(producto != null){
            for(String prod : producto){%>
        <ul>
            <li class="list-unstyled"><%=prod%></li>
        </ul>
       <%}
       }%>
        </div>

      <div class="container mt-5 w-75">
          <form action="/SDBG/producto-servlet" method="post" enctype="multipart/form-data">
                 <div class="form-floating mb-4">
                 <input  type="text" class="form-control" id="NombreProducto" name="nombreProducto" placeholder="" required>
                 <label for="NombreProducto">Nombre del Producto</label>
                 </div>
                 <div class="form-floating mb-4">
                 <input  type="text" class="form-control" id="DescripcionProducto" name="descripcionProducto" placeholder="">
                 <label for="descripcionProducto">Descripción del Producto</label>
                 </div>
                 <div class="form-floating mb-4">
                 <input type="text" class="form-control" id="MarcaProducto" name="marcaProducto" placeholder="">
                 <label for="MarcaProducto">Marca del Producto</label>
                 </div>
                 <div class="input-group mb-4">
                 <span class="input-group-text">Q</span>
                 <input class="form-control" id="precioProducto" name ="precioProducto" type="text">
                    <span class="input-group-text">.00</span>
                 </div>
                <div>
                    <input class="btn btn-outline-success" type="submit" Value="Agregar">
                </div>
            </form>
          </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
