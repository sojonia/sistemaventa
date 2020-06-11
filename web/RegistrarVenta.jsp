<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/tabla.css" rel="stylesheet" type="text/css"/>
        <title>Sistema de Venta</title>
        <style>
            @media print{
                .parte01,img, .btn, .accion{
                    display: none;
                }
            }
        </style>
        <script type="text/javascript">
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>  
    </head>
    <body>
        <div class="d-flex">
            <div class="col-sm-5 parte01">
                <div class="card">
                    <form action="Controlador?menu=NuevaVenta" method="POST">
                        <div class="card-body">
                            <div class="form-group">
                                <label>Datos del Cliente</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="codigocliente" value="${c.getDni()}" class="form-control" placeholder="Codigo"> 
                                    <input type="submit" name="accion" value="BuscarCliente" class="btn btn-outline-info"> 
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="nombrescliente" value="${c.getNom()}" class="form-control" placeholder="Datos Cliente">  
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Datos Producto</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="codigoproducto" value="${producto.getId()}" class="form-control" placeholder="Codigo"> 
                                    <button type="submit" name="accion" value="BuscarProducto" class="btn btn-outline-info">Buscar </button>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="nomproducto" value="${producto.getNom()}" class="form-control" placeholder="Datos Producto">  
                                </div>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="precio" value="${producto.getPrecio()}" class="form-control" placeholder="s/.0.00"> 
                                </div>
                                <div class="col-sm-3">
                                    <input type="number" value="1" name="cant" class="form-control" placeholder="">  
                                </div>
                                <div class="col-sm-3">
                                    <input type="text" name="stock" value="${producto.getStock()}" class="form-control" placeholder="Stock">  
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm">
                                    <button type="submit" name="accion" value="Agregar" class="btn btn-outline-info">Agregar Producto</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-sm-7">
                <div class="card parte02">
                    <div class="card-body">
                        <div class="d-flex ml-auto col-sm-6">
                            <label class="text-right mt-2 col-sm-6">NRO. SERIE</label>
                            <input readonly="" type="text" name="numeroserie" class="form-control text-center" value="${nserie}" style="font-weight: bold;font-size: 18px">
                        </div>
                        <br/>
                        <table class="table table-hover">
                            <thead>
                                <tr class="table-danger text-center">
                                    <th>Nro</th>
                                    <th>Codigo</th>
                                    <th>Descripcion</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>SubTotal</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="list" items="${lista}">
                                    <tr>
                                        <td>${list.getItem()}</td>
                                        <td>${list.getId()}</td>
                                        <td>${list.getDescripcionp()}</td>
                                        <td>${list.getPrecio()}</td>
                                        <td>${list.getCantidad()}</td>
                                        <td>${list.getSubtotal()}</td>
                                        <td class="d-flex text-center">
                                            <a class="edit"  title="Modificar" data-toggle="tooltip" href="#"><i class="material-icons">&#xE8B8;</i></a>
                                            <a class="delete" title="Eliminar" data-toggle="tooltip" href="#" style="margin-left: 5px"><i class="material-icons">&#xE5C9;</i></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <div class="clearfix">
                    <ul class="pagination">
                        <li class="page-item"><a href="#">Anterior</a></li>
                        <li class="page-item active"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">Proximo</a></li>
                    </ul>
                </div>
                    </div>
                    <div class="card-footer" >
                        <div class="row">
                            <div class="col-sm-6">
                                <a href="Controlador?menu=NuevaVenta&accion=GenerarVenta" onclick="print()" class="btn btn-success">Generar Venta</a>
                                <input type="submit" name="accion" value="Cancelar" class="btn btn-danger">
                            </div>
                            <div class="col-sm-6 ml-auto d-flex">                                
                                <label class=" col-sm-6 text-right mt-2">Total a Pagar</label>                                                       
                                <input type="text" name="txtTotal" value="S/.${totalpagar}0" class="form-control text-center font-weight-bold" style="font-size: 18px;">
                            </div>
                        </div>                        
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
