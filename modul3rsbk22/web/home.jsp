<%-- 
    Document   : home
    Created on : Sep 22, 2019, 12:45:58 PM
    Author     : RYOLU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<style>
	.menu {
		margin-left: -15px; 
		margin-right: 15px;
	}
	.daftar{
		border: 2px solid #e5e5e5; 
		border-radius: 5px; 
		padding: 5px;
	}
	.table th, .table td{
		text-align: center;
	}
	.nav{
		padding: 5px; 
		border: 2px solid #e5e5e5;
		border-radius: 5px;
	}
	.nav li{
		border-bottom: 2px solid #e5e5e5;
		border-radius: 5px;
	}
	.daftar h3{
                margin-top: 50px;
		margin-bottom: 25px;
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
h5{
    color: red;
    text-shadow: 0 0 3px #FF0000, 0 0 5px #0000FF;
    font-size: 40px;
     font-family: chiller;
}
#dark {
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
    <div >
	<center><h2><b>Data Mahasiswa</b></h2>
	<p id="dark">Modul RSBK - Kelompok22 </p>
        <h5>DARK SIDE IS HAPPY, <%=session.getAttribute("loginName")%></h6></center>
    </div>
    <div class="row content col-md-8 col-md-offset-2">
	<div class="col-md-3 menu">
	<ul class="nav nav-pills nav-stacked" style="">
            <li><a href="#">Home</a></li>
            <li><a href="./login.jsp">Logout</a></li>
	</ul>
	</div>
	<div class="col-md-9 daftar">
            <form action="./StudentServlet" method="POST">
                <table class="table table-bordered">
                <tr>
                <td id="fontcolor">Student ID</td>
                <td><input class="form-control" type="text" name="studentId" value="${student.studentId}" /></td>
                </tr>
                <tr>
                <td id="fontcolor">First Name</td>
                <td><input class="form-control" type="text" name="firstname" value="${student.firstName}" /></td>
                </tr>
                <tr>
                <td id="fontcolor">Last Name</td>
                <td><input class="form-control" type="text" name="lastname" value="${student.lastName}" /></td>
                </tr>
                <tr>
                <td id="fontcolor">Alamat</td>
                <td><input class="form-control" type="text" id="alamat" name="alamat" value="${student.alamat}" /></td>
                </tr>
                <tr>
                <td colspan="2">
                <input type="submit" class="btn btn-primary btn-sm" name="action" value="Add" />
                <input type="submit" class="btn btn-default btn-sm" name="action" value="Edit" />
                <input type="submit" class="btn btn-danger btn-sm" name="action" value="Delete" />
                <input type="submit" class="btn btn-warning btn-sm" name="action" value="Search" />
                </td>
                </tr>
                </table>
            </form>
            <h3 align="center" id="fontcolor">Those who have fallen</h3>
		<table class="table table-bordered table-hover">
                    <thead>
                    <tr>
                    <th id="fontcolor">No. ID</th>
                    <th id="fontcolor">First Name</th>
                    <th id="fontcolor">Last Name</th>
                    <th id="fontcolor">Alamat</th>
                    </tr>
                    </thead>
                    <tbody>
                    <s:forEach items="${allStudents}" var="stud">
                    <tr>
                        <td id="fontcolor">${stud.studentId}</td>
			<td id="fontcolor">${stud.firstName}</td>
                        <td id="fontcolor">${stud.lastName}</td>
                        <td id="fontcolor">${stud.alamat}</td>
                    </tr>
                    </s:forEach>
                    </tbody>
                </table>
            </div>
	</div>
    </div>
</body>
</html>
