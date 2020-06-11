package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public Cliente Buscar(String dni){
      Cliente c = new Cliente();
      String sql = "select * from cliente where Dni = "+ dni;
      try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {             
                c.setId(rs.getInt(1));
                c.setDni(rs.getString(2));
                c.setNom(rs.getString(3));
                c.setDir(rs.getString(4));
                c.setEstado(rs.getString(5));
            }
        } catch (Exception e) {
        }
       return c;
    }
    
    public List Listar() {
        String sql = "select * from cliente";
        List<Cliente> lista = new ArrayList();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Cliente cli = new Cliente();
                cli.setId(rs.getInt(1));
                cli.setDni(rs.getString(2));
                cli.setNom(rs.getString(3));
                cli.setDir(rs.getString(4));
                cli.setEstado(rs.getString(5));
                lista.add(cli);
            }
        } catch (Exception e) {
        }
        return lista;
    }

    public int agregar(Cliente cli) {
        String sql = "insert into cliente(Dni,Nombres,Direccion,Estado) values(?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, cli.getDni());
            ps.setString(2, cli.getNom());
            ps.setString(3, cli.getDir());
            ps.setString(4, cli.getEstado());
            ps.executeUpdate();           
        } catch (Exception e) {
        }
        return r;
    }
    
    public Cliente ListarId(int id){
         Cliente clie = new Cliente();
         String sql = "select * from cliente where IdCliente = " + id;
         try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                clie.setDni(rs.getString(2));
                clie.setNom(rs.getString(3));
                clie.setDir(rs.getString(4));
                clie.setEstado(rs.getString(5));
            }         
        } catch (Exception e) {
        }
        return clie;
    }
    
    public int actualizar(Cliente cli) {
    String sql = "update cliente set Dni = ?,Nombres = ?,Direccion = ?,Estado = ? where IdCliente = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, cli.getDni());
            ps.setString(2, cli.getNom());
            ps.setString(3, cli.getDir());
            ps.setString(4, cli.getEstado());
            ps.setInt(5, cli.getId());
            ps.executeUpdate();           
        } catch (Exception e) {
        }
        return r;
    }

    public void delete(int id) {
    String sql = "delete from cliente where IdCliente = " + id;
     try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();           
        } catch (Exception e) {
        }
    } 
}
