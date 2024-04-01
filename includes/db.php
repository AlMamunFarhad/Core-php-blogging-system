<?php ob_start();

$db['db_host'] = "localhost";
$db['db_user'] = "farhadwe_farhad1";
$db['db_pass'] = "|farhad|mikky|764476";
$db['db_name'] = "farhadwe_php_cms_2";


foreach($db as $key => $value){
	
	define(strtoupper($key), $value);
	
}

$connection = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);

//if($connection){
//	
//	echo "We are conncted";
//	
//}


?>