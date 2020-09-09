<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="ISO-8859-1">
  <title>Add doctor</title>
  <!--bootstrap css-->
  <link rel="stylesheet" href="./css/bootstrap.min.css">


</head>

<body>
<section style='background-color: aliceblue;'>


  <div class="container-fluid  p-3 m-0" style='background-color: #303030;'>

    <div class="h2 text-white text-center">Add Doctor</div>
  </div>




  <div class="container mt-0" style='background-color: white;' >
<div class="row">
<div class="col">

  <div class="container pt-3 pb-3" style="width:60vh;  background-color: white;">
  
    <form action="adddoctorcheck.jsp" method="post">
      <div class="form-group">
        <label for="name">
          <div class="lead">Name</div>
        </label>
        <input type="text" class="form-control" placeholder="Enter Name" name="name" required>
      </div>
      
      <div class="form-group">
        <label for="email">
          <div class="lead">Email</div>
        </label>
        <input type="email" class="form-control"  placeholder="Enter Email" name="email"
          required aria-describedby="emailHelp">
      </div>
  
  
      <br>
  
     
      <label for="location">
        <div class="lead">speciality:</div>
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
          <div class="lead">Location</div>
        </label>
        <input type="text" class="form-control" placeholder="Enter location name" name="location" required
          id="exampleInputPassword1">
      </div>
  
  
      <br>
      <div class="form-group">
        <label for="experience">
          <div class="lead">Experience</div>
        </label>
        <input type="number" class="form-control" placeholder="Enter number of years" name="experience" required>
      </div>
  
  
      <br>
  
      <div class="form-group">
        <p>Please select your availability:</p>
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
      <br>
  
      <div class="form-group">
        <label for="hospital">
          <div class="lead">Hospital Name</div>
        </label>
        <input type="text" class="form-control" placeholder="Enter hospital name" name="hospital" required>
      </div>
  
      <br>
      
      <button type="submit" class="btn btn-dark">Submit</button>
    </form>
  </div>
</div>
<div class="col">
  <img src="img/doc3.png" alt="" class="img-size3s p-3">
</div>
</div>
  </div>
</section>

  <!--bootstrap jquery-->
  <script src="./js/jquery-3.5.1.min.js"></script>
  <!--bootstrap js-->
  <script src="./js/bootstrap.bundle.min.js"></script>

</body>

</html>