-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: qsy_web_inventory
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Abarrotes'),(6,'Aceites'),(2,'Cremas'),(3,'Lácteos'),(4,'Panadería'),(7,'Pastas'),(5,'Quesos'),(8,'Semillas');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'0000000001.jpg','image/jpg'),(2,'0000000002.jpg','image/jpg'),(3,'0000000003.jpg','image/jpg'),(4,'0000000004.jpg','image/jpg'),(5,'0000000005.jpg','image/jpg'),(6,'0000000006.jpg','image/jpg'),(7,'0000000007.jpg','image/jpg'),(8,'0000000008.jpg','image/jpg'),(9,'0000000009.jpg','image/jpg'),(10,'0000000010.jpg','image/jpg'),(11,'0000000011.jpg','image/jpg'),(12,'0000000012.jpg','image/jpg'),(13,'0000000013.jpg','image/jpg'),(14,'0000000014.jpg','image/jpg'),(15,'0000000015.jpg','image/jpg'),(16,'0000000016.jpg','image/jpg'),(17,'0000000017.jpg','image/jpg'),(18,'0000000018.jpg','image/jpg'),(19,'0000000019.jpg','image/jpg'),(20,'0000000020.jpg','image/jpg'),(21,'0000000021.jpg','image/jpg'),(22,'0000000022.jpg','image/jpg');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `buy_price` decimal(25,2) DEFAULT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `categorie_id` int unsigned NOT NULL,
  `media_id` int DEFAULT '0',
  `date` datetime NOT NULL,
  `activo` varchar(1) DEFAULT NULL,
  `descr_long` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `categorie_id` (`categorie_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `FK_products` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Aceite Capullo 845 ml','4978',25.50,35.50,6,1,'2021-03-16 14:47:54','Y','<p>El Aceite Capullo puro de Canola es ideal para preparar tus alimentos gracias a su composición no afecta los sabores de tus alimentos y es libre de grasa trans</p><p><h>Características Importantes</h></p><ul><li>Sin grasas trans</li><li>100% puro de canola</li><li>Sin colesterol</li><!--li></li--></ul>'),(2,'Arroz SOS Integral 1 kg','1781',25.00,28.00,8,2,'2021-03-16 13:56:16','Y','<p>Arroz Grano Largo Integral, color blanco libre de olores</p><p><h>Características Importantes</h></p><ul><li>Aporta energía</li><li>Fuente de fribra</li><li>Mejora la digestión</li><li>Mejora el sistema inmune</li></ul>'),(3,'Café Soluble Nescafé Clásico 225g','344',50.00,53.00,1,3,'2021-03-16 13:57:43','Y','<p>NESCAFÉ Clásico es un café 100% soluble cuyos granos son cuidadosamente seleccionados para que todo su sabor y beneficios, como antioxidantes naturales, lleguen intactos a tu taza. Su gran sabor y aroma, que se conservan intactos gracias a nuestro sello de seguridad, te darán ese momento único que necesitas para empezar tu día. Sirve una cucharadita de 2g de NESCAFÉ Clásico en tu taza, agrega 150 ml de agua caliente y disfruta. Conserva el frasco en un lugar fresco y seco.</p><p><h>Características Importantes</h></p><ul><li>Café Soluble</li><li>Sabor Original</li><li>Fuente de Antioxidantes</li><!--li>Mejora el sistema inmune</li--></ul>'),(4,'MiniChoco Roles Marinela 224g','116',75.00,78.00,4,4,'2021-03-16 13:58:32','Y','<p>Sin importar donde estés, Chocoroles Marinela te acompaña, ahora con un pack de 4 piezas listas para compartir el dulce toque de piña que las caracteriza. Date ese gusto, hoy mereces un rollito de chocolate con relleno cremoso para alegrar tu día.</p><p><h>Características Importantes</h></p><ul><li>Exquisitos</li><li>Relleno cremoso</li><li>Cubierto de Chocolate</li><!--li>Mejora el sistema inmune</li--></ul>'),(5,'Crema Alpura Entera 200ml','185',25.00,28.00,2,5,'2021-03-16 13:58:32','Y','<p>Crema de Leche de Vaca, Acidificada y Pasteurizada.</p><p>Caracter&iacute;sticas Importantes</p><ul><li>Inigualable Sabor</li><li>Inigualable Consistencia</li><li>100% leche vaca</li><li>Crema con calidad superior</li></ul>'),(6,'Crema Alpura Entera 450ml','1998',50.00,53.00,2,6,'2021-03-16 13:58:32','Y','<p>Crema de Leche de Vaca, Acidificada y Pasteurizada.</p><p>Caracter&iacute;sticas Importantes</p><ul><li>Inigualable Sabor</li><li>Inigualable Consistencia</li><li>100% leche vaca</li><li>Crema con calidad superior</li></ul>'),(7,'Crema Alpura Entera 900ml','946',75.00,78.00,2,7,'2021-03-16 13:58:33','Y','<p>Crema de Leche de Vaca, Acidificada y Pasteurizada.</p><p>Caracter&iacute;sticas Importantes</p><ul><li>Inigualable Sabor</li><li>Inigualable Consistencia</li><li>100% leche vaca</li><li>Crema con calidad superior</li></ul>'),(8,'Crema Alpura Deslactosada 200ml','987',25.00,28.00,2,8,'2021-03-16 13:58:33','Y','<p>Crema de Leche de Vaca, Deslactosada.</p><p>Características Importantes</p><ul><li>Deslactosada</li><li>Fácil Digestión</li><li>Inigualable Sabor</li><li>100% leche vaca</li></ul>'),(9,'Crema Alpura Deslactosada 450ml','1024',50.00,53.00,2,9,'2021-03-16 13:58:33','Y','<p>Crema de Leche de Vaca, Deslactosada.</p><p>Características Importantes</p><ul><li>Deslactosada</li><li>Fácil Digestión</li><li>Inigualable Sabor</li><li>100% leche vaca</li></ul>'),(10,'Crema Alpura Deslactosada 900ml','1049',75.00,78.00,2,10,'2021-03-16 13:58:33','Y','<p>Crema de Leche de Vaca, Deslactosada.</p><p>Características Importantes</p><ul><li>Deslactosada</li><li>Fácil Digestión</li><li>Inigualable Sabor</li><li>100% leche vaca</li></ul>'),(11,'Frijoles Bayos La Costeña Refritos 580g','1075',25.00,28.00,1,11,'2021-03-16 13:58:33','Y','<p>Prepara las mejores comidas en menos tiempo con los frijoles bayos refritos de La Costeña los cuales están elaborados con frijoles, cebolla y especias 100% mexicanas.</p><p>Características Importantes</p><ul><li>Producto de calidad 100% Mexicano</li><li>Sin Conservadores</li><!--li>Inigualable Sabor</li><li>100% leche vaca</li--></ul>'),(12,'Pasta para Sopa La Moderna Fideo 0 220g','1098',50.00,53.00,7,12,'2021-03-16 13:58:33','Y','<p>Bolsa con 220g de pasta elaborada con sémola de trigo durum, enriquecida con vitaminas y hierro.</p><p>Características Importantes</p><ul><li>La Moderna, la pasta n° 1 en México</li><li>100% sémola de trigo durum</li><li>Enriquecida con vitaminas, hierro y ácido fólico</li><li>Rendidora, Práctica y Nutritiva</li></ul>'),(13,'Leche Alpura Clásica Pasteurizada 1L','1112',75.00,78.00,3,13,'2021-03-16 13:58:33','Y','<p>Leche Alpura Clásica Pasteurizada 1L, 100% leche de vaca.</p><p>Características Importantes</p><ul><li>Leche entera adicionada con vitamina A para mantener una piel saludable</li><li>Leche entera adicionada con vitamina A para fortalecimiento de la vista</li><li>Leche entera adicionada con Vitamina D que ayuda a la absorción del calcio</li><li>Leche entera adicionada con Vitamina D que estimula el sistema inmunológico</li></ul>'),(14,'Leche Lala Entera 1.5 L','1148',25.00,28.00,3,14,'2021-03-16 13:58:33','Y','<p>Leche Entera Lala, además de ser deliciosa, es una opción ideal para toda la familia, ya que la leche aporta nutrimentos esenciales como proteínas y calcio.</p><p>Características Importantes</p><ul><li>Adicionada con vitaminas A y D</li><li>Rica en nutrimentos como proteínas y calcio</li><li>Certificación Kosher</li><!--li>Leche entera adicionada con Vitamina D que estimula el sistema inmunológico</li--></ul>'),(15,'Mantecadas Bimbo Vainilla 4 piezas 125g','1171',50.00,53.00,4,15,'2021-03-16 13:58:33','Y','<p>El complemento perfecto de un desayuno para llevar a todos lados es tu pack de 4 piezas de Mantecadas Bimbo, ¡Iniciarás tu día con todo!</p><p>Características Importantes</p><ul><li>Esponjosas</li><li>Sabor Vainilla</li><li>Aportan Energía</li><!--li>Leche entera adicionada con Vitamina D que estimula el sistema inmunológico</li--></ul>'),(16,'Mantequilla Gloria Untable con sal 250g','1199',75.00,78.00,3,16,'2021-03-16 13:58:33','Y','<p>Mantequilla con sal</p><p>Características Importantes</p><ul><li>Sabor Lácteo</li><li>Agrega sabor a sus platillos</li><li>Ideal para uso en cocina</li><li>Untable saliendo del refrigerador</li></ul>'),(17,'Aceite puro de Cártamo Oléico 946ml','1222',25.00,28.00,6,17,'2021-03-16 13:58:33','Y','<p>Oléico está elaborado a base de semillas de cártamo 100% naturales. Es un aceite muy versátil, ya que tiene un sabor y olor neutro que ayuda a respetar el sabor de cada uno de los ingredientes en tus platillos.</p><p>Características Importantes</p><ul><li>Elaborado a base de semillas de Cártamo 100% Naturales.</li><li>¡Sin Transgénicos!</li><li>Saltea, hornea y adereza con Oléico.</li><li>Resiste hasta 240°C sin perder sus propiedades.</li></ul>'),(18,'Pinguinos Marinela 2 Piezas 80g','1250',50.00,53.00,4,18,'2021-03-16 13:58:33','Y','<p>Descubre como tus Pingüinos Marinela complementan tu día con su delicioso y esponjocito sabor a chocolate.</p><p>Características Importantes</p><ul><li>Sabor a Chocolate</li><li>Esponjositos</li><li>Relleno Cremoso</li><!--li>Resiste hasta 240°C sin perder sus propiedades.</li--></ul>'),(19,'Bebida en Polvo Tang Manzana 14g','1274',75.00,78.00,1,19,'2021-03-16 13:58:34','Y','<p>Deliciosa bebida en polvo sabor manzana, con pulpa de fruta y vitamina C, siempre ofreciendo la mejor calidad, el mejor sabor, y el mejor rendimiento a nuestros consumidores, agregándoles valor y calidad durante cada día, acompañándolos durante todas las etapas de la vida y siendo parte de cada familia mexicana.</p><p>Características Importantes</p><ul><li>Sin calorías</li><li>Con vitamina C</li><li>No necesita azúcar</li><li>Con jugo y pulpa de fruta</li></ul>'),(20,'Queso Manchego Lala 250g Rallado','1294',25.00,28.00,5,20,'2021-03-16 13:58:34','Y','<p>Lala trae su presentación de manchego rallado que vuelve practico y fácil preparar tus platillos.</p><p>Características Importantes</p><ul><li>Hecho de leche 100% de vaca</li><li>Una excelente opción para acompañar tus platillos</li><li>Sabor único que solamente la Leche Lala le puede dar</li><!--li>Con jugo y pulpa de fruta</li--></ul>'),(21,'Queso Manchego Lala 400g','1325',50.00,53.00,5,21,'2021-03-16 13:58:34','Y','<p>El Queso Manchego Lala tiene una firme consistencia, sabor cremoso a leche y color marfil que te invita a comerlo gratinado sobre cualquier platillo.</p><p>Características Importantes</p><ul><li>Hecho de leche 100% de vaca</li><li>Una excelente opción para acompañar tus platillos</li><li>Sabor único que solamente la Leche Lala le puede dar</li><!--li>Con jugo y pulpa de fruta</li--></ul>'),(22,'Lenteja Verde Valle Semillas 500g','1345',75.00,78.00,8,22,'2021-03-16 13:58:34','Y','<p>Con la Lenteja Verde Valle podrá salir de apuros, es el platillo más balanceado por su fibra y proteína que contiene.</p><p>Características Importantes</p><ul><li>Seleccionado de las mejores cosechas</li><li>Fuente de fibra</li><li>Fuente de proteínas</li><!--li>Con jugo y pulpa de fruta</li--></ul>');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocionales`
--

DROP TABLE IF EXISTS `promocionales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promocionales` (
  `id_producto` int NOT NULL,
  `f_inicio` date NOT NULL,
  `f_fin` date NOT NULL,
  `tipo_promocional` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_producto`,`f_inicio`,`f_fin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocionales`
--

LOCK TABLES `promocionales` WRITE;
/*!40000 ALTER TABLE `promocionales` DISABLE KEYS */;
INSERT INTO `promocionales` VALUES (1,'2021-03-01','2021-04-30','N'),(2,'2021-03-01','2021-04-30','D'),(4,'2021-03-01','2021-04-30','N'),(5,'2021-03-01','2021-04-30','D'),(7,'2021-03-01','2021-04-30','N'),(8,'2021-03-01','2021-04-30','D'),(9,'2021-03-01','2021-04-30','N'),(13,'2021-03-01','2021-04-30','D'),(15,'2021-03-01','2021-04-30','D'),(16,'2021-03-01','2021-04-30','N'),(17,'2021-03-01','2021-04-30','N'),(20,'2021-03-01','2021-04-30','D');
/*!40000 ALTER TABLE `promocionales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `SK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (2,8,5,140.00,'2021-03-17'),(3,4,3,234.00,'2021-03-17'),(4,7,2,156.00,'2021-03-17'),(5,7,2,156.00,'2021-03-17'),(6,4,3,234.00,'2021-03-17'),(7,4,3,234.00,'2021-03-17'),(8,7,2,156.00,'2021-03-17'),(9,4,3,234.00,'2021-03-17'),(10,7,2,156.00,'2021-03-17'),(11,7,2,156.00,'2021-03-17'),(12,4,3,234.00,'2021-03-17'),(14,7,1,78.00,'2021-03-17'),(15,1,1,35.50,'2021-03-17'),(16,1,1,35.50,'2021-03-17'),(17,7,4,312.00,'2021-03-18'),(18,4,3,234.00,'2021-03-18'),(21,13,2,156.00,'2021-03-18'),(23,1,1,35.50,'2021-03-18'),(29,2,4,112.00,'2021-03-18'),(31,8,1,28.00,'2021-03-18'),(34,5,2,56.00,'2021-03-18'),(39,7,1,78.00,'2021-03-18'),(40,13,1,78.00,'2021-03-18'),(41,5,1,28.00,'2021-03-18'),(42,1,4,142.00,'2021-03-18'),(43,17,1,28.00,'2021-03-18'),(44,8,1,28.00,'2021-03-18'),(45,6,1,53.00,'2021-03-18'),(46,2,1,28.00,'2021-03-18'),(47,4,1,78.00,'2021-03-18'),(48,7,5,390.00,'2021-03-18'),(49,6,1,53.00,'2021-03-18'),(50,1,1,35.50,'2021-03-18'),(51,4,1,78.00,'2021-03-18'),(52,5,1,28.00,'2021-03-18'),(53,3,2,106.00,'2021-03-18'),(54,7,2,156.00,'2021-03-18'),(55,4,1,78.00,'2021-03-18'),(56,5,1,28.00,'2021-03-18'),(57,4,1,78.00,'2021-03-18'),(58,1,1,35.50,'2021-03-18'),(59,15,1,53.00,'2021-03-18'),(60,5,2,56.00,'2021-03-18'),(61,13,2,156.00,'2021-03-18'),(62,1,2,71.00,'2021-03-18'),(63,3,4,212.00,'2021-03-18'),(64,4,1,78.00,'2021-03-18'),(65,22,5,390.00,'2021-03-18'),(66,1,1,35.50,'2021-03-18'),(67,4,1,78.00,'2021-03-18'),(68,14,1,28.00,'2021-03-18'),(69,10,1,78.00,'2021-03-18'),(70,5,2,56.00,'2021-03-18'),(71,2,1,28.00,'2021-03-18'),(72,4,2,156.00,'2021-03-18'),(73,7,1,78.00,'2021-04-13'),(74,7,1,78.00,'2021-04-14'),(75,4,1,78.00,'2021-04-14'),(76,7,1,78.00,'2021-04-14'),(77,4,1,78.00,'2021-04-14'),(78,4,1,78.00,'2021-04-14'),(79,5,1,28.00,'2021-04-14'),(80,7,1,78.00,'2021-04-14'),(81,4,1,78.00,'2021-04-14'),(82,2,1,28.00,'2021-04-14'),(83,5,1,28.00,'2021-04-14'),(84,5,1,28.00,'2021-04-14'),(85,2,1,28.00,'2021-04-14'),(86,14,1,28.00,'2021-04-14'),(87,13,1,78.00,'2021-04-14'),(88,4,1,78.00,'2021-04-14'),(89,4,1,78.00,'2021-04-14'),(90,7,1,78.00,'2021-04-14'),(91,4,1,78.00,'2021-04-14'),(92,1,1,35.50,'2021-04-14'),(93,4,1,78.00,'2021-04-14'),(94,4,1,78.00,'2021-04-14'),(95,1,1,35.50,'2021-04-14'),(96,5,1,28.00,'2021-04-15'),(97,4,1,78.00,'2021-04-15'),(98,4,1,78.00,'2021-04-15'),(99,7,1,78.00,'2021-04-15'),(100,7,1,78.00,'2021-04-15'),(101,4,1,78.00,'2021-04-15'),(102,2,1,28.00,'2021-04-16'),(103,5,1,28.00,'2021-04-16'),(104,1,1,35.50,'2021-04-16'),(105,4,1,78.00,'2021-04-16'),(106,19,1,78.00,'2021-04-19'),(107,8,3,84.00,'2021-04-20'),(108,4,2,156.00,'2021-04-20'),(109,16,1,78.00,'2021-04-20'),(110,4,2,156.00,'2021-04-20'),(111,13,2,156.00,'2021-04-20'),(112,9,1,53.00,'2021-04-20'),(113,12,2,106.00,'2021-04-20'),(114,2,3,84.00,'2021-04-20'),(115,17,1,28.00,'2021-04-20'),(116,20,2,56.00,'2021-04-20'),(117,15,2,106.00,'2021-04-20'),(118,1,1,35.50,'2021-04-20'),(119,13,3,234.00,'2021-04-20'),(120,7,2,156.00,'2021-04-20'),(121,1,2,71.00,'2021-04-21'),(122,8,2,56.00,'2021-04-21'),(123,17,1,28.00,'2021-04-21'),(124,20,4,112.00,'2021-04-21'),(125,2,1,28.00,'2021-04-21'),(126,13,2,156.00,'2021-04-21'),(127,4,2,156.00,'2021-04-22'),(128,7,1,78.00,'2021-04-22'),(129,4,1,78.00,'2021-04-27'),(130,1,1,35.50,'2021-04-27'),(131,2,1,28.00,'2021-04-27'),(132,7,1,78.00,'2021-05-27'),(133,1,1,35.50,'2021-06-09'),(134,15,1,53.00,'2021-06-17'),(135,5,1,28.00,'2021-06-17'),(136,8,1,28.00,'2021-06-17'),(137,2,5,140.00,'2021-06-17'),(138,7,2,156.00,'2021-07-29'),(139,1,2,71.00,'2021-07-30'),(140,7,1,78.00,'2021-07-30');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(150) NOT NULL,
  `group_level` int NOT NULL,
  `group_status` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_level` (`group_level`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
INSERT INTO `user_groups` VALUES (1,'Admin',1,1),(2,'Special',2,0),(3,'User',3,1);
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int NOT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `user_level` (`user_level`),
  CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin Users','admin','d033e22ae348aeb5660fc2140aec35850c4da997',1,'pzg9wa7o1.jpg',1,'2021-10-19 00:29:07'),(2,'Special User','special','ba36b97a41e7faf742ab09bf88405ac04f99599a',2,'no_image.jpg',1,'2017-06-16 07:11:26'),(3,'Default User','user','12dea96fec20593566ab75692c9949596833adc9',3,'no_image.jpg',1,'2017-06-16 07:11:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-22 16:14:51
