<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login</title>
<!--bootstrap css-->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/main.css">
  <script src="./js/all.js"></script>
<script>
function goBack() {
  window.history.back();
}
</script>
</head>
<body>
    <section style='height:100vh; background-color: aliceblue;'>
        <div class="container-fluid  p-3 m-0" style='background-color: #303030;'>
      
          <div class="h2 text-white text-center">Admin Login</div>
        </div>
        <div class="container" style='background-color:white'>
<div class="row" style="height:85vh">
    <div class="col">
        <img src="img/doc4.png" alt="" class="img-size4">
    </div>
    <div class="col p-5">

        <div class="container pt-3 pb-3" style="width:60vh;  background-color: white;" >
            
            <form action="adminlogincheck.jsp" method="post">
                <h1 class="text-center">Login Form</h1>
                <div class="form-group">
                    <label for="email">
                        <div class="lead">Username</div>
                    </label>
                    <input type="text" class="form-control" placeholder="Enter Email id" name="email" required>
                </div>
                
                <div class="form-group">
                    <label for="psw">
                        <div class="lead">Password</div>
                    </label>
                    <input type="password" class="form-control" placeholder="Enter password" name="psw" required>
                </div>
                <div class="row text-center">
                    <div class="col">
                        
                        <button type="submit" class="btn btn-dark" style="width:25vh;">Submit</button>
                    </div>
                    <div class="col">
                        
                        <button type="button" class="btn btn-dark" onclick="goBack()" style="width:25vh;">Cancel</button><br>
                    </div>
                </div>
                <br>
            </form>
        </div>
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