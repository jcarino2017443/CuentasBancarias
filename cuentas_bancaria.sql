create database banca_electronica1;
use banca_electronica1;
##################
delimiter $$

create procedure info_cliente()
begin
create table  info_cliente(cod_info_cliente int primary key auto_increment,
nombre varchar(50),
apellidos varchar(50),
sexo varchar(50),
direccion varchar(50),
Nacionalidad varchar(50),
pasaporte varchar(50),
DPI int,
numero_tel_casa int,
numero_tel_trabajo int,
numero_tel_movil int,
id_historial_de_movimientos int,
id_compa�ia_telefonica  int,
id_cuentas_bancarias int,
id_cuentas int,
foreign key(id_historial_de_movimientos) references historial_de_movimientos(id_historial_de_movimientos),
foreign key(id_compa�ia_telefonica) references compa�ia_telefonica(id_compa�ia_telefonica ),
foreign key(id_cuentas_bancarias) references cuentas_bancarias(id_cuentas_bancarias),
foreign key(id_cuentas) references cuentas(id_cuentas)
);
end$$
delimiter ;
call info_cliente();
#############
delimiter $$
create procedure info_clientedato(in nombre_nom varchar(50),apellidos_ape varchar(50),sexo_sex varchar(50),direccion_dir varchar(50)
,Nacionalidad_nac varchar(50),
pasaporte_pasap varchar(50),DPI_dpi int,numero_tel_casa_telca int,numero_tel_trabajo_teltra int,numero_tel_movil_telmo int,
id_historial_de_movimientos_himo int,id_compa�ia_telefonica_compate int,id_cuentas_bancarias_cuenban int,id_cuentas_cuen int
)
begin
insert into info_cliente(nombre,apellidos,sexo,direccion,Nacionalidad,pasaporte,DPI,numero_tel_casa,numero_tel_trabajo,numero_tel_movil,
id_historial_de_movimientos,id_compa�ia_telefonica,id_cuentas_bancarias,id_cuentas
)  

values (nombre_nom ,apellidos_ape,sexo_sex,direccion_dir,Nacionalidad_nac,
pasaporte_pasap,DPI_dpi,numero_tel_casa_telca,numero_tel_trabajo_teltra,numero_tel_movil_telmo ,
id_historial_de_movimientos_himo,id_compa�ia_telefonica_compate,id_cuentas_bancarias_cuenban,id_cuentas_cuen);
end $$
delimiter ;
call info_clientedato('Juan Jose','Lopez Sanchez','Hombre','5ta avenida 2-56 zona1','guatemalteco','Ordinarios',0707295,56223696,89652136,42560722,1,1,1,1);
call info_clientedato('Jose Juan','cardenas Sanchez','Hombre','6ta avenida 8-6 zona9','guatemalteco','Ordinarios',0707365,45879623,59632236,78965412,2,2,2,2);
call info_clientedato('Sandy Ximena','Pavon Montero','Mujer','9ta avenida 2-26 zona12','guatemalteca','Temporales',0707196,78964512,63254178,56987412,3,3,3,3);
call info_clientedato('Ximena Sofia','Lopez Molina','Mujer','8ta avenida 8-78 zona1','guatemalteca','Ordinarios',0707123,78459632,65987412,66332255,4,4,4,4);
call info_clientedato('Juana lucrecia','Sanchez alvares','Mujer','1ra avenida 1-86 zona4','guatemalteca','Ordinarios',0707456,56869646,45859565,42887744,5,5,5,5);
call info_clientedato('Pedro Lucas','Olmino Salasar','Hombre','2da avenida 8-68 zona7','guatemalteco','Oficiales',0707789,69598979,63626569,42434648,6,6,6,6);
call info_clientedato('Diego Marcos','Lopez Gomez','Hombre','3ra avenida 9-56 zona11','guatemalteco','Ordinarios',0707987,78485868,87898584,58595654,7,7,7,7);
call info_clientedato('Cristian Antonio','vargas Valey','Hombre','1ra avenida 2-26 zona18','guatemalteco','Ordinarios',0707456,74757879,33353938,39343231,8,8,8,8);
call info_clientedato('Diego Jhonatan','Chiyal Tzaj','Hombre','4ta avenida 8-56 zona10','guatemalteco','Oficiales',0707321,50793838,60616263,90969798,9,9,9,9);
call info_clientedato('Marisol Andrea','Gustamente Gomez','Mujer','8ta avenida 2-65 zona19','guatemalteca','Ordinarios',0707147,85868987,32354565,78546232,10,10,10,10);
call info_clientedato('Frisly Lucrecia','Lopez Bonilla','Mujer','4ta avenida 1-36 zona15','guatemalteca','Temporales',0707258,58874142,56696362,96658754,11,11,11,11);
call info_clientedato('Juan Pedro','Cardona Say','Hombre','9ta avenida 2-96 zona5','guatemalteco','Ordinarios',0707369,74456525,58848683,45696862,12,12,12,12);
call info_clientedato('Jose Marcos','Ajuchan Lopez','Hombre','6ta avenida 9-56 zona4','guatemalteco','Ordinarios',0707159,78696365,69636221,75696362,13,13,13,13);
call info_clientedato('Joaqu�n Archivaldo','Guzm�n Loera','Hombre','7ta avenida 8-56 zona2','guatemalteco','Temporales',0707753,57899663,45696362,45253636,14,14,14,14);
call info_clientedato('Marta Lucrecia','Perez Arebalo','Mujer','9ta avenida 2-86 zona10','guatemalteca','Oficiales',0707931,69797875,89678945,42566963,15,15,15,15);
select * from info_cliente;

