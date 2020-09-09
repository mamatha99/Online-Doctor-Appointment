<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="ISO-8859-1">
  <title>Doctor signup</title>
  <!--bootstrap css-->
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/main.css">

</head>

<body>
  <div class="section" style='background-color: aliceblue;'>


    <div class="container-fluid  p-3 m-0" style='background-color: #303030;'>

      <div class="h2 text-white text-center">Doctor Signup</div>
    </div>




    <div class="container mt-0" style='background-color: white;'>
      

      <h3 class='p-2 mt-2 pb-0 text-center'>Please fill in this form to create an account</h3>
      <div class="row">
          <div class="col">
              <img src="img/docs.png" class='img-size' alt="lildoc">
          </div>
          <div class="col">

              <div class="container pt-3 pb-3" style="width:60vh;  background-color: white;">
                <form action="adddoctorcheck.jsp" method="post">
                  <div class="form-group">
                    <label for="name">
                      <h5>Username</h5>
                    </label>
                    <input type="text" class="form-control" placeholder="Enter Name" name="name" required>
                  </div>
    
                  <div class="form-group">
                    <label for="email">
                      <h5>Email</h5>
                    </label>
                    <input type="email" class="form-control" placeholder="Enter Email" name="email" required
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
              
    
    
                  <label for="location">
                    <h5>Speciality</h5>
                  </label>
                  <select name="specialists" id="specialists" class='form-control'>
                    <option value="cardio">Cardiologist</option>
                    <option value="dental">Dental</option>
                    <option value="dermatologist">Dermatologist</option>
                    <option value="neurologist">Neurologist</option>
                  </select>
    
    
                  <br>
    
                  <div class="form-group">
                    <label for="location">
                      <h5>Location</h5>
                    </label>
                    <input type="text" class="form-control" placeholder="Enter location name" name="location" required>
                  </div>
    
    
                  <br>
                  <div class="form-group">
                    <label for="experience">
                      <h5>Experience</h5>
                    </label>
                    <input type="number" class="form-control" placeholder="Enter number of years" name="experience"
                      required>
                  </div>
    
    
                  <br>
    
                  <div class="form-group">
                    <h6>Please select your availability:</h6>
                    <div class="row">
                      <div class="col">
                        <input type="radio" id="active" name="availability" value="active">
                        <label for="active">Active</label><br>
    
                      </div>
                      <div class="col">
                        <input type="radio" id="inactive" name="availability" value="inactive">
                        <label for="inactive">Inactive</label><br>
    
                      </div>
                    </div>
    
                  </div>
    
                  <div class="form-group">
                    <label for="hospital">
                      <h5>Hospital Name</h5>
                    </label>
                    <input type="text" class="form-control" placeholder="Enter hospital name" name="hospital" required>
                  </div>
    
                  <div class="form-group">
                    <label for="phone">
                      <h5>Phone Number</h5>
                    </label>
                    <input type="text" class="form-control" placeholder="Enter Number" name="phone" required>
                  </div>
    
                  <br>
    
    
                  <button type="submit" class="btn btn-dark" style="width:60vh">Signup</button>
                </form>
                <h5 class='text-center'>Already a user? <a href="doctorlog.jsp">Login</a></h5>
              </div>
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