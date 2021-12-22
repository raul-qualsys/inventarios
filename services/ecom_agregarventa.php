<?php
include 'conexionecom.php';
$idproducto=$_REQUEST['id_producto'];
$cantidad=$_REQUEST['cantidad'];
$price=$_REQUEST['precio'];

if ($idproducto!=""){
	$updatestring  = "INSERT INTO sales (product_id,qty,price,date) VALUES ('".$idproducto."','".$cantidad."','".$price."',sysdate())";

	if ($connection->query($updatestring) === TRUE) {
    	$updateprod = "UPDATE products SET quantity=quantity - ".$cantidad." WHERE id = '".$idproducto."'";
    
    	if ($connection->query($updateprod) === TRUE) {
			$update['resultado']="Record updated successfully";
        } else {
        	$update['resultado']="Error updating record: " . $connection->error;
        }
    
	} else {
    	$update['resultado']="Error updating record: " . $connection->error;
	}
}else{
	$update['resultado']="Datos no válidos";
}
echo json_encode($update,JSON_UNESCAPED_UNICODE);
$connection->close();
?>