#################
delimiter $$
create procedure compa�ia_telefonica()
begin
create table compa�ia_telefonica(id_compa�ia_telefonica int primary key auto_increment,
Numero int,
nombre varchar(50)
); 
end $$
delimiter ;
call compa�ia_telefonica();
################################
delimiter $$
create procedure compa�ia_telefonicadato(in Numero_num int,nombre_nom varchar(50)
																				
)
begin
insert into compa�ia_telefonica(Numero,nombre)  values (Numero_num ,nombre_nom);
end $$
delimiter ;
call compa�ia_telefonicadato(78956321,'Tigo');
call compa�ia_telefonicadato(89632454,'claro');
call compa�ia_telefonicadato(79632545,'movistar');
call compa�ia_telefonicadato(69323564,'claro');
call compa�ia_telefonicadato(58575653,'tigo');
call compa�ia_telefonicadato(64676869,'claro');
call compa�ia_telefonicadato(88747177,'Tigo');
call compa�ia_telefonicadato(45689712,'movistar');
call compa�ia_telefonicadato(78926413,'claro');
call compa�ia_telefonicadato(56412356,'Tigo');
call compa�ia_telefonicadato(98862165,'claro');
call compa�ia_telefonicadato(87424654,'Tigo');
call compa�ia_telefonicadato(96456313,'movistar');
call compa�ia_telefonicadato(78476513,'Tigo');
call compa�ia_telefonicadato(89465432,'claro');
select * from compa�ia_telefonica; 
#################
delimiter $$
create procedure cuentas_bancarias()
begin
create table cuentas_bancarias(id_cuentas_bancarias int primary key auto_increment,
nombre varchar(50),
id_fondos int,
id_tipo_de_moneda int,
foreign key(id_tipo_de_moneda) references tipo_de_moneda(id_tipo_de_moneda)
); 
end $$
delimiter ;
call cuentas_bancarias();
##############
delimiter $$
create procedure cuentas_bancariasdato(in nombre_nom varchar(50),id_fondos_fon int,id_tipo_de_moneda_timo int
																				
)
begin
insert into cuentas_bancarias(nombre,id_fondos,id_tipo_de_moneda)  values (nombre_nom,id_fondos_fon,id_tipo_de_moneda_timo );
end $$
delimiter ;
call cuentas_bancariasdato('cuenta de ahorro',1,1);
call cuentas_bancariasdato('cuenta de deposito',2,2);
call cuentas_bancariasdato('cuenta de credito',3,3);
call cuentas_bancariasdato('cuenta de ahorro',4,4);
call cuentas_bancariasdato('cuenta de deposito',5,5);
call cuentas_bancariasdato('cuenta de credito',6,6);
call cuentas_bancariasdato('cuenta de ahorro',7,7);
call cuentas_bancariasdato('cuenta de deposito',8,8);
call cuentas_bancariasdato('cuenta de credito',9,9);
call cuentas_bancariasdato('cuenta de ahorro',10,10);
call cuentas_bancariasdato('cuenta de deposito',11,11);
call cuentas_bancariasdato('cuenta de credito',12,12);
call cuentas_bancariasdato('cuenta de ahorro',13,13);
call cuentas_bancariasdato('cuenta de deposito',14,14);
call cuentas_bancariasdato('cuenta de credito',15,15);
select * from cuentas_bancarias; 


