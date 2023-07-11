

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Bitshares Labs Inc. Booking </title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="jQuery\jquery.timepicker.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" rel="stylesheet" />

  <!--CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">



</head>

<body>

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero d-flex align-items-center">
    <div class="container-fluid">
      <div class="row">
        <!-- LEFT PANEL -->
        <div class="col-xl-3 order-xl-1 order-lg-1 order-md-2" id="left-panel">
          <div class="left-content" data-aos="fade-right" data-aos-offset="200" data-aos-easing="ease-in-sine">
            <h2 class="text-center">
              Fill in the form to finish setting an appointment.
            </h2>

            <div class="gradient-line d-flex align-items-center"></div>

            <p class="text-center">
              Please be advised that Bitshares Labs Inc. strictly enforces an
              appointment-only policy. Take note that we only accommodated during
              office hours on weekdays.
            </p>
          </div>
        </div>

        <!-- RIGHT PANEL -->
        <div class="col-xl-9 order-xl-1 order-lg-1 order-md-2" id="right-panel">
          <div class="top-of-gradients">
            <h2 class="text-xl-start text-lg-center text-md-center text-sm-center" data-aos="fade-left" data-aos-offset="200" data-aos-easing="ease-in-sine">Book an appointment with us!</h2>
          </div>

          <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]) ?>" method="post">
            <div class="right-form-panel align-content-center">
              <div class="right-form-container">
                <div class="row form-row">
                  <div class="required col-lg-6 col-md-6 col-sm-12 py-3 inputGroup">
                    <input type="date" id="date" required autocomplete="off">
                    <label class="form-labels" for="preferredDate1">Preferred Date</label>
                  </div>
                  <div class="col-lg-6 col-md-6 col-sm-12 py-3 inputGroup">
                    <input type="text" id="time" required autocomplete="off">
                    <label class="form-labels" for="preferredDate1">Preferred Time</label>
                  </div>
                </div>
                <div class="row form-row my-auto">
                  <div class="col-lg-6 col-md-6 col-sm-12 py-3 inputGroup">
                    <input class="text-uppercase" id="fullName" type="text" required autocomplete="on">
                    <label class="form-labels" for="fullName1">Full Name</label>
                  </div>
                  <div class="col-lg-6 col-md-6 col-sm-12 py-3 inputGroup">
                    <input class="text-uppercase" id="companyOrg" type="text" required autocomplete="on">
                    <label class="form-labels" for="companyOrg1">Company/Organization</label>
                  </div>
                </div>
                <div class="row form-row my-auto">
                  <div class="col-lg-6 col-md-6 col-sm-12 py-3 inputGroup">
                    <input class="text-uppercase" id="visitorsNum" type="text" required autocomplete="on">
                    <label class="form-labels" for="visitorsNum1">Number of Visitors</label>
                  </div>
                  <div class="col-lg-6 col-md-6 col-sm-12 py-3 inputGroup">
                    <input class="text-uppercase" id="contactNum" type="text" required autocomplete="on">
                    <label class="form-labels" for="contactNum1">Contact Number</label>
                  </div>
                </div>
                <div class="row form-row my-auto">
                  <div class="col col-lg-12 col-md-12 col-sm-12 py-3 inputGroup">
                    <input class="text-uppercase" id="purpose" name="purpose" type="text" required autocomplete="on">
                    <label class="form-labels" for="purpose1">Purpose of Visit</label>
                  </div>
                </div>
                <div class="row form-row px-5 py-5 justify-content-center">
                  <div class="col-lg-3 col-md-6 col-sm-12">
                    <button type="button" id="submitBtn" class="btn btn-lg submitBtn" data-bs-toggle="button" >Submit</button>
                  </div>
                </div>
              </div>
            </div>
          </form>

          <div class="main-panel">
            <div class="circles">
              <div class="circle-animate"></div>
              <div class="circle-animate"></div>
              <div class="circle-animate"></div>
              <div class="circle-animate"></div>
              <div class="circle-animate"></div>
              <div class="circle-animate"></div>
              <div class="circle-animate"></div>
              <div class="circle-animate"></div>
              <div class="circle-animate"></div>
              <div class="circle-animate"></div>
              <div class="circle-animate"></div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Vendor JS Files -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="jQuery\jQuery3.7.0.js"></script>
    <script src="jQuery\jquery.timepicker.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

    <!-- JS File -->
    <script src="assets/js/main.js"></script>

</body>

</html>

