<%-- 
    Document   : login
    Created on : Sep 22, 2019, 12:45:49 PM
    Author     : RYOLU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Login Data</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script> 
    <style>
      .menu {
        margin-left: -15px; 
        margin-right: 15px;
      }
      .daftar{
        border: 2px solid #e5e5e5; 
        border-radius: 10px; 
        padding: 20px;
      }
      .daftar a{
        margin-top: 2%;
      }
      .detail{
        padding: 10px 0px;
      }
      .nav{
        padding: 0px; 
        border: 1px solid #e5e5e5;
        border-radius: 5px;
      }
      .nav li{
        border-bottom: 1px solid #e5e5e5;
        border-radius: 5px;
      }
      #rcorners2 {
  border-radius: 25px;
  border: 2px solid #808080;
  padding: 20px;
  width: 500px;
  height: 300px;
}
#image {
    background-image: url("kylo.jpg");
}
b {
    color: red;
   text-shadow: 0 0 3px #FF0000, 0 0 5px #0000FF;
   font-size: 150px;
   font-family: chiller;
    
}
h4{
    color: red;
    text-shadow: 0 0 3px #FF0000, 0 0 5px #0000FF;
    font-size: 40px;
     font-family: chiller;
}
label {
    color: red;
    text-shadow: 0 0 3px #FF0000, 0 0 5px #0000FF;
}
#fontcolor {
    color: red;
    text-shadow: 0 0 3px #FF0000, 0 0 5px #0000FF;
}

    </style>
</head>

<body id="image">
    <div class="container" >
        <div  >
          <a href="./register.jsp" class="btn btn-md btn-success" style="float:right" />Register</a><br>
          <center><h2><b>Data Mahasiswa</b></h2>
          <h4>Modul RSBK - Kelompok22 OF THE DARK SIDE</h4></center>
        </div>
        <div class="row content "  >
          <div class="col-md-12" >
            <div class="col-md-4 col-md-offset-4 daftar" id="rcorners2">
              <p class="form-title" id="fontcolor">Sign In</p>
              <form method="POST" action="./LoginServlet">
                <div class="form-group">
                  <label>Username</label>
                  <input type="text" class="form-control" placeholder="Username" name="userName" type="text" autofocus />
                </div>
                <div class="form-group">
                  <label>Password</label>
                  <input type="password" class="form-control" placeholder="Password" name="password" value="" required />
                </div>
                  <input type="submit" name="login" value="Login" class="btn btn-md btn-success" />
              </form>
            </div>
          </div>
        </div>
    </div>
</body>
</html>