################
delimiter $$
create procedure tipo_de_moneda()
begin
create table tipo_de_moneda(id_tipo_de_moneda int primary key auto_increment,
nombre varchar(50)
);
end $$
delimiter ;
call tipo_de_moneda();
##################
delimiter $$
create procedure tipo_de_monedadato(in nombre_nom varchar(50)
																				
)
begin
insert into tipo_de_moneda(nombre)  values (nombre_nom);
end $$
delimiter ;
call tipo_de_monedadato('Dolar');
call tipo_de_monedadato('Quetzal');
call tipo_de_monedadato('Euro');
call tipo_de_monedadato('Dolar');
call tipo_de_monedadato('Quetzal');
call tipo_de_monedadato('Euro');
call tipo_de_monedadato('Dolar');
call tipo_de_monedadato('Quetzal');
call tipo_de_monedadato('Euro');
call tipo_de_monedadato('Dolar');
call tipo_de_monedadato('Quetzal');
call tipo_de_monedadato('Euro');
call tipo_de_monedadato('Dolar');
call tipo_de_monedadato('Quetzal');
call tipo_de_monedadato('Euro');
select * from tipo_de_moneda; 

##################
delimiter $$
create procedure tarjetas()
begin
create table tarjetas(id_tarjetas int primary key auto_increment,
nombre_tarjeta varchar(50),
saldo int,
capital_pagado int,
tasa_de_interes int,
limite_de_credito int,
id_tipo_de_moneda int,
foreign key(id_tipo_de_moneda) references tipo_de_moneda(id_tipo_de_moneda)
);
end $$
delimiter ;
call tarjetas();
###
delimiter $$
create procedure tarjetasdato(in nombre_tarjeta_nom varchar(50),saldo_sal int,capital_pagado_cap int,tasa_de_interes_tain
int,limite_de_credito_licre int,id_tipo_de_moneda_timone int
																				
)
begin
insert into tarjetas(nombre_tarjeta,saldo,capital_pagado,tasa_de_interes,limite_de_credito,id_tipo_de_moneda ) 
 values (nombre_tarjeta_nom,saldo_sal,capital_pagado_cap,tasa_de_interes_tain,limite_de_credito_licre,id_tipo_de_moneda_timone);
