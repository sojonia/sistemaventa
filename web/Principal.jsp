<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Sistema de Venta</title>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a style="margin-left: 10px;border: none;" class="btn btn-outline-light" href="home.jsp" target="myframe"><i class="fa fa-fw fa-home"></i> Home</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px;border: none;" class="btn btn-outline-light" href="Controlador?menu=Producto&accion=Listar" target="myframe"><i class="fa fa-fw fa-briefcase"></i> Producto</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px;border: none;" class="btn btn-outline-light" href="Controlador?menu=Empleado&accion=Listar" target="myframe"><i class="fa fa-user-circle"></i> Empleado</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px;border: none;" class="btn btn-outline-light" href="Controlador?menu=Cliente&accion=Listar" target="myframe"><i class="fa fa-fw fa-users"></i> Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px;border: none;" class="btn btn-outline-light" href="Controlador?menu=NuevaVenta&accion=default" target="myframe"><i class="fa fa-fw fa-cart-plus"></i> Nueva Venta</a>
                    </li>
                </ul>
            </div>
            
            <div class="dropdown">             
                <button style="border:none;" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   <i class="fa fa-fw fa-user"></i>
                    ${usuario.getNom()}
                </button>
                <div class="dropdown-menu text-center dropdown-menu-right">
                    <a class="dropdown-item">
                        <img src="img/user.png" alt="40" width="40"/>
                    </a>
                    <a class="dropdown-item">${usuario.getUser()}</a>
                    <a class="dropdown-item">usuario@gmail.com</a>
                    <div class="dropdown-divider"></div>
                    <form action="Validar" method="POST">
                        <button name="accion"  value="Salir" class="dropdown-item" href="#">Salir</button> 
                    </form>     
                </div>
           </div>                  
        </nav>
        <div class="embed-responsives m-4" style=" height: 530px;">        
            <iframe class="embed-responsive-item" name="myframe" style="height: 100%;width: 100%; border: none"></iframe>           
        </div>
       
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>    </body>
</html>
