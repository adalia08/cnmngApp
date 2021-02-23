<?php
$username="cnmng";//change username
$password="2o2oCNMNG"; //change password
$host="localhost";
$db_name="cnmng"; //change databasename

$connect=mysqli_connect($host,$username,$password,$db_name,);

if(!$connect)
{
	echo json_encode("Connection Failed");
}

?>