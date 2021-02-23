<?php
header("Content-Type: text/plain; charset=ISO-8859-1");
include "db.php";


$sql = "SELECT * FROM `wp_app` ORDER BY `wp_app`.`ID` DESC";


$query = mysqli_query($connect, $sql);

if(!$query){
	echo json_encode('error');
}

$array = array();


while($row = mysqli_fetch_array($query)){

	for($i = 0; $i <= 13; $i++){

		echo $row[$i];
		echo " split " ;

    }
}

?>
