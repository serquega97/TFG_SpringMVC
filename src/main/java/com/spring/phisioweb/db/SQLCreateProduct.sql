/*
* File that will be executed after creating the database inserting initial values to Product table
* Author:  sergiquevedogarreta
*/

CREATE DATABASE phisioweb;

USE phisioweb;

CREATE table Product
(
    id int (3) NOT NULL,
    product_name varchar (170) NOT NULL,
    product_weight decimal (5,1),
    product_price decimal (5,1),
    product_type varchar (100),
    product_desc1 longtext,
    product_desc2 longtext,
    product_desc3 longtext,
    product_desc4 longtext,
    product_desc5 longtext,
    url_photo varchar (100),
    product_duration int(3),
    product_webname varchar(100),
    constraint id_pk PRIMARY KEY (id)
)

