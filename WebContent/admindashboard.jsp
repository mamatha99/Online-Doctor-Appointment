<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
  <!--bootstrap css-->
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/main.css">
</head>
<body>
    <nav class="navbar navbar-dark text-white bg-dark navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">DoctorApp</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="adminhome.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="adddoctor.jsp">Add Doctor</a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link " href="viewappointments.jsp">View appointments</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="viewdoctors.jsp">View Doctors</a>
              </li>
              <li class="nav-item">
                <a class="nav-link " href="logout.jsp">Logout</a>
              </li>
          </ul>
          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
        </div>
      </nav>
    <div class="jumbotron back text-white" style="height:90vh;">
        <h1 class="display-4">Welcome Admin</h1>
        <p class="lead">This is a Doctor Appointment and management system where<br> Patients can get appointments with top class doctors within minutes.</p>
        <hr class="my-4" >
        <p>Check and apply for appointments now!</p>
        <a class="btn btn-primary btn-lg" href="#" role="button">Sign up</a>
    
      </div>
    
    <!--bootstrap jquery-->
    <script src="./js/jquery-3.5.1.min.js"></script>
    <!--bootstrap js-->
    <script src="./js/bootstrap.bundle.min.js"></script>
</body>
</html>