USE `mydb` ;
INSERT INTO mydb.area values (1, 'Urbana');
INSERT INTO mydb.area values (2, 'Rural');

INSERT INTO mydb.vi01 VALUES(1, 'Carretera/ calle pavimentada o adoquinada');
INSERT INTO mydb.vi01 VALUES(2, 'Empedrado');
INSERT INTO mydb.vi01 VALUES(3, 'Lastrado/ calle de tierra');
INSERT INTO mydb.vi01 VALUES(4, 'Sendero');
INSERT INTO mydb.vi01 VALUES(5, 'Río/ Mar');
INSERT INTO mydb.vi01 VALUES(6, 'Otro, cuál?');

INSERT INTO mydb.vi02 VALUES(1, 'Casa o villa');
INSERT INTO mydb.vi02 VALUES(2, 'Departamento');
INSERT INTO mydb.vi02 VALUES(3, 'Cuartos en casa de inquilinato');
INSERT INTO mydb.vi02 VALUES(4, 'Mediagua');
INSERT INTO mydb.vi02 VALUES(5, 'Rancho, Covacha');
INSERT INTO mydb.vi02 VALUES(6, 'Choza');
INSERT INTO mydb.vi02 VALUES(7, 'Otra');


INSERT INTO mydb.vi03a VALUES(1, 'Hormigón (losa, cemento)');
INSERT INTO mydb.vi03a VALUES(2, 'Fibrocemento,asbesto (eternit, eurolit)');
INSERT INTO mydb.vi03a VALUES(3, 'Zinc, Aluminio');
INSERT INTO mydb.vi03a VALUES(4, 'Teja');
INSERT INTO mydb.vi03a VALUES(5, 'Palma, paja u hoja');
INSERT INTO mydb.vi03a VALUES(6, 'Otro Material');

INSERT INTO mydb.vi03b VALUES(1, 'Bueno ');
INSERT INTO mydb.vi03b VALUES(2, 'Regular ');
INSERT INTO mydb.vi03b VALUES(3, 'Malo');


INSERT INTO mydb.vi04a VALUES(1, 'Duela, parquet, tablón tratado o piso flotante');
INSERT INTO mydb.vi04a VALUES(2, 'Cerámica, baldosa, vinil o porcelanato');
INSERT INTO mydb.vi04a VALUES(3, 'Mármol o marmetón');
INSERT INTO mydb.vi04a VALUES(4, 'Ladrillo o cemento');
INSERT INTO mydb.vi04a VALUES(5, 'Tabla / tablón no tratado');
INSERT INTO mydb.vi04a VALUES(6, 'Caña');
INSERT INTO mydb.vi04a VALUES(7, 'Tierra');
INSERT INTO mydb.vi04a VALUES(8, 'Otro Material');

INSERT INTO mydb.vi04b VALUES(1, 'Bueno ');
INSERT INTO mydb.vi04b VALUES(2, 'Regular ');
INSERT INTO mydb.vi04b VALUES(3, 'Malo');

INSERT INTO mydb.vi05a VALUES(1, 'Hormigón/Ladrillo o Bloque');
INSERT INTO mydb.vi05a VALUES(2, 'Asbesto/Cemento (Fibrolit)');
INSERT INTO mydb.vi05a VALUES(3, 'Adobe o Tapia');
INSERT INTO mydb.vi05a VALUES(4, 'Madera');
INSERT INTO mydb.vi05a VALUES(5, 'Caña revestida o bahareque');
INSERT INTO mydb.vi05a VALUES(6, 'Caña no revestida o estera');
INSERT INTO mydb.vi05a VALUES(7, 'Otro Material');

INSERT INTO mydb.vi05b VALUES(1, 'Bueno ');
INSERT INTO mydb.vi05b VALUES(2, 'Regular ');
INSERT INTO mydb.vi05b VALUES(3, 'Malo');

INSERT INTO mydb.vi07b VALUES(1, 'Si');
INSERT INTO mydb.vi07b VALUES(2, 'No');


INSERT INTO mydb.vi08 VALUES(1, 'Gas');
INSERT INTO mydb.vi08 VALUES(2, 'Leña, carbón');
INSERT INTO mydb.vi08 VALUES(3, 'Electricidad');
INSERT INTO mydb.vi08 VALUES(4, 'Otro');


INSERT INTO mydb.vi09 VALUES(1, 'Excusado y alcantarillado');
INSERT INTO mydb.vi09 VALUES(2, 'Excusado y pozo séptico');
INSERT INTO mydb.vi09 VALUES(3, 'Excusado y pozo ciego');
INSERT INTO mydb.vi09 VALUES(4, 'Letrina');
INSERT INTO mydb.vi09 VALUES(5, 'No tiene');

INSERT INTO mydb.vi09a VALUES(1, 'Descarga directa al mar, río, lago o quebrada');
INSERT INTO mydb.vi09a VALUES(2, 'Van al monte, campo, bota la basura en paquete');
INSERT INTO mydb.vi09a VALUES(3, 'Usan una instalación sanitaria cercana y/o prestada');


INSERT INTO mydb.vi09b VALUES(1, 'Excusado y alcantarillado');
INSERT INTO mydb.vi09b VALUES(2, 'Excusado y pozo séptico');
INSERT INTO mydb.vi09b VALUES(3, 'Excusado y pozo ciego');
INSERT INTO mydb.vi09b VALUES(4, 'Letrina');


INSERT INTO mydb.vi10 VALUES(1, 'Red Pública');
INSERT INTO mydb.vi10 VALUES(2, 'Pila o llave pública');
INSERT INTO mydb.vi10 VALUES(3, 'Otra fuente por tubería');
INSERT INTO mydb.vi10 VALUES(4, 'Carro repartidor/triciclo');
INSERT INTO mydb.vi10 VALUES(5, 'Pozo');
INSERT INTO mydb.vi10 VALUES(6, 'Río, vertiente o acequia');
INSERT INTO mydb.vi10 VALUES(7, 'Otro');

