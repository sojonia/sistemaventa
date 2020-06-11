<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">     
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Sistema de Venta</title>
        <style type="text/css">
            .login-form {
                margin-top: 130px;
                margin-bottom: 250px;
                display: flex;
                flex-direction: column;
                align-items: center;
                width: 40%;
                height: 100%;
            }
            .login-form form {        
                margin-bottom: 15px;
                background: #f7f7f7;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }
            .login-form h2 {
                margin: 0 0 15px;
            }
            .form-control, .login-btn {
                min-height: 38px;
                border-radius: 2px;
            }
            .input-group-addon .fa {
                font-size: 18px;
            }
            .login-btn {
                font-size: 15px;
                font-weight: bold;
            }
        </style>
    </head>
    <body> 
        <div class="contenedor">
            <div class="login-form fondo">
                <img  src="img/logo.jpg" alt="User">
                <form class="form-sign" action="Validar" method="POST">
                    <h2 class="text-center">Sistema de Ventas</h2>  
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" name="txtuser" placeholder="Usuario" required="required">				
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <input type="password" class="form-control" name="txtpass" placeholder="Password" required="required">				
                        </div>
                    </div>        
                    <div class="form-group">
                        <input type="submit" name="accion" value="Ingresar" class="btn btn-primary btn-block">
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
