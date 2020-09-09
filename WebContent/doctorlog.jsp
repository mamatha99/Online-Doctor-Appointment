<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    
   <meta charset="ISO-8859-1">
<title>Doctor login</title>
<!--bootstrap css-->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/main.css">
  <script src="./js/all.js"></script></head>
<body>

<section style='height:100vh; background-color: aliceblue;'>
        <div class="container-fluid  p-3 m-0" style='background-color: #303030;'>
      <div class="h2 text-white text-center">Doctor login</div>
        </div>
        <div class="container" style='background-color:white'>
<div class="row" style="height:85vh">
    <div class="col">
        <img src="img/doc4.png" alt="" class="img-size4">
    </div>
    <div class="col p-5">

        <div class="container pt-3 pb-3" style="width:60vh;  background-color: white;" >

    
                <form action="LoginServlet" method="post" onSubmit="return ValidateEmail()">
                    <h2 class="form-title">Login</h2>

                    <div class="form-group">
                    <label for="email">
                        <h4>Username</h4></label>
                        <input type="email" class = "form-control" placeholder="Enter Email id" name="email" id="email" scope="session" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required autocomplete="off" title="Enter valid Email" />
                    </div>
                    <div class="form-group">
                        <label for="psw"> <h4>Password</h4>
                    </label>
                        <input type="password" class="form-control" placeholder="Enter Password" name="psw" required autocomplete="off"/>
                    </div>
                   <div class="row text-center">
                    <div class="col">
                        
                        <input type="submit" name="submit" style="width:25vh;" class="btn btn-dark" value="Login" />
                    </div>
                </form>
            </div>
        </div>

    </div>
    </section>

    <!--bootstrap jquery-->
    <script src="./js/jquery-3.5.1.min.js"></script>
    <!--bootstrap js-->
    <script src="./js/bootstrap.bundle.min.js"></script>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script language = "Javascript">

        function emailcheck(str) {
        
        var at="@"
        var dot="."
        var lat=str.indexOf(at)
        var lstr=str.length
        var ldot=str.indexOf(dot)
        if (str.indexOf(at)==-1){
        alert("Invalid E-mail ID")
        return false
        }
        
        if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
        alert("Invalid E-mail ID")
        return false
        }
        
        if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
        alert("Invalid E-mail ID")
        return false
        }
        
        if (str.indexOf(at,(lat+1))!=-1){
        alert("Invalid E-mail ID")
        return false
        }
        
        if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
        alert("Invalid E-mail ID")
        return false
        }
        
        if (str.indexOf(dot,(lat+2))==-1){
        alert("Invalid E-mail ID")
        return false
        }
        
        if (str.indexOf(" ")!=-1){
        alert("Invalid E-mail ID")
        return false
        }
        alert("valid E-mail ID")
        return true 
        }
        
        function ValidateEmail(){
        var emailID=document.frm.txtEmail
        
        if ((emailID.value==null)||(emailID.value=="")){
        alert("Please Enter your Email Address")
        emailID.focus()
        return false
        }
        if (emailcheck(emailID.value)==false){
        emailID.value=""
        emailID.focus()
        return false
        }
        return true
        }
        </script>
            
</body>
</html>