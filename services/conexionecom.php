<?php
//$connection = mysqli_connect('148.240.92.126', 'newuser2', '12345');
$connection = mysqli_connect('localhost:3306', 'qpago_admin', '12345678');
if (!$connection){
    die("Database Connection Failed" . mysqli_error($connection));
}

    /* change character set to utf8 */
    if (!$connection->set_charset("utf8")) {
        //printf("Error loading character set utf8: %s\n", $connection->error);
    } else {
        //printf("Current character set: %s\n", $connection->character_set_name());
    }

$select_db = mysqli_select_db($connection, 'qsy_web_inventory');
if (!$select_db){
    die("Database Selection Failed" . mysqli_error($connection));
}
date_default_timezone_set("America/Mexico_City");
?>