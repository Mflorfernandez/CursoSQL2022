#Las tablas exportadas son categoria, cuentas, log_actualizacion_de_categoria,
log_creacion_de_usuario, subcategoria, tipodemoneda, transacciones y usuario#

-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: gastos_personales
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Alimentos'),(2,'Shopping'),(3,'Transporte'),(4,'Entretenimiento'),(5,'Servicios Digitales');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` VALUES (1,1,2,'Tarjeta de debito','ca en pesos de Lorena'),(2,1,1,'tarjeta de credito ars','tc visa de Martin'),(3,2,3,'Tarjeta de credito ars','tc visa de Gonzalo'),(4,3,3,'Tarjeta de credito eur','tc mastercard de Gonzalo');
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_actualizacion_de_categoria`
--

LOCK TABLES `log_actualizacion_de_categoria` WRITE;
/*!40000 ALTER TABLE `log_actualizacion_de_categoria` DISABLE KEYS */;
INSERT INTO `log_actualizacion_de_categoria` VALUES (1,'2022-07-20','19:38:16','root@localhost','El usuario root@localhost ingreso el dia 2022-07-20 a las 19:38:16 y actualizo la categoria Servicios Digitales por Serviciossss');
/*!40000 ALTER TABLE `log_actualizacion_de_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_creacion_de_usuario`
--

LOCK TABLES `log_creacion_de_usuario` WRITE;
/*!40000 ALTER TABLE `log_creacion_de_usuario` DISABLE KEYS */;
INSERT INTO `log_creacion_de_usuario` VALUES (1,'2022-07-20','19:20:07','root@localhost','El usuario root@localhost ingreso el dia 2022-07-20 a las 19:20:07 y genero un nuevo usuario llamado natimedina');
/*!40000 ALTER TABLE `log_creacion_de_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `subcategoria`
--

LOCK TABLES `subcategoria` WRITE;
/*!40000 ALTER TABLE `subcategoria` DISABLE KEYS */;
INSERT INTO `subcategoria` VALUES (1,1,'Restaurant'),(2,1,'Supermercado'),(3,2,'Ropa'),(4,2,'Calzado'),(5,3,'Sube'),(6,3,'Taxi'),(7,4,'Cine'),(8,4,'Viajes'),(9,5,'Netflix'),(10,5,'Flow');
/*!40000 ALTER TABLE `subcategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipodemoneda`
--

LOCK TABLES `tipodemoneda` WRITE;
/*!40000 ALTER TABLE `tipodemoneda` DISABLE KEYS */;
INSERT INTO `tipodemoneda` VALUES (1,'pesos argentinos','ars','moneda de curso legal en Argentina'),(2,'dolar estadounidense','usd','moneda de curso legal en Estados Unidos'),(3,'euro','eur','moneda de curso legar en Europa');
/*!40000 ALTER TABLE `tipodemoneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (1,'2022-03-25 18:54:23',2,2,3,1,'remera',5000),(2,'2022-04-04 08:32:10',1,1,2,2,'compra mensual Coto',18000),(3,'2022-04-23 12:45:29',3,1,1,2,'cena en palermo',3000),(4,'2022-05-12 16:26:17',2,5,9,1,'mensual netflix',15),(5,'2022-04-13 15:36:12',1,3,5,2,'carga sube',1000),(6,'2022-06-25 08:13:23',3,4,8,3,'pasaje en avion',25000),(7,'2022-07-01 23:45:17',2,2,3,1,'pantalon de vestir',9000),(8,'2022-02-23 12:32:17',1,1,1,1,'almuerzo en san telmo',3000),(9,'2022-03-21 14:56:18',3,5,10,3,'mensual Flow',6800),(10,'2022-02-12 13:14:27',2,1,2,1,'compra del mes',12000),(11,'2022-04-30 09:24:17',1,4,7,2,'entrada de cine',900),(12,'2022-05-22 08:23:12',2,2,3,1,'campera de cuero',20000),(13,'2022-07-04 23:21:14',1,3,5,2,'carga sube',500),(14,'2022-06-14 12:34:45',1,3,6,2,'taxi hasta casa',1000),(15,'2022-01-23 09:56:14',3,1,2,2,'compra para mi cumple',5000);
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Martin','Rodriguez','mrodriguez','wxy456YUer','martinrodriguez@gmail.com'),(2,'Lorena','Perez','loreperez','Mns490fghe','lorenaperez@gmai.com'),(3,'Gonzalo','Roberti','groberti','Sda213thij','gonzaloroberti@gmail.com');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-01 20:44:12
