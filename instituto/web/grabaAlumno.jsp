<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <title>Instituto Zambrana</title>
  </head>
  <body>
    <%      
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/instituto","root", "");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");
      
      // Comprueba la existencia del número de socio introducido
      String consulta = "SELECT * FROM alumno WHERE alumno_id="
                                + Integer.valueOf(request.getParameter("alumno_id"));      
      
      ResultSet numeroDeAlumnos = s.executeQuery (consulta);
      numeroDeAlumnos.last();
      
      if (numeroDeAlumnos.getRow() != 0) {
        out.println("Lo siento, no se ha podido dar de alta, ya existe un alumno con el número "
                    + request.getParameter("alumno_id") + ".");
      } else {
        String insercion = "INSERT INTO alumno VALUES (" + Integer.valueOf(request.getParameter("alumno_id"))
                           + ", '" + request.getParameter("nombre")
                           + "', " + request.getParameter("edad")
                           +  ", '" + request.getParameter("modalidad") + "')";
                           
        s.execute(insercion);
        out.println("Alumno dado de alta correctamente.");
      }
      conexion.close();
    %>
    <br>
    <a href="alumno.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span> Página principal</button>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>