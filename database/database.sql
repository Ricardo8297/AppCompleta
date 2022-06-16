CREATE DATABASE scv_db;

use scv_db;

CREATE TABLE games{
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(180),
    description VARCHAR(255),
    image VARCHAR(200),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
};

DESCRIBE games;

CREATE TABLE `productos` ( 
        `id` INT(55) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `nombre` VARCHAR(40) , 
         `codigo` VARCHAR(13) , 
        `precio` INT(11) , 
        `descripcion` VARCHAR(255) , 
        `categoria` VARCHAR(55) , 
        `imagen` VARCHAR(55));

    CREATE TABLE `reporte_compras` ( 
        `id` INT(55) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `folio` int(40) , 
         `producto` VARCHAR(55) , 
        `proovedor` VARCHAR(55));

        CREATE TABLE `reabastecimiento` ( `id` INT(255) NOT NULL AUTO_INCREMENT , `folio` INT(255) NOT NULL , `producto` VARCHAR(255) NOT NULL , `proovedor` VARCHAR(255) NOT NULL , `cantidad` INT(255) NOT NULL , PRIMARY KEY (`id`))


       CREATE TABLE `scv_db`.`ventas` ( `id` INT NOT NULL AUTO_INCREMENT , `folio` INT NOT NULL , `producto` VARCHAR(255) NOT NULL , `proovedor` VARCHAR(255) NOT NULL , `cantidad` INT NOT NULL , `fecha` TIMESTAMP DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY (`id`)) 


       CREATE TABLE `scv_db`.`garantiaadmin` ( `id` INT NOT NULL AUTO_INCREMENT , `codigoProducto` VARCHAR(255) NOT NULL , `motivo` VARCHAR(255) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

       CREATE TABLE `scv_db`.`garantias` ( `id` INT NOT NULL AUTO_INCREMENT , `codigoProducto` VARCHAR(255) NOT NULL , `imagen` VARCHAR(255) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;