end $$
delimiter ;
call tarjetasdato('tarjeta de credito',8000,560,30000,25000,1);
call tarjetasdato('tarjeta de debito',9000,56,5000,26000,2);
call tarjetasdato('tarjeta de prepago',10000,790,90000,25000,3);
call tarjetasdato('tarjeta de revolvig',15000,800,60000,27000,4);
call tarjetasdato('tarjeta de credito',16000,100,50000,26000,5);
call tarjetasdato('tarjeta de debito',12000,310,60000,29000,6);
call tarjetasdato('tarjeta de prepago',8000,50,30000,21000,7);
call tarjetasdato('tarjeta de revolvig',11000,580,20000,21000,8);
call tarjetasdato('tarjeta de credito',12000,500,960000,23000,9);
call tarjetasdato('tarjeta de debito',14000,560,70000,29000,10);
call tarjetasdato('tarjeta de prepago',18000,600,89000,20000,11);
call tarjetasdato('tarjeta de revolvig',8900,550,23000,27000,12);
call tarjetasdato('tarjeta de credito',13000,700,85000,22000,13);
call tarjetasdato('tarjeta de debito',16000,800,56000,23000,14);
call tarjetasdato('tarjeta de prepago',55000,200,69000,29000,15);
select * from tarjetas;
#############################
delimiter $$
create procedure fondos_de_pension()
begin
create table fondos_de_pension(id_fondos_de_pension int primary key auto_increment,
tasa_de_interes int,
plazo_en_meses varchar(50)
);
end $$
delimiter ;
call fondos_de_pension();
###
delimiter $$
create procedure fondos_de_pensiondato(in tasa_de_interes_tain int,plazo_en_meses_plame varchar(50)
)
begin
insert into fondos_de_pension(tasa_de_interes,plazo_en_meses)  values (tasa_de_interes_tain,plazo_en_meses_plame);
end $$
delimiter ;
call fondos_de_pensiondato(2500,'12 meses');
call fondos_de_pensiondato(2300,'6 meses');
call fondos_de_pensiondato(9500,'8 meses');
call fondos_de_pensiondato(7500,'9 meses');
call fondos_de_pensiondato(3500,'5 meses');
call fondos_de_pensiondato(2800,'3 meses');
call fondos_de_pensiondato(2400,'9 meses');
call fondos_de_pensiondato(2100,'15 meses');
call fondos_de_pensiondato(25000,'13 meses');
call fondos_de_pensiondato(29000,'14 meses');
call fondos_de_pensiondato(2500,'12 meses');
call fondos_de_pensiondato(36500,'21 meses');
call fondos_de_pensiondato(29000,'18 meses');
call fondos_de_pensiondato(26000,'17 meses');
call fondos_de_pensiondato(2500,'5 meses');
select * from fondos_de_pension; 
###############
delimiter $$
create procedure prestamos()
begin
create table prestamos(id_prestamos int primary key auto_increment,
nombre_prestamo varchar(50),
capital_adeudado int,
capital_pagado int,
tasa_de_interes int,
id_fondos_de_pension int,
foreign key(id_fondos_de_pension) references fondos_de_pension(id_fondos_de_pension)
);
end $$
delimiter ;
call prestamos();
##########
delimiter $$
create procedure prestamosdato(in nombre_prestamo_nompre varchar(50),capital_adeudado_caadeu int,capital_pagado_capa int,
tasa_de_interes_tasain int,id_fondos_de_pension_fope int
)
begin
insert into prestamos(nombre_prestamo,capital_adeudado,capital_pagado,tasa_de_interes,
id_fondos_de_pension)  values (nombre_prestamo_nompre,capital_adeudado_caadeu,capital_pagado_capa,
tasa_de_interes_tasain,id_fondos_de_pension_fope);
end $$
delimiter ;
call prestamosdato('prestamos personales',25000,18000,250,1);
call prestamosdato('prestamos de estudio',30000,25000,500,2);
call prestamosdato('prestamos hipotecarios',5000,800,25,3);
call prestamosdato('prestamos personales',40000,20000,780,4);
call prestamosdato('prestamos de estudio',26000,20000,500,5);
call prestamosdato('prestamos hipotecarios',29000,21000,650,6);
call prestamosdato('prestamos personales',250000,180000,2000,7);
call prestamosdato('prestamos de estudio',2000,1800,2500,8);
call prestamosdato('prestamos hipotecarios',20000,19000,100,9);
call prestamosdato('prestamos personales',30000,22000,800,10);
call prestamosdato('prestamos de estudio',80000,70000,100,11);
call prestamosdato('prestamos hipotecarios',70000,55000,200,12);
call prestamosdato('prestamos personales',10000,5000,500,13);
call prestamosdato('prestamos de estudio',56000,30000,650,14);
call prestamosdato('prestamos hipotecarios',80000,18000,250,15);
select * from prestamos;

