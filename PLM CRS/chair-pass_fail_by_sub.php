<?php
error_reporting(0);
require 'db/connect.php';

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>PLM CRS</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/basic_template.css" rel="stylesheet" type="text/css"></script>

    <script src="js/chart.bundle.min.js"></script>
    <script src="js/jspdf.min.js"></script>
    <script src="js/chart-generator.js"></script>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    
  </head>
  <body>
  	<div class="jumbotron">	
  		<center>
			<h1><strong>STATISTICAL REPORTS</strong></h1>
  		</center>
  	</div>

    <div class="container">
      <center><h2>PASSED AND FAILED STUDENTS PER SUBJECT</h2></center>
    </div>
    <br>
  	<div class="container">
  		<ul class="nav nav-tabs nav-justified">
  			<li class="active"><a href="#FirstYear" data-toggle="tab">First Year</a></li>
  			<li><a href="#SecondYear" data-toggle="tab">Second Year</a></li>
  			<li><a href="#ThirdYear" data-toggle="tab">Third Year</a></li>
  			<li><a href="#FourthYear" data-toggle="tab">Fourth Year</a></li>
  		</ul>

  		<div class="tab-content">
  			<div class="tab-pane fade in active" id="FirstYear">	
          <canvas id="myChart"></canvas> 
          <button type="button" id="donwload" onclick="downloadPDF();">Export to PDF</button>
  			</div>

  			<div class="tab-pane fade" id="SecondYear">
  				<p>Second Year</p>
  			</div>

  			<div class="tab-pane fade" id="ThirdYear">
  				<p>Third Year</p>
  			</div>

  			<div class="tab-pane fade" id="FourthYear">
  				<p>Fourth Year</p>
  			</div>

  		</div>
  	</div>

    <script>
      
        var ctx = document.getElementById("myChart");
        var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ["Information Resource Management","System Analysis and Design","Fourth Generation Languages"],
            datasets: [
            {
                label: '# of Passed',
                data: [12, 19, 3],
                backgroundColor: ['lightgreen','lightgreen','lightgreen'],
                borderColor: ['green','green','green'],
                borderWidth: 1
            },

            {
              label: '# of Failed',
              data: [8, 1, 17],
              backgroundColor: ['pink','pink','pink'],
              borderColor: ['red','red','red'],
              borderWidth: 1
            }]
          },
          options: {
              scales: {
                  yAxes: [{
                      ticks: {
                          beginAtZero:true
                       }
                   }]
                 }
              }
        });
    
      
      //donwload pdf from original canvas
      function downloadPDF() {
        var canvas = document.querySelector('#myChart');

        //creates canvas variable
        var canvasImg = canvas.toDataURL("image/png", 1.0);

        //creates logo variable
        var logo = new Image();

        //gets the source path of the plm logo
        logo.src = 'img/plmlogo.jpg';

        //creates PDF from img
        var doc = new jsPDF('portrait');

        doc.setFontSize(13);
        doc.setFont("helvetica","italic");
        doc.text(75, 21, "(University of the City of Manila)");

        doc.setFontSize(11);
        doc.setFont("helvetica", "italic");
        doc.text(90, 25, "Intramuros, Manila");


        doc.setFontSize(15);
        doc.setFont("Helvetica","Bold");
        doc.text(70, 15, "Pamantasan ng Lungsod ng Maynila");

        //adds the logo to the pdf
        doc.addImage(logo, 'PNG', 40, 8, 25, 25);

        //adds the canvas to the pdf
        doc.addImage(canvasImg, 'JPEG', 15, 150, 180, 100);

        //saves/downloads the generated pdf
        doc.save('canvas.pdf');
      }  

    </script>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.1.0.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
