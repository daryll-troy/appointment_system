


var date = new Date();
var dday = date.getDay();
var ddate = date.getDate() + 1;
var month = date.getMonth() + 1;

if (ddate < 10) {
  ddate = "0" + ddate;
}
if (month < 10) {
  month = "0" + month;
}

var year = date.getUTCFullYear();
var minDate = year + "-" + month + "-" + ddate;
document.getElementById("date").setAttribute("min", minDate);

$('#time').timepicker({
  timeFormat: "h:mm p",
  interval: 60,
  minTime: "9",
  maxTime: "4:00pm",
  dynamic: true,
  dropdown: true,
  scrollbar: true,
});

$('#submitBtn').click(function () {


  var time1 = $("#time").val();
  var date1 = $("#date").val();
  var name1 = $("#fullName").val();
  var compOrg1 = $("#companyOrg").val();
  var contactNum1 = $("#contactNum").val();
  var visitorsNum1 = $("#visitorsNum").val();
  var purpose1 = $("#purpose").val();

  if (time1 == '' || date1 == '' || name1 == '' || compOrg1 == '' || contactNum1 == '' || purpose1 == '') {
    Swal.fire({
      icon: 'error',
      title: 'Oops... It seems like you missed a field.',
      text: ' Please complete all fields. Your input is necessary to proceed.',
    })
  }

  else if (/[^a-zA-Z\s]/.test(name1)) {
    Swal.fire({
      icon: 'error',
      title: 'Oops... It seems like you have some special numbers in your name.',
      text: ' Please provide your full name without special symbols or numbers.',
    })
  }

  else if (!(/^(09|\+639)\d{9}$/.test(contactNum1.trim()))) {
    Swal.fire({
      icon: 'error',
      title: 'Oops... It seems like you provided a wrong mobile number format.',
      text: ' Please provide your valid contact number.',
    })
  }

  else if (isNaN(visitorsNum1) || visitorsNum1 < 0 || visitorsNum1 > 10) {
    Swal.fire({
      icon: 'error',
      title: 'Oops... It seems like you have exceeded the maximum number of visitors allowed.',
      text: ' We are still working on improving our meeting capacity. As of now, our meeting capacity is limited to a maximum of 10 persons per meeting.',
    })
  }

  else {
    Swal.fire({
      title: 'Confirm Booking Details',
      text: "Please review your information below to ensure accuracy before proceeding:",
      html:
        '<b>Chosen date: </b>' + $('#date').val() + '<br>' +
        '<b>Chosen time: </b>' + $('#time').val() + '<br>' +
        '<b>Full name: </b>' + $('#fullName').val() + '<br>' +
        '<b>Company/Organization: </b>' + $('#companyOrg').val() + '<br>' +
        '<b>Number of Visitors: </b>' + $('#visitorsNum').val() + '<br>' +
        '<b>Contact number: </b>' + $('#contactNum').val() + '<br>' +
        '<b>Purpose of Visit: </b>' + $('#purpose').val() + '<br>',
      icon: 'info',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Confirm'
    }).then((result) => {
      if (result.isConfirmed) {

        const obj = {
          date: date1,
          time: time1,
          name: name1,
          compOrg: compOrg1,
          contactNum: contactNum1,
          visitorsNum: visitorsNum1,
          purpose: purpose1
        }

        $.ajax({
          url: 'store_data.php',
          method: 'post',

          data: {
            obj: obj
          }
        }).done((res) => {

          // res = JSON.parse(res)
          console.log(res)



          if (res.length > 2) {
            Swal.fire(
              'Thank you for choosing our service! We look forward to seeing you again soon!',
              'Our staff will contact you shortly to confirm your booking.',
              'success'
            )
          } else {
            Swal.fire(
              'Thank you for choosing our service! We look forward to seeing you soon!',
              'Our staff will contact you shortly to confirm your booking.',
              'success'
            )
          }

        })


      }
    })
  }
})

