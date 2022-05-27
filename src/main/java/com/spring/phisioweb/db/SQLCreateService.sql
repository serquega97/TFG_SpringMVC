/*
* File that will be executed after creating the database inserting initial values to Service table
* Author:  sergiquevedogarreta
*/

/*CREATE DATABASE phisioweb;*/

USE phisioweb;

CREATE TABLE Treatment
(
    id int (3) NOT NULL,
    service_name varchar (170) NOT NULL,
    service_price decimal (5,1),
    service_desc1 longtext,
    service_desc2 longtext,
    service_desc3 longtext,
    service_desc4 longtext,
    service_desc5 longtext,
    url_photo varchar (100),
    service_duration int(3),
    service_webname varchar(100),
    constraint id_pk PRIMARY KEY (id)
)