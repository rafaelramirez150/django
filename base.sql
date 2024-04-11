create database employees;
use employees;

create table employees (
EMPLOYEE_ID int default null,
FIRST_NAME text,
LAST_NAME text,
EMAIL text,
PHONE_NUMBER text,
HIRE_DATE datetime DEFAULT NULL,
JOB_ID text,
SALARY int DEFAULT NULL,
COMISSION_PCT text,
MANAGER_ID int DEFAULT NULL,
DEPARTAMENT_ID int DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

drop table employees;

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/employees.csv'
into table employees
fields terminated by "|"
enclosed by	""""
lines terminated by "\r\n"
-- ignore 1 lines
;

create table category(
id_c int primary key auto_increment,
category varchar(100)
);

insert into category(category)
values
	("electrónica"),
    ("ropa"),
    ("bolsas"),
    ("papa"),
    ("papi");

drop table category;

create table product(
id_p int primary key auto_increment,
product varchar(100),
id_c_d int,
foreign key (id_c_d) references category(id_c)
);

insert into product(id_p, product)
values
	(1, "teléfono"),
	(2, "TV HD"),
	(3, "Camisa"),
	(1, "falda de oficina"),
	(2, "Cartera"),
	(3, "bolsa de mano"),
	(1, "bolsa de viaje");

drop table product;

select * from employees;

select @@global.secure_file_priv;

drop database employees;

show variables like 'secure_file_priv';