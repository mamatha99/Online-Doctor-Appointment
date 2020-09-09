<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="ISO-8859-1">
  <title>Patient Signup</title>
  <!--bootstrap css-->
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/main.css">

</head>

<body>
  <div class="section" style='background-color: aliceblue;'>


    <div class="container-fluid  p-3 m-0" style='background-color: #303030;'>

      <div class="h2 text-white text-center">Patient Signup</div>
    </div>




    <div class="container mt-0" style='background-color: white;'>
      

      <h3 class='p-2 mt-2 pb-0 '>Please fill in this form to create an account</h3>
      <div class="row">
          <div class="col">

              <div class="container pt-3 pb-3" style="width:60vh;  background-color: white;">
                <form action="patientsignupcheck.jsp" method="post">
                  <div class="form-group">
                    <label for="name">
                      <h5>Username</h5>
                    </label>
                    <input type="text" class="form-control" placeholder="Enter Name" name="name" required>
                  </div>
    
                  <div class="form-group">
                    <label for="pemail">
                      <h5>Email</h5>
                    </label>
                    <input type="email" class="form-control" placeholder="Enter Email" name="pemail" required
                      aria-describedby="emailHelp">
                  </div>
    
    
                  <div class="form-group">
                    <label for="psw">
                        
                        <h5>Password</h5>
                    </label>
                    <input type="password" class="form-control" placeholder="Enter password" name="psw" required>
                </div>
    
                
                <div class="form-group">
                  <label for="pswrepeat">
                      
                      <h5>Confirm Password</h5>
                  </label>
                  <input type="password" class="form-control" placeholder="Enter Confirmed Password" name="pswrepeat" required>
              </div>
              
    
                  <br>
    
    
                  <button type="submit" class="btn btn-dark" style="width:60vh">Signup</button>
                </form>
                <h5 class='text-center p-2'>Already a user? <a href="patientlogin.jsp">Login</a></h5>
              </div>
          </div>
          <div class="col mr-5 pr-5 mt-5">
            <img src="img/hosp.png" class='img-size2' style="" alt="hospital">
          </div>
      </div>
        
    </div>
  </div>

  <!--bootstrap jquery-->
  <script src="./js/jquery-3.5.1.min.js"></script>
  <!--bootstrap js-->
  <script src="./js/bootstrap.bundle.min.js"></script>

</body>

</html>