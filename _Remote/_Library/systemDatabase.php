<?php



  ////////////////
 //  Database  //
////////////////

function systemDatabase() {

	$dbMainHost = "localhost";
	$dbMainUser = "root";
	$dbMainPass = "";
	$dbMainDbse = "templecontemporary";

	$dbConnect = MYSQL_CONNECT($dbMainHost, $dbMainUser, $dbMainPass);
	MYSQL_SELECT_DB($dbMainDbse, $dbConnect);
}
systemDatabase();



?>
