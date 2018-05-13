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
    <style>
body {
    background-image: url("imagenes/colegio_1.jpg"); 
    
    opacity: 1;
}
.no-background {
    background-image: url("images/blank.jpg");
}
</style>
    <title>modificar</title>
  </head>
  <body>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/instituto","root", "");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");
      
      String actualizacion = "UPDATE alumno SET "
                           + "nombre='" + request.getParameter("nombre")
                           + "', edad=" + Integer.valueOf(request.getParameter("edad"))
                           + ", modalidad='" + request.getParameter("modalidad")                          
                           + "' WHERE alumno_id=" + Integer.valueOf(request.getParameter("alumno_id"));
     
      s.execute(actualizacion);
     
     
      
      conexion.close();
    %>
    <br>
        <div class="container" >
          <div class="col-sm-10" style="width: 700px; margin-left: 250px; margin-top: 50px;">
              <div class="jumbotron" style="background-color:transparent !important;">
                  <div class="form-group" style="margin-top: -50px; color: green;">
                       
                      <h1 style="margin-left: 50px;" >
                         Modificado Correctamente
                      </h1>
                  </div>
                  
                  <hr>
                  
                  <form class="form-horizontal" style="margin-left: 50px ">
                      <a href="inicio.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-ok" ></span> Pagina Principal </button>
                      
                      
                      <a href="alumno.jsp" class="btn btn-primary" style="margin-left: 100px;"><span class="glyphicon glyphicon-ok" ></span> Listado Alumnos</button></a>
                     
                        
                     
                          
                      
                      
                  </form>
                  
                  
              </div>
              
          </div>
          
      </div>
  
    
   
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>