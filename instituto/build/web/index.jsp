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

    <title>Login</title>
    <style>
body {
    background-image: url("imagenes/colegio_1.jpg");
    opacity: 1;
}
.no-background {
    background-image: url("images/blank.jpg");
}
</style>
  </head>
  <body>
      <div class="container" >
          <div class="col-sm-10" style="width: 600px; margin-left: 250px; margin-top: 50px;">
              <div class="jumbotron" style="background-color:transparent !important;">
                  <div class="form-group" style="margin-top: -50px;">
                       
                      <h1 style="margin-left: 70px;">
                          Inicio Sesión
                      </h1>
                  </div>
                  
                  <hr>
                  <form class="form-horizontal" style="margin-left: 50px ">
                      <div class="form-group input-group">
                          <span class="input-group-addon">
                              <span class="glyphicon glyphicon-user">            
                              </span>
                          </span>
                          <input type="email" class="form-control" name="email"
                                 placeholder="E-mail" required>
                      </div> 
                      <div class="form-group input-group">
                          <span class="input-group-addon">
                              <span class="glyphicon glyphicon-lock"></span>
                              
                          </span>
                          <input type="password" class="form-control" name="password"
                                 placeholder="Contraseña" required>
                      </div>
                     
                      <div class="form-group">
                          <a href="inicio.jsp"><span class="btn btn-primary" style="width: 430px;" >
                                  Iniciar Sesión</button>
                      </div>
                    
                          
                      
                      
                  </form>
                  
                  
              </div>
              
          </div>
          
      </div>
      
  
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

  </body>
</html>