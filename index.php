<html>
<head>
  <title>MySQL to PDF extractor</title>
  <style type="text/css">
    body{
	width:800px;
	margin:0px auto;
    }
    h1,h2,h3,h4{
	text-align:center;
    }
  </style>
</head>
<body>
  <h2>MySQL to PDF extractor</h2>
  <hr/>
<form action="generate.php" target="_blank" >
    <select id="opt1" name="opt1">
      <!--option value="1">Primary Contractor Data</option-->
      <?php require_once('general.php')?>
    </select>&nbsp;&nbsp;&nbsp;
    <input type="submit" value="Generate PDF"/>
  </form>
  <hr/>
  <p>
We have a series of PDF forms that currently are filled in manually by a person.
<br/><br/>
We are in the process of creating a MySQL database which will hold all the data used to print these same forms from our MySQL database. That database input project is being done by another contractor.
<br/><br/>
So you will not be creating anything to enter data, the data will already be there in MySQL.
<br/><br/>
We are not interested in a simple fillable PDF for a person to open and fill in, we are capturing the data another way.
<br/><br/>
What we want is to have a person request that a given form be printed for a particular customer and have the entire final report generated from the data in our MySQL database for that customer and test.
<br/><br/>
PDF output is preferable, but alternatively we will consider excel format output.
    </p>
</body>
</html>
