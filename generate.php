<?php
error_reporting(E_ALL); ini_set('display_errors', 1); 

require_once('connection.php');
require_once('libs/fpdf181/fpdf.php');

$opt1=$_GET['opt1'];

Class PDF extends FPDF{
 function Header(){
  $this->SetFont('Arial','B',13);
  $this->Cell(80);
  $this->Cell(80,10,'Project Detail',1,0,'C');
  $this->Ln(20);
 }

 function Footer(){
  $this->SetY(15);
  $this->SetFont('Arial','I',8);
  $this->Cell(0,10,'Page '.$this->PageNo().'{/nb}',0,0,'C');
 }
}

$db=new DbSample();
$connString=$db->getConnString();

$display_heading = array('id'=>'ID', 'employee_name'=> 'Name', 'employee_age'=> 'Age','employee_salary'=> 'Salary',);

$result = mysqli_query($connString, "SELECT id, owner, location, county, fin_project_no, fap_project_no, contract_no, cctv_name, local_hub, station, cctv_voltage_reading, product_manufacturer_name, product_make, product_model, product_serial_number, product_firmware_version_number, product_ip_address, product_gateway, product_subnet_mask, technician_name, technician_signature, date, device_serial_number, test_start_time, test_finish_time, test_anomalies_and_comments, department_rep_name, departement_rep_signature FROM sample_test_main WHERE id=$opt1 ") or die("database error:". mysqli_error($connString));
$header = mysqli_query($connString, "SHOW columns FROM sample_test_main");

/*
$pdf = new PDF();
//header
$pdf->AddPage();
//foter page
$pdf->AliasNbPages();
$pdf->SetFont('Arial','B',12);
foreach($header as $heading) {
//$pdf->Cell(40,12,$display_heading[$heading['Field']],1);
}
foreach($result as $row) {
$pdf->Ln();
foreach($row as $column)
$pdf->Cell(40,12,$column,1);
}
$pdf->Output();
*/

$row=mysqli_fetch_row($result);

$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',13);

$pdf->Cell(60);
$pdf->Cell(80,10,'Project Detail',1,0,'C');
$pdf->Ln(10);

$pdf->SetFont('Arial','',12);

/*
$pdf->Cell(40,10,'Owner :');
$pdf->Cell(40,10,$row[1]);
$pdf->Ln();
$pdf->Cell(40,10,'Location:');
$pdf->Cell(40,10,$row[2]);
$pdf->Ln();*/

$title = array('Zero','Owner', 'Location', 'County','FIN Project No','FAP Project No','Contract No','Tujuh','Delapan');

for($i=1;$i<7;$i++){
$pdf->Ln();
$pdf->Cell(40,10,$title[$i].' :');
$pdf->Cell(40,10,$row[$i]);
}

$pdf->AddPage();
$pdf->SetFont('Arial','B',16);
$pdf->Cell(40,10,'Closed Circuit Television (CCTV) Cameras');
$pdf->Ln();
$pdf->SetFont('Arial','',12);
$pdf->Cell(40,10,'Detail:');

for($i=7;$i<28;$i++){
 $pdf->Ln();
 $pdf->Cell(20,10,'Field : ',1,0,'R');
 $pdf->Cell(80,10,$row[$i],1
 );
}

$pdf->Output();