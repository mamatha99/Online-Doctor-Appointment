<html>
<!--bootstrap css-->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/main.css">
<title>Appointment form</title>
<body>
  <section style='background-color: aliceblue;'>
    <div class="container-fluid  p-3 m-0" style='background-color: #303030;'>

      <div class="h2 text-white text-center">Appointment Form</div>
    </div>

    <div class="container border " style=' width:180vh; background-color: #ffffff;'>
      <div class="row">
        <div class="col p-3 pt-0">

          <form action="appointmentformcheck.jsp" class="m-4" style='width:60vh;'>

            <div class="form-group">
              <label for="patientname">
                <div class="lead">Patient name</div>
              </label>
              <input type="text" class="form-control" name='patientname' required>
            </div>


            <div class="form-group">
              <label for="patientemail">
                <div class="lead">Patient Email</div>
              </label>
              <input type="email" class="form-control" name='patientemail' required>
            </div>

            <div class="form-group">
              <label for="doctorname">
                <div class="lead">Doctor name</div>
              </label>
              <input type="text" class="form-control" name='doctorname' required>
            </div>


            <div class="form-group">
              <label for="doctoremail">
                <div class="lead">Doctor Email</div>
              </label>
              <input type="email" class="form-control" name='doctoremail' required>
            </div>


            <div class="form-group">
              <label for="location">
                <div class="lead">Location</div>
              </label>
              <input type="text" class="form-control" name='location' required>
            </div>

            <div class="form-group">
              <label for="specialist">
                <div class="lead">Specialist In</div>
              </label>
              <input type="text" class="form-control" name='specialist' required>
            </div>


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
            <label for="datetime">Date and Time:</label>
            <input type="datetime-local" id="datetime" name="datetime">
            <br>
            <br>
            <button type="submit" class="btn btn-dark" style="width:60vh; height:7vh;">Make my Appointment</button>
          </form>


        </div>
        <div class="col mt-5 mr-3">
          <img src="img/docs.png" class='img-size'alt="docs">
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