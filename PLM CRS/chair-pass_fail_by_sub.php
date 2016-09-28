<?php
error_reporting(0);
require 'db/connect.php';


$arr_firstyear = array(
                        array(array(1,2),array(3,4),array(5,6)),
                        array(array(7,8),array(9,10),array(11,12)),
                        array(array(13,14),array(15,16),array(17,18)),
                        array(array(19,20),array(21,22),array(23,24))
                      );

$arr_secondyear = array(
                        array(array(11,21),array(31,14),array(51,16)),
                        array(array(71,18),array(19,10),array(11,12)),
                        array(array(23,14),array(13,13),array(47,14)),
                        array(array(13,23),array(23,22),array(23,25))
                      );

$arr_thirdyear = array(
                        array(array(11,21),array(3,4),array(5,6)),
                        array(array(72,8),array(9,10),array(11,12)),
                        array(array(23,13),array(13,16),array(37,18)),
                        array(array(12,20),array(21,23),array(33,24))
                      );

$arr_fourthyear = array(
                        array(array(13,2),array(32,24),array(25,6)),
                        array(array(2,22),array(29,10),array(21,12)),
                        array(array(13,14),array(15,16),array(27,18)),
                        array(array(29,20),array(21,22),array(23,22))
                      );

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

    <!-- This is where all the CSS code are -->
    <link href="css/basic_template.css" rel="stylesheet" type="text/css"></script>

    <script src="js/chart.bundle.min.js"></script>
    <script src="js/jspdf.min.js"></script>
    <script src="js/chart-generator.js"></script>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    
  </head>
  <body onload="generateChart();">
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

            <div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="false" >
              <!-- Indicators -->
              <ol class="carousel-indicators" >
                <li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel1" data-slide-to="1"></li>
                <li data-target="#myCarousel1" data-slide-to="2"></li>
                <li data-target="#myCarousel1" data-slide-to="3"></li>
              </ol>

              <!-- Wrapper for slides -->
              <div class="carousel-inner" role="listbox">
                <div class="item active" > 
                    <canvas id="myChart1" class="chart"></canvas>
                    <br>
                    <div class="carousel-caption">
                      <center><button type="button" id="donwload" onclick="downloadPDF(0);">Export to PDF</button></center>
                      <br>
                    </div>
                </div>  

                <div class="item">
                  <canvas id="myChart2" class="chart"></canvas>
                    <br>
                    <div class="carousel-caption">
                      <center><button type="button" id="donwload" onclick="downloadPDF(1);">Export to PDF</button></center>
                      <br>
                    </div>
                </div>
                
              
                <div class="item">
                  <canvas id="myChart3" class="chart"></canvas>
                    <br>
                    <div class="carousel-caption">
                      <center><button type="button" id="donwload" onclick="downloadPDF(2);">Export to PDF</button></center>
                      <br>
                    </div>
                </div>

                <div class="item">
                  <canvas id="myChart4" class="chart"></canvas>
                    <br>
                    <div class="carousel-caption">
                      <center><button type="button" id="donwload" onclick="downloadPDF(3);">Export to PDF</button></center>
                      <br>
                    </div>
                </div>
              </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel1" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel1" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
        </div>
  		</div>

  		<div class="tab-pane fade" id="SecondYear">
  			<div id="myCarousel2" class="carousel slide" data-ride="carousel" data-interval="false" >
              <!-- Indicators -->
              <ol class="carousel-indicators" >
                <li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel2" data-slide-to="1"></li>
                <li data-target="#myCarousel2" data-slide-to="2"></li>
                <li data-target="#myCarousel2" data-slide-to="3"></li>
              </ol>

              <!-- Wrapper for slides -->
              <div class="carousel-inner" role="listbox">
                <div class="item active" > 
                    <canvas id="myChart5" class="chart"></canvas>
                    <br>
                    <div class="carousel-caption">
                      <center><button type="button" id="donwload" onclick="downloadPDF(4);">Export to PDF</button></center>
                      <br>
                    </div>
                </div>  

                <div class="item">
                  <canvas id="myChart6" class="chart"></canvas>
                    <br>
                    <div class="carousel-caption">
                      <center><button type="button" id="donwload" onclick="downloadPDF(5);">Export to PDF</button></center>
                      <br>
                    </div>
                </div>
                
              
                <div class="item">
                  <canvas id="myChart7" class="chart"></canvas>
                    <br>
                    <div class="carousel-caption">
                      <center><button type="button" id="donwload" onclick="downloadPDF(6);">Export to PDF</button></center>
                      <br>
                    </div>
                </div>

                <div class="item">
                  <canvas id="myChart8" class="chart"></canvas>
                    <br>
                    <div class="carousel-caption">
                      <center><button type="button" id="donwload" onclick="downloadPDF(7);">Export to PDF</button></center>
                      <br>
                    </div>
                </div>
              </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel2" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel2" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
        </div>
  		</div>

  		<div class="tab-pane fade" id="ThirdYear">
  			<div id="myCarousel3" class="carousel slide" data-ride="carousel" data-interval="false" >
              <!-- Indicators -->
              <ol class="carousel-indicators" >
                <li data-target="#myCarousel3" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel3" data-slide-to="1"></li>
                <li data-target="#myCarousel3" data-slide-to="2"></li>
                <li data-target="#myCarousel3" data-slide-to="3"></li>
              </ol>

              <!-- Wrapper for slides -->
              <div class="carousel-inner" role="listbox">
                <div class="item active" > 
                    <canvas id="myChart9" class="chart"></canvas>
                    <br>
                    <div class="carousel-caption">
                      <center><button type="button" id="donwload" onclick="downloadPDF(8);">Export to PDF</button></center>
                      <br>
                    </div>
                </div>  

                <div class="item">
                  <canvas id="myChart10" class="chart"></canvas>
                    <br>
                    <div class="carousel-caption">
                      <center><button type="button" id="donwload" onclick="downloadPDF(9);">Export to PDF</button></center>
                      <br>
                    </div>
                </div>
                
              
                <div class="item">
                  <canvas id="myChart11" class="chart"></canvas>
                    <br>
                    <div class="carousel-caption">
                      <center><button type="button" id="donwload" onclick="downloadPDF(10);">Export to PDF</button></center>
                      <br>
                    </div>
                </div>

                <div class="item">
                  <canvas id="myChart12" class="chart"></canvas>
                    <br>
                    <div class="carousel-caption">
                      <center><button type="button" id="donwload" onclick="downloadPDF(11);">Export to PDF</button></center>
                      <br>
                    </div>
                </div>
              </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel3" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel3" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
        </div>
  		</div>

  		<div class="tab-pane fade" id="FourthYear">
  			<div id="myCarousel4" class="carousel slide" data-ride="carousel" data-interval="false" >
              <!-- Indicators -->
              <ol class="carousel-indicators" >
                <li data-target="#myCarousel4" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel4" data-slide-to="1"></li>
                <li data-target="#myCarousel4" data-slide-to="2"></li>
                <li data-target="#myCarousel4" data-slide-to="3"></li>
              </ol>

              <!-- Wrapper for slides -->
              <div class="carousel-inner" role="listbox">
                <div class="item active" > 
                    <canvas id="myChart13" class="chart"></canvas>
                    <br>
                    <div class="carousel-caption">
                      <center><button type="button" id="donwload" onclick="downloadPDF(12);">Export to PDF</button></center>
                      <br>
                    </div>
                </div>  

                <div class="item">
                  <canvas id="myChart14" class="chart"></canvas>
                    <br>
                    <div class="carousel-caption">
                      <center><button type="button" id="donwload" onclick="downloadPDF(13);">Export to PDF</button></center>
                      <br>
                    </div>
                </div>
                
              
                <div class="item">
                  <canvas id="myChart15" class="chart"></canvas>
                    <br>
                    <div class="carousel-caption">
                      <center><button type="button" id="donwload" onclick="downloadPDF(14);">Export to PDF</button></center>
                      <br>
                    </div>
                </div>

                <div class="item">
                  <canvas id="myChart16" class="chart"></canvas>
                    <br>
                    <div class="carousel-caption">
                      <center><button type="button" id="donwload" onclick="downloadPDF(15);">Export to PDF</button></center>
                      <br>
                    </div>
                </div>
              </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel4" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel4" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
        </div>
  		</div>

  		</div>
  	</div>

    <script>

      //function that will generate all 12 charts for the department
      function generateChart()
      {
        var arr_id = [
                      "myChart1", "myChart2", "myChart3", "myChart4",
                      "myChart5", "myChart6", "myChart7", "myChart8",
                      "myChart9", "myChart10", "myChart11", "myChart12",
                      "myChart13", "myChart14", "myChart15", "myChart16"
                     ];

        var arr_data = [<?php echo json_encode($arr_firstyear); ?>,
                        <?php echo json_encode($arr_secondyear); ?>,
                        <?php echo json_encode($arr_thirdyear); ?>,
                        <?php echo json_encode($arr_fourthyear); ?> ];
        
        var ctr = 0;

        for(i=0;i<4;i++)
        {
          for(j=0;j<4;j++)
          {
              var ctx = document.getElementById(arr_id[ctr]);

              ctr++; 

              var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                  labels: ["Information Resource Management","System Analysis and Design","Fourth Generation Languages"],
                  datasets: [
                  {
                      label: '# of Passed',
                      data: [ arr_data[i][j][0][0], arr_data[i][j][1][0], arr_data[i][j][2][0] ],
                      backgroundColor: ['lightgreen','lightgreen','lightgreen'],
                      borderColor: ['green','green','green'],
                      borderWidth: 1
                  },

                  {
                    label: '# of Failed',
                    data: [arr_data[i][j][0][1], arr_data[i][j][1][1], arr_data[i][j][2][1]],
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
            }
        }
      }
          
             
      //donwload pdf from original canvas
      function downloadPDF(number) 
      {
        alert(number);

        var arr_id = [
                      "#myChart1", "#myChart2", "#myChart3", "#myChart4",
                      "#myChart5", "#myChart6", "#myChart7", "#myChart8",
                      "#myChart9", "#myChart10", "#myChart11", "#myChart12",
                      "#myChart13", "#myChart14", "#myChart15", "#myChart16"
                     ];

        var canvas = document.querySelector(arr_id[number]);

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