######################
delimiter $$
create procedure historial_de_movimientos()
begin
create table historial_de_movimientos(id_historial_de_movimientos int primary key auto_increment,
fecha_movimiento date,
tipo_de_operacion varchar(50),
descripcion_de_operacion varchar(50),
monto int,
id_pago_servicios int,
id_prestamos int,
foreign key(id_pago_servicios) references pago_servicios(id_pago_servicios),
foreign key(id_prestamos) references prestamos(id_prestamos)
);
end $$
delimiter ;
call historial_de_movimientos();
###
delimiter $$
create procedure historial_de_movimientosdato(in fecha_movimiento_femo date,tipo_de_operacion_tiop varchar(50),
descripcion_de_operacion_desop varchar(50),monto_mon int,id_pago_servicios_paser int,id_prestamos_pres int
)
begin
insert into historial_de_movimientos(fecha_movimiento,tipo_de_operacion ,descripcion_de_operacion,monto,id_pago_servicios ,id_prestamos 
)  
values (fecha_movimiento_femo,tipo_de_operacion_tiop ,
descripcion_de_operacion_desop ,monto_mon ,id_pago_servicios_paser,id_prestamos_pres);
end $$
delimiter ;
call historial_de_movimientosdato('2019/02/28','operacion bancaria','retiro',2000,1,1);
call historial_de_movimientosdato('2019/03/27','operacion bancaria','ahorro',9000,2,2);
call historial_de_movimientosdato('2019/04/26','operacion bancaria','prestamo',3000,3,3);
call historial_de_movimientosdato('2019/05/9','operacion bancaria','retiro',6000,4,4);
call historial_de_movimientosdato('2019/06/3','operacion bancaria','ahorro',9000,5,5);
call historial_de_movimientosdato('2019/07/6','operacion bancaria','prestamo',5000,6,6);
call historial_de_movimientosdato('2019/08/2','operacion bancaria','retiro',1000,7,7);
call historial_de_movimientosdato('2019/09/4','operacion bancaria','ahorro',2000,8,8);
call historial_de_movimientosdato('2019/10/3','operacion bancaria','prestamo',3000,9,9);
call historial_de_movimientosdato('2019/11/25','operacion bancaria','retiro',4000,10,10);
call historial_de_movimientosdato('2019/12/15','operacion bancaria','ahorro',5000,11,11);
call historial_de_movimientosdato('2019/2/2','operacion bancaria','retiro',6000,12,12);
call historial_de_movimientosdato('2019/3/5','operacion bancaria','prestamo',8000,13,13);
call historial_de_movimientosdato('2019/4/22','operacion bancaria','retiro',7000,14,14);
call historial_de_movimientosdato('2019/5/23','operacion bancaria','ahorro',9000,15,15);
select * from historial_de_movimientos; 
######################
delimiter $$
create procedure cuentas()
begin
create table cuentas(id_cuentas int primary key auto_increment,
nombre varchar(50),
id_Estado int,
id_Usuario  int,
foreign key(id_Estado) references Estado(id_Estado),
foreign key(id_Usuario) references Usuario(id_Usuario)  
);
end $$
delimiter ;
call cuentas();
delimiter $$
create procedure cuentasdato(nombre_nom varchar(50),id_Estado int,id_Usuario int
																				
)
begin
insert into cuentas(nombre,id_Estado,id_Usuario)  values (nombre_nom,id_Estado,id_Usuario);
end $$
delimiter ;
call cuentasdato('cuenta1',1,1);
call cuentasdato('cuenta2',2,2);
call cuentasdato('cuenta3',3,3);
call cuentasdato('cuenta4',4,4);
call cuentasdato('cuenta5',5,5);
call cuentasdato('cuenta6',6,6);
call cuentasdato('cuenta7',7,7);
call cuentasdato('cuenta8',8,8);
call cuentasdato('cuenta9',9,9);
call cuentasdato('cuenta10',10,10);
call cuentasdato('cuenta11',11,13);
call cuentasdato('cuenta12',12,14);
call cuentasdato('cuenta13',13,15);
call cuentasdato('cuenta14',14,16);
call cuentasdato('cuenta15',15,17);



######################
delimiter $$

create procedure Usuario()
begin
create table Usuario(id_Usuario int primary key auto_increment,
nombre varchar(50),
contrase�a varchar(50),
id_Estado int,
foreign key(id_Estado) references Estado(id_Estado) 
);
end $$
delimiter ;
call Usuario();
###
delimiter $$

create procedure Usuariodato(in nombre_nom varchar(50),contrase�a_contra varchar(50),id_Estado_esta int 
																				
)
begin
insert into Usuario(nombre,contrase�a,id_Estado)  values (nombre_nom ,contrase�a_contra,id_Estado_esta );
end $$
delimiter ;