INSERT INTO mydb.vi10a VALUES(1, 'Por tubería dentro de la vivienda');
INSERT INTO mydb.vi10a VALUES(2, 'Por tubería fuera de la vivienda pero en el lote');
INSERT INTO mydb.vi10a VALUES(3, 'Por tubería fuera de la vivienda, lote o terreno');
INSERT INTO mydb.vi10a VALUES(4, 'No recibe agua por tubería sino por otros medios');

INSERT INTO mydb.vi11 VALUES(1, 'Exclusivo del hogar');
INSERT INTO mydb.vi11 VALUES(2, 'Compartido con otros hogares');
INSERT INTO mydb.vi11 VALUES(3, 'No tiene');

INSERT INTO mydb.vi12 VALUES(1, 'Empresa eléctrica pública');
INSERT INTO mydb.vi12 VALUES(2, 'Planta eléctrica privada');
INSERT INTO mydb.vi12 VALUES(3, 'Vela, candil, mechero, gas');
INSERT INTO mydb.vi12 VALUES(4, 'Ninguno');

INSERT INTO mydb.vi13 VALUES(1, 'Contratan el servicio');
INSERT INTO mydb.vi13 VALUES(2, 'Servicio municipal');
INSERT INTO mydb.vi13 VALUES(3, 'Botan a la calle, quebrada, río');
INSERT INTO mydb.vi13 VALUES(4, 'La queman, entierran');
INSERT INTO mydb.vi13 VALUES(5, 'Otra');

INSERT INTO mydb.vi14 VALUES(1, 'En arriendo');
INSERT INTO mydb.vi14 VALUES(2, 'Anticresis y/o arriendo');
INSERT INTO mydb.vi14 VALUES(3, 'Propia y la está pagando');
INSERT INTO mydb.vi14 VALUES(4, 'Propia y totalmente pagada');
INSERT INTO mydb.vi14 VALUES(5, 'Cedida');
INSERT INTO mydb.vi14 VALUES(6, 'Recibida por servicios');
INSERT INTO mydb.vi14 VALUES(7, 'Otra');


INSERT INTO mydb.vi101 VALUES(1, 'Si');
INSERT INTO mydb.vi101 VALUES(2, 'No');

INSERT INTO mydb.vi102 VALUES(1, 'Si');
INSERT INTO mydb.vi102 VALUES(2, 'No');

INSERT INTO mydb.vi142 VALUES(1, 'Si');
INSERT INTO mydb.vi142 VALUES(2, 'No');

INSERT INTO mydb.vi143 VALUES(1, 'Si');
INSERT INTO mydb.vi143 VALUES(2, 'No');

INSERT INTO mydb.vi144 VALUES(1, 'Si');
INSERT INTO mydb.vi144 VALUES(2, 'No');

INSERT INTO mydb.vi1511 VALUES(1, 'Si');
INSERT INTO mydb.vi1511 VALUES(2, 'No');

INSERT INTO mydb.vi1512 VALUES(1, 'Si');
INSERT INTO mydb.vi1512 VALUES(2, 'No');


INSERT INTO mydb.vi1531 VALUES(1, 'Si');
INSERT INTO mydb.vi1531 VALUES(2, 'No');

INSERT INTO mydb.vi1532 VALUES(1, 'Si');
INSERT INTO mydb.vi1532 VALUES(2, 'No');

INSERT INTO mydb.vi1533 VALUES(1, 'Si');
INSERT INTO mydb.vi1533 VALUES(2, 'No');

INSERT INTO mydb.vi1534 VALUES(1, 'Si');
INSERT INTO mydb.vi1534 VALUES(2, 'No');

INSERT INTO mydb.vi1535 VALUES(1, 'Si');
INSERT INTO mydb.vi1535 VALUES(2, 'No');

INSERT INTO mydb.vi1536 VALUES(1, 'Si');
INSERT INTO mydb.vi1536 VALUES(2, 'No');


INSERT INTO mydb.vivienda_n VALUES(1, 'Vivienda Uno');
INSERT INTO mydb.vivienda_n VALUES(2, 'Vivienda Dos');
INSERT INTO mydb.vivienda_n VALUES(3, 'Vivienda Tres');
INSERT INTO mydb.vivienda_n VALUES(4, 'Vivienda Cuatro');
INSERT INTO mydb.vivienda_n VALUES(5, 'Vivienda Cinco');
INSERT INTO mydb.vivienda_n VALUES(6, 'Vivienda Seis');
INSERT INTO mydb.vivienda_n VALUES(7, 'Vivienda Siete');
INSERT INTO mydb.vivienda_n VALUES(8, 'Vivienda Ocho (reemplazo)');
INSERT INTO mydb.vivienda_n VALUES(9, 'Vivienda Nueve (reemplazo)');
INSERT INTO mydb.vivienda_n VALUES(10, 'Vivienda Diez (reemplazo)');


INSERT INTO mydb.hogar_n VALUES(1, 'Hogar Uno');
INSERT INTO mydb.hogar_n VALUES(2, 'Hogar Dos');
INSERT INTO mydb.hogar_n VALUES(3, 'Hogar Tres');
INSERT INTO mydb.hogar_n VALUES(4, 'Hogar Cuatro');
INSERT INTO mydb.hogar_n VALUES(5, 'Hogar Cinco');

INSERT INTO mydb.periodo VALUES(202301, 'ene-23');
INSERT INTO mydb.periodo VALUES(202302, 'feb-23');
INSERT INTO mydb.periodo VALUES(202303, 'mar-23');