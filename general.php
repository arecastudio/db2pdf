<?php
require_once('connection.php');

$db=new DbSample();
$con=$db->getConnString();

$sql="SELECT id, owner FROM sample_test_main WHERE 1";
$res=mysqli_query($con,$sql)or die('database error: '.mysqli_error($con));

if($res){
 while($row=mysqli_fetch_row($res)){
  echo"<option value=\"$row[0]\">Project of $row[1]</option>";
 }
}