call Usuariodato('Juan Jose','#"#$"$',1);
call Usuariodato('Jose Juan','#"%$#"',2);
call Usuariodato('Sandy Ximena','%"$%"%$',3);
call Usuariodato('Ximena Sofia','"$%"',4);
call Usuariodato('Juana lucrecia','!"#$#',5);
call Usuariodato('Pedro Lucas','!$#%',6);
call Usuariodato('Diego Marcos','!#$%&',7);
call Usuariodato('Cristian Antonio','$"%$!',8);
call Usuariodato('Diego Jhonatan','!#$321',9);
call Usuariodato('Marisol Andrea','!"#$%',10);
call Usuariodato('Frisly Lucrecia','!%#%',11);
call Usuariodato('Juan Pedro','%&%"!',12);
call Usuariodato('Jose Marcos','$!!#$$#',13);
call Usuariodato('Joaqu�n Archivaldo','$!$##"!',14);
call Usuariodato('Marta Lucrecia','!"#%$%4',15);
select * from Usuario;
######################
delimiter $$
create procedure Estado()
begin
create table Estado(id_Estado int primary key auto_increment,
estado varchar(50),
fecha_de_creacion date 
);
end $$
delimiter ;
call Estado();
##
delimiter $$
create procedure Estadodato(in estado_es varchar(50),fecha_de_creacion_fecre date 
																				
)
begin
insert into Estado(estado,fecha_de_creacion)  values (estado_es,fecha_de_creacion_fecre);
end $$
delimiter ;
call Estadodato('hibilitado','2019/01/1');
call Estadodato('hibilitado','2019/01/5');
call Estadodato('desabilitado','2019/01/6');
call Estadodato('desabilitado','2019/01/10');
call Estadodato('hibilitado','2019/01/11');
call Estadodato('hibilitado','2019/01/15');
call Estadodato('desabilitado','2019/02/16');
call Estadodato('desabilitado','2019/02/17');
call Estadodato('hibilitado','2019/02/21');
call Estadodato('hibilitado','2019/02/24');
call Estadodato('desabilitado','2019/02/3');
call Estadodato('desabilitado','2019/03/1');
call Estadodato('hibilitado','2019/03/5');
call Estadodato('hibilitado','2019/03/6');
call Estadodato('desabilitado','2019/03/8');
select * from Estado;
######################
delimiter $$
create procedure pago_servicios()
begin
create table pago_servicios(id_pago_servicios int primary key auto_increment,
nombre_del_pago varchar(50),
cantidad_del_pago int,
id_proveedores int,
foreign key(id_proveedores) references proveedores(id_proveedores)
);
end $$
delimiter ;
call pago_servicios();
###
delimiter $$
create procedure pago_serviciosdato(in nombre_del_pago_nompa varchar(50),cantidad_del_pago_cantpa int,id_proveedores_provee int
)
begin
insert into pago_servicios(nombre_del_pago ,cantidad_del_pago,id_proveedores)  
values (nombre_del_pago_nompa,cantidad_del_pago_cantpa ,id_proveedores_provee);
end $$
delimiter ;
call pago_serviciosdato('pago de servicio de telefonos',78945,1);
call pago_serviciosdato('pago de servicio electrico',456123,2);
call pago_serviciosdato('pago de servicio de internet',2000,3);
call pago_serviciosdato('pago de servicio de telefonos',56000,4);
call pago_serviciosdato('pago de servicio electrico',57000,5);
call pago_serviciosdato('pago de servicio de internet',60000,6);
call pago_serviciosdato('pago de servicio de telefonos',36000,7);
call pago_serviciosdato('pago de servicio electrico',69000,8);
call pago_serviciosdato('pago de servicio de internet',8000,9);
call pago_serviciosdato('pago de servicio de telefonos',63000,10);
call pago_serviciosdato('pago de servicio electrico',21000,11);
call pago_serviciosdato('pago de servicio de internet',31000,12);
call pago_serviciosdato('pago de servicio de telefonos',25000,13);
call pago_serviciosdato('pago de servicio electrico',96000,14);
call pago_serviciosdato('pago de servicio de internet',36000,15);
select * from pago_servicios; 
######################
delimiter $$
create procedure proveedores()
begin
create table proveedores(id_proveedores int primary key auto_increment,
nombre_proveedor varchar(50),
codigo_proveedor int,
identificador_de_pago varchar(50)
);
end $$
delimiter ;
call proveedores();
###
delimiter $$
create procedure proveedoresdato(in nombre_proveedor_nompro varchar(50),codigo_proveedor_codpro int,identificador_de_pago_idpa varchar(50)
)
begin
insert into proveedores(nombre_proveedor,codigo_proveedor,identificador_de_pago )  
values (nombre_proveedor_nompro ,codigo_proveedor_codpro,identificador_de_pago_idpa);
end $$
delimiter ;
call proveedoresdato('Application service',5689,'codigo');
call proveedoresdato('Managed Service',3265,'codigo');
call proveedoresdato('Application service',5498,'codigo');
call proveedoresdato('Managed Service',9865,'codigo');
call proveedoresdato('Application service',3216,'codigo');
call proveedoresdato('Managed Service',1234,'codigo');
call proveedoresdato('servicio de telefono',7989,'numero');
call proveedoresdato('Application service',9999,'codigo');
call proveedoresdato('energia electrica',4578,'numero correlativo');
call proveedoresdato('Application service',2568,'codigo');
call proveedoresdato('servicio de telefono',7896,'numero');
call proveedoresdato('Application service',8745,'codigo');
call proveedoresdato('energia electrica',2564,'numero correlativo');
call proveedoresdato('servicio de telefono',8963,'numero');
call proveedoresdato('Application service',2365,'codigo');
select * from proveedores;