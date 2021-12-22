<?php 

include 'conexionecom.php';

$response = array();
$producto = array();
$promocion = array();

$sentencia=$connection->prepare("SELECT a.id, 
										a.name, 
                                        a.quantity, 
                                        a.buy_price, 
                                        a.sale_price, 
                                        c.name as categorie_id, 
                                        b.file_name as media_id, 
                                        a.date, 
                                        a.activo, 
                                        a.descr_long 
									FROM products a, media b, categories c
									WHERE a.media_id=b.id
                                    and a.categorie_id=c.id
									and a.activo='Y'");
$sentencia->execute();
$resultado = $sentencia->get_result();

$i=0;
while ($fila = $resultado->fetch_assoc()) {
	$producto[$i]=$fila;	
	$i=$i+1;
}

$response['producto']=$producto;

$sentencia2=$connection->prepare("SELECT * FROM promocionales WHERE sysdate() between f_inicio and f_fin");
$sentencia2->execute();
$resultado2 = $sentencia2->get_result();
$i=0;
while ($fila2 = $resultado2->fetch_assoc()) {
	$promocion[$i]=$fila2;
	$i=$i+1;
}

	$response['promocional']=$promocion;

echo json_encode($response,JSON_UNESCAPED_UNICODE);

$sentencia->close();
$sentencia2->close();
$connection->close();

?>
