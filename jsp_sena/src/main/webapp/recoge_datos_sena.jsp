<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.PreparedStatement" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%

String nombre= request.getParameter("nombre");
String apellido= request.getParameter("apellido");
String correo_electronico= request.getParameter("correo");
String celular= request.getParameter("celular");
String eps= request.getParameter("eps");
String fecha_vinculacion= request.getParameter("fecha_vinculacion");
String fecha_nacimiento= request.getParameter("fecha_nacimiento");
String fondo_pensiones= request.getParameter("fondo_pensiones");
String cedula= request.getParameter("cedula");
String direccion= request.getParameter("direccion");
String contacto_emergencia= request.getParameter("contacto_emergencia");
String telefono_emergencia= request.getParameter("telefono_emergencia");
String usuario= request.getParameter("usuario");
String contra= request.getParameter("contra");



Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection miConexion= java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_sena","root","");
java.sql.Statement miStatement= miConexion.createStatement();

String instruccionSql="INSERT INTO empleados (nombre, Apellidos, correo_electronico, celular, EPS, anio_vinculacion, usuario, contrasenia, fondo_de_pensiones, cedula, direccion_residencia, fecha_de_nacimiento, contacto_emergencia, telefono_emergencia)VALUES ('"+ nombre +"','"+ apellido +"','"+ correo_electronico +"','"+ celular +"','"+eps +"','"+fecha_vinculacion+"','"+ usuario +"','"+ contra +"','"+fondo_pensiones+"','"+cedula+"','"+direccion+"','"+fecha_nacimiento+"','"+contacto_emergencia+"','" + telefono_emergencia +"')";
 
miStatement.executeUpdate(instruccionSql);

out.println("Registrado con exito");

%>

</body>
</html>