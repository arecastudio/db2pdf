<?php
Class DbSample{
      var $host='localhost';
      var $username='rail';
      var $password='';
      var $dbname='upwork_db2pdf';
      var $conn;

      function getConnString(){
      	       $con=mysqli_connect($this->host,$this->username,$this->password,$this->dbname)or die('Connection failed: '.mysqli_connect_error());

	       if(mysqli_connect_errno()){
			printf('Connect failed:%s\n',mysqli_connect_error());
			exit();
	       }else{
			$this->conn=$con;
	       }
	       return $this->conn;
      }
}