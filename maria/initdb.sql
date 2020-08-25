use mysql;

create database rmaria default charset utf8;

create user 'rmaria'@'%' identified by 'rmaria';
set password for 'rmaria'@'%' = password('rmaria');
grant all privileges on rmaria.* to 'rmaria'@'%';

create user 'rmaria'@'localhost' identified by 'rmaria';
set password for 'rmaria'@'localhost' = password('rmaria');
grant all privileges on rmaria.* to 'rmaria'@'localhost';

create user 'rmaria'@'127.0.0.1' identified by 'rmaria';
set password for 'rmaria'@'127.0.0.1' = password('rmaria');
grant all privileges on rmaria.* to 'rmaria'@'127.0.0.1';

--create user 'root'@'127.0.0.1' identified by 'mysql';

set password for 'root'@'%' = password('mysql');
set password for 'root'@'localhost' = password('mysql');
--set password for 'root'@'127.0.0.1' = password('mysql');

grant all privileges on *.* to 'root'@'%';
grant all privileges on *.* to 'root'@'localhost';
--grant all privileges on *.* to 'root'@'127.0.0.1';

flush privileges;

use rmaria;

CREATE TABLE `autompg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mpg` double DEFAULT NULL,
  `cylinders` int(11) DEFAULT NULL,
  `displacement` int(11) DEFAULT NULL,
  `horsepower` varchar(20) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `acceleration` double DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `origin` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(18.0,8,307,'130.0',3504.0,12.0,70,1,'chevrolet chevelle malibu')
,(15.0,8,350,'165.0',3693.0,11.5,70,1,'buick skylark 320')
,(18.0,8,318,'150.0',3436.0,11.0,70,1,'plymouth satellite')
,(16.0,8,304,'150.0',3433.0,12.0,70,1,'amc rebel sst')
,(17.0,8,302,'140.0',3449.0,10.5,70,1,'ford torino')
,(15.0,8,429,'198.0',4341.0,10.0,70,1,'ford galaxie 500')
,(14.0,8,454,'220.0',4354.0,9.0,70,1,'chevrolet impala')
,(14.0,8,440,'215.0',4312.0,8.5,70,1,'plymouth fury iii')
,(14.0,8,455,'225.0',4425.0,10.0,70,1,'pontiac catalina')
,(15.0,8,390,'190.0',3850.0,8.5,70,1,'amc ambassador dpl')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(15.0,8,383,'170.0',3563.0,10.0,70,1,'dodge challenger se')
,(14.0,8,340,'160.0',3609.0,8.0,70,1,'plymouth ''cuda 340')
,(15.0,8,400,'150.0',3761.0,9.5,70,1,'chevrolet monte carlo')
,(14.0,8,455,'225.0',3086.0,10.0,70,1,'buick estate wagon (sw)')
,(24.0,4,113,'95.00',2372.0,15.0,70,3,'toyota corona mark ii')
,(22.0,6,198,'95.00',2833.0,15.5,70,1,'plymouth duster')
,(18.0,6,199,'97.00',2774.0,15.5,70,1,'amc hornet')
,(21.0,6,200,'85.00',2587.0,16.0,70,1,'ford maverick')
,(27.0,4,97,'88.00',2130.0,14.5,70,3,'datsun pl510')
,(26.0,4,97,'46.00',1835.0,20.5,70,2,'volkswagen 1131 deluxe sedan')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(25.0,4,110,'87.00',2672.0,17.5,70,2,'peugeot 504')
,(24.0,4,107,'90.00',2430.0,14.5,70,2,'audi 100 ls')
,(25.0,4,104,'95.00',2375.0,17.5,70,2,'saab 99e')
,(26.0,4,121,'113.0',2234.0,12.5,70,2,'bmw 2002')
,(21.0,6,199,'90.00',2648.0,15.0,70,1,'amc gremlin')
,(10.0,8,360,'215.0',4615.0,14.0,70,1,'ford f250')
,(10.0,8,307,'200.0',4376.0,15.0,70,1,'chevy c20')
,(11.0,8,318,'210.0',4382.0,13.5,70,1,'dodge d200')
,(9.0,8,304,'193.0',4732.0,18.5,70,1,'hi 1200d')
,(27.0,4,97,'88.00',2130.0,14.5,71,3,'datsun pl510')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(28.0,4,140,'90.00',2264.0,15.5,71,1,'chevrolet vega 2300')
,(25.0,4,113,'95.00',2228.0,14.0,71,3,'toyota corona')
,(25.0,4,98,'?',2046.0,19.0,71,1,'ford pinto')
,(19.0,6,232,'100.0',2634.0,13.0,71,1,'amc gremlin')
,(16.0,6,225,'105.0',3439.0,15.5,71,1,'plymouth satellite custom')
,(17.0,6,250,'100.0',3329.0,15.5,71,1,'chevrolet chevelle malibu')
,(19.0,6,250,'88.00',3302.0,15.5,71,1,'ford torino 500')
,(18.0,6,232,'100.0',3288.0,15.5,71,1,'amc matador')
,(14.0,8,350,'165.0',4209.0,12.0,71,1,'chevrolet impala')
,(14.0,8,400,'175.0',4464.0,11.5,71,1,'pontiac catalina brougham')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(14.0,8,351,'153.0',4154.0,13.5,71,1,'ford galaxie 500')
,(14.0,8,318,'150.0',4096.0,13.0,71,1,'plymouth fury iii')
,(12.0,8,383,'180.0',4955.0,11.5,71,1,'dodge monaco (sw)')
,(13.0,8,400,'170.0',4746.0,12.0,71,1,'ford country squire (sw)')
,(13.0,8,400,'175.0',5140.0,12.0,71,1,'pontiac safari (sw)')
,(18.0,6,258,'110.0',2962.0,13.5,71,1,'amc hornet sportabout (sw)')
,(22.0,4,140,'72.00',2408.0,19.0,71,1,'chevrolet vega (sw)')
,(19.0,6,250,'100.0',3282.0,15.0,71,1,'pontiac firebird')
,(18.0,6,250,'88.00',3139.0,14.5,71,1,'ford mustang')
,(23.0,4,122,'86.00',2220.0,14.0,71,1,'mercury capri 2000')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(28.0,4,116,'90.00',2123.0,14.0,71,2,'opel 1900')
,(30.0,4,79,'70.00',2074.0,19.5,71,2,'peugeot 304')
,(30.0,4,88,'76.00',2065.0,14.5,71,2,'fiat 124b')
,(31.0,4,71,'65.00',1773.0,19.0,71,3,'toyota corolla 1200')
,(35.0,4,72,'69.00',1613.0,18.0,71,3,'datsun 1200')
,(27.0,4,97,'60.00',1834.0,19.0,71,2,'volkswagen model 111')
,(26.0,4,91,'70.00',1955.0,20.5,71,1,'plymouth cricket')
,(24.0,4,113,'95.00',2278.0,15.5,72,3,'toyota corona hardtop')
,(25.0,4,97,'80.00',2126.0,17.0,72,1,'dodge colt hardtop')
,(23.0,4,97,'54.00',2254.0,23.5,72,2,'volkswagen type 3')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(20.0,4,140,'90.00',2408.0,19.5,72,1,'chevrolet vega')
,(21.0,4,122,'86.00',2226.0,16.5,72,1,'ford pinto runabout')
,(13.0,8,350,'165.0',4274.0,12.0,72,1,'chevrolet impala')
,(14.0,8,400,'175.0',4385.0,12.0,72,1,'pontiac catalina')
,(15.0,8,318,'150.0',4135.0,13.5,72,1,'plymouth fury iii')
,(14.0,8,351,'153.0',4129.0,13.0,72,1,'ford galaxie 500')
,(17.0,8,304,'150.0',3672.0,11.5,72,1,'amc ambassador sst')
,(11.0,8,429,'208.0',4633.0,11.0,72,1,'mercury marquis')
,(13.0,8,350,'155.0',4502.0,13.5,72,1,'buick lesabre custom')
,(12.0,8,350,'160.0',4456.0,13.5,72,1,'oldsmobile delta 88 royale')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(13.0,8,400,'190.0',4422.0,12.5,72,1,'chrysler newport royal')
,(19.0,3,70,'97.00',2330.0,13.5,72,3,'mazda rx2 coupe')
,(15.0,8,304,'150.0',3892.0,12.5,72,1,'amc matador (sw)')
,(13.0,8,307,'130.0',4098.0,14.0,72,1,'chevrolet chevelle concours (sw)')
,(13.0,8,302,'140.0',4294.0,16.0,72,1,'ford gran torino (sw)')
,(14.0,8,318,'150.0',4077.0,14.0,72,1,'plymouth satellite custom (sw)')
,(18.0,4,121,'112.0',2933.0,14.5,72,2,'volvo 145e (sw)')
,(22.0,4,121,'76.00',2511.0,18.0,72,2,'volkswagen 411 (sw)')
,(21.0,4,120,'87.00',2979.0,19.5,72,2,'peugeot 504 (sw)')
,(26.0,4,96,'69.00',2189.0,18.0,72,2,'renault 12 (sw)')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(22.0,4,122,'86.00',2395.0,16.0,72,1,'ford pinto (sw)')
,(28.0,4,97,'92.00',2288.0,17.0,72,3,'datsun 510 (sw)')
,(23.0,4,120,'97.00',2506.0,14.5,72,3,'toyouta corona mark ii (sw)')
,(28.0,4,98,'80.00',2164.0,15.0,72,1,'dodge colt (sw)')
,(27.0,4,97,'88.00',2100.0,16.5,72,3,'toyota corolla 1600 (sw)')
,(13.0,8,350,'175.0',4100.0,13.0,73,1,'buick century 350')
,(14.0,8,304,'150.0',3672.0,11.5,73,1,'amc matador')
,(13.0,8,350,'145.0',3988.0,13.0,73,1,'chevrolet malibu')
,(14.0,8,302,'137.0',4042.0,14.5,73,1,'ford gran torino')
,(15.0,8,318,'150.0',3777.0,12.5,73,1,'dodge coronet custom')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(12.0,8,429,'198.0',4952.0,11.5,73,1,'mercury marquis brougham')
,(13.0,8,400,'150.0',4464.0,12.0,73,1,'chevrolet caprice classic')
,(13.0,8,351,'158.0',4363.0,13.0,73,1,'ford ltd')
,(14.0,8,318,'150.0',4237.0,14.5,73,1,'plymouth fury gran sedan')
,(13.0,8,440,'215.0',4735.0,11.0,73,1,'chrysler new yorker brougham')
,(12.0,8,455,'225.0',4951.0,11.0,73,1,'buick electra 225 custom')
,(13.0,8,360,'175.0',3821.0,11.0,73,1,'amc ambassador brougham')
,(18.0,6,225,'105.0',3121.0,16.5,73,1,'plymouth valiant')
,(16.0,6,250,'100.0',3278.0,18.0,73,1,'chevrolet nova custom')
,(18.0,6,232,'100.0',2945.0,16.0,73,1,'amc hornet')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(18.0,6,250,'88.00',3021.0,16.5,73,1,'ford maverick')
,(23.0,6,198,'95.00',2904.0,16.0,73,1,'plymouth duster')
,(26.0,4,97,'46.00',1950.0,21.0,73,2,'volkswagen super beetle')
,(11.0,8,400,'150.0',4997.0,14.0,73,1,'chevrolet impala')
,(12.0,8,400,'167.0',4906.0,12.5,73,1,'ford country')
,(13.0,8,360,'170.0',4654.0,13.0,73,1,'plymouth custom suburb')
,(12.0,8,350,'180.0',4499.0,12.5,73,1,'oldsmobile vista cruiser')
,(18.0,6,232,'100.0',2789.0,15.0,73,1,'amc gremlin')
,(20.0,4,97,'88.00',2279.0,19.0,73,3,'toyota carina')
,(21.0,4,140,'72.00',2401.0,19.5,73,1,'chevrolet vega')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(22.0,4,108,'94.00',2379.0,16.5,73,3,'datsun 610')
,(18.0,3,70,'90.00',2124.0,13.5,73,3,'maxda rx3')
,(19.0,4,122,'85.00',2310.0,18.5,73,1,'ford pinto')
,(21.0,6,155,'107.0',2472.0,14.0,73,1,'mercury capri v6')
,(26.0,4,98,'90.00',2265.0,15.5,73,2,'fiat 124 sport coupe')
,(15.0,8,350,'145.0',4082.0,13.0,73,1,'chevrolet monte carlo s')
,(16.0,8,400,'230.0',4278.0,9.5,73,1,'pontiac grand prix')
,(29.0,4,68,'49.00',1867.0,19.5,73,2,'fiat 128')
,(24.0,4,116,'75.00',2158.0,15.5,73,2,'opel manta')
,(20.0,4,114,'91.00',2582.0,14.0,73,2,'audi 100ls')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(19.0,4,121,'112.0',2868.0,15.5,73,2,'volvo 144ea')
,(15.0,8,318,'150.0',3399.0,11.0,73,1,'dodge dart custom')
,(24.0,4,121,'110.0',2660.0,14.0,73,2,'saab 99le')
,(20.0,6,156,'122.0',2807.0,13.5,73,3,'toyota mark ii')
,(11.0,8,350,'180.0',3664.0,11.0,73,1,'oldsmobile omega')
,(20.0,6,198,'95.00',3102.0,16.5,74,1,'plymouth duster')
,(21.0,6,200,'?',2875.0,17.0,74,1,'ford maverick')
,(19.0,6,232,'100.0',2901.0,16.0,74,1,'amc hornet')
,(15.0,6,250,'100.0',3336.0,17.0,74,1,'chevrolet nova')
,(31.0,4,79,'67.00',1950.0,19.0,74,3,'datsun b210')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(26.0,4,122,'80.00',2451.0,16.5,74,1,'ford pinto')
,(32.0,4,71,'65.00',1836.0,21.0,74,3,'toyota corolla 1200')
,(25.0,4,140,'75.00',2542.0,17.0,74,1,'chevrolet vega')
,(16.0,6,250,'100.0',3781.0,17.0,74,1,'chevrolet chevelle malibu classic')
,(16.0,6,258,'110.0',3632.0,18.0,74,1,'amc matador')
,(18.0,6,225,'105.0',3613.0,16.5,74,1,'plymouth satellite sebring')
,(16.0,8,302,'140.0',4141.0,14.0,74,1,'ford gran torino')
,(13.0,8,350,'150.0',4699.0,14.5,74,1,'buick century luxus (sw)')
,(14.0,8,318,'150.0',4457.0,13.5,74,1,'dodge coronet custom (sw)')
,(14.0,8,302,'140.0',4638.0,16.0,74,1,'ford gran torino (sw)')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(14.0,8,304,'150.0',4257.0,15.5,74,1,'amc matador (sw)')
,(29.0,4,98,'83.00',2219.0,16.5,74,2,'audi fox')
,(26.0,4,79,'67.00',1963.0,15.5,74,2,'volkswagen dasher')
,(26.0,4,97,'78.00',2300.0,14.5,74,2,'opel manta')
,(31.0,4,76,'52.00',1649.0,16.5,74,3,'toyota corona')
,(32.0,4,83,'61.00',2003.0,19.0,74,3,'datsun 710')
,(28.0,4,90,'75.00',2125.0,14.5,74,1,'dodge colt')
,(24.0,4,90,'75.00',2108.0,15.5,74,2,'fiat 128')
,(26.0,4,116,'75.00',2246.0,14.0,74,2,'fiat 124 tc')
,(24.0,4,120,'97.00',2489.0,15.0,74,3,'honda civic')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(26.0,4,108,'93.00',2391.0,15.5,74,3,'subaru')
,(31.0,4,79,'67.00',2000.0,16.0,74,2,'fiat x1.9')
,(19.0,6,225,'95.00',3264.0,16.0,75,1,'plymouth valiant custom')
,(18.0,6,250,'105.0',3459.0,16.0,75,1,'chevrolet nova')
,(15.0,6,250,'72.00',3432.0,21.0,75,1,'mercury monarch')
,(15.0,6,250,'72.00',3158.0,19.5,75,1,'ford maverick')
,(16.0,8,400,'170.0',4668.0,11.5,75,1,'pontiac catalina')
,(15.0,8,350,'145.0',4440.0,14.0,75,1,'chevrolet bel air')
,(16.0,8,318,'150.0',4498.0,14.5,75,1,'plymouth grand fury')
,(14.0,8,351,'148.0',4657.0,13.5,75,1,'ford ltd')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(17.0,6,231,'110.0',3907.0,21.0,75,1,'buick century')
,(16.0,6,250,'105.0',3897.0,18.5,75,1,'chevroelt chevelle malibu')
,(15.0,6,258,'110.0',3730.0,19.0,75,1,'amc matador')
,(18.0,6,225,'95.00',3785.0,19.0,75,1,'plymouth fury')
,(21.0,6,231,'110.0',3039.0,15.0,75,1,'buick skyhawk')
,(20.0,8,262,'110.0',3221.0,13.5,75,1,'chevrolet monza 2+2')
,(13.0,8,302,'129.0',3169.0,12.0,75,1,'ford mustang ii')
,(29.0,4,97,'75.00',2171.0,16.0,75,3,'toyota corolla')
,(23.0,4,140,'83.00',2639.0,17.0,75,1,'ford pinto')
,(20.0,6,232,'100.0',2914.0,16.0,75,1,'amc gremlin')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(23.0,4,140,'78.00',2592.0,18.5,75,1,'pontiac astro')
,(24.0,4,134,'96.00',2702.0,13.5,75,3,'toyota corona')
,(25.0,4,90,'71.00',2223.0,16.5,75,2,'volkswagen dasher')
,(24.0,4,119,'97.00',2545.0,17.0,75,3,'datsun 710')
,(18.0,6,171,'97.00',2984.0,14.5,75,1,'ford pinto')
,(29.0,4,90,'70.00',1937.0,14.0,75,2,'volkswagen rabbit')
,(19.0,6,232,'90.00',3211.0,17.0,75,1,'amc pacer')
,(23.0,4,115,'95.00',2694.0,15.0,75,2,'audi 100ls')
,(23.0,4,120,'88.00',2957.0,17.0,75,2,'peugeot 504')
,(22.0,4,121,'98.00',2945.0,14.5,75,2,'volvo 244dl')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(25.0,4,121,'115.0',2671.0,13.5,75,2,'saab 99le')
,(33.0,4,91,'53.00',1795.0,17.5,75,3,'honda civic cvcc')
,(28.0,4,107,'86.00',2464.0,15.5,76,2,'fiat 131')
,(25.0,4,116,'81.00',2220.0,16.9,76,2,'opel 1900')
,(25.0,4,140,'92.00',2572.0,14.9,76,1,'capri ii')
,(26.0,4,98,'79.00',2255.0,17.7,76,1,'dodge colt')
,(27.0,4,101,'83.00',2202.0,15.3,76,2,'renault 12tl')
,(17.5,8,305,'140.0',4215.0,13.0,76,1,'chevrolet chevelle malibu classic')
,(16.0,8,318,'150.0',4190.0,13.0,76,1,'dodge coronet brougham')
,(15.5,8,304,'120.0',3962.0,13.9,76,1,'amc matador')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(14.5,8,351,'152.0',4215.0,12.8,76,1,'ford gran torino')
,(22.0,6,225,'100.0',3233.0,15.4,76,1,'plymouth valiant')
,(22.0,6,250,'105.0',3353.0,14.5,76,1,'chevrolet nova')
,(24.0,6,200,'81.00',3012.0,17.6,76,1,'ford maverick')
,(22.5,6,232,'90.00',3085.0,17.6,76,1,'amc hornet')
,(29.0,4,85,'52.00',2035.0,22.2,76,1,'chevrolet chevette')
,(24.5,4,98,'60.00',2164.0,22.1,76,1,'chevrolet woody')
,(29.0,4,90,'70.00',1937.0,14.2,76,2,'vw rabbit')
,(33.0,4,91,'53.00',1795.0,17.4,76,3,'honda civic')
,(20.0,6,225,'100.0',3651.0,17.7,76,1,'dodge aspen se')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(18.0,6,250,'78.00',3574.0,21.0,76,1,'ford granada ghia')
,(18.5,6,250,'110.0',3645.0,16.2,76,1,'pontiac ventura sj')
,(17.5,6,258,'95.00',3193.0,17.8,76,1,'amc pacer d/l')
,(29.5,4,97,'71.00',1825.0,12.2,76,2,'volkswagen rabbit')
,(32.0,4,85,'70.00',1990.0,17.0,76,3,'datsun b-210')
,(28.0,4,97,'75.00',2155.0,16.4,76,3,'toyota corolla')
,(26.5,4,140,'72.00',2565.0,13.6,76,1,'ford pinto')
,(20.0,4,130,'102.0',3150.0,15.7,76,2,'volvo 245')
,(13.0,8,318,'150.0',3940.0,13.2,76,1,'plymouth volare premier v8')
,(19.0,4,120,'88.00',3270.0,21.9,76,2,'peugeot 504')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(19.0,6,156,'108.0',2930.0,15.5,76,3,'toyota mark ii')
,(16.5,6,168,'120.0',3820.0,16.7,76,2,'mercedes-benz 280s')
,(16.5,8,350,'180.0',4380.0,12.1,76,1,'cadillac seville')
,(13.0,8,350,'145.0',4055.0,12.0,76,1,'chevy c10')
,(13.0,8,302,'130.0',3870.0,15.0,76,1,'ford f108')
,(13.0,8,318,'150.0',3755.0,14.0,76,1,'dodge d100')
,(31.5,4,98,'68.00',2045.0,18.5,77,3,'honda accord cvcc')
,(30.0,4,111,'80.00',2155.0,14.8,77,1,'buick opel isuzu deluxe')
,(36.0,4,79,'58.00',1825.0,18.6,77,2,'renault 5 gtl')
,(25.5,4,122,'96.00',2300.0,15.5,77,1,'plymouth arrow gs')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(33.5,4,85,'70.00',1945.0,16.8,77,3,'datsun f-10 hatchback')
,(17.5,8,305,'145.0',3880.0,12.5,77,1,'chevrolet caprice classic')
,(17.0,8,260,'110.0',4060.0,19.0,77,1,'oldsmobile cutlass supreme')
,(15.5,8,318,'145.0',4140.0,13.7,77,1,'dodge monaco brougham')
,(15.0,8,302,'130.0',4295.0,14.9,77,1,'mercury cougar brougham')
,(17.5,6,250,'110.0',3520.0,16.4,77,1,'chevrolet concours')
,(20.5,6,231,'105.0',3425.0,16.9,77,1,'buick skylark')
,(19.0,6,225,'100.0',3630.0,17.7,77,1,'plymouth volare custom')
,(18.5,6,250,'98.00',3525.0,19.0,77,1,'ford granada')
,(16.0,8,400,'180.0',4220.0,11.1,77,1,'pontiac grand prix lj')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(15.5,8,350,'170.0',4165.0,11.4,77,1,'chevrolet monte carlo landau')
,(15.5,8,400,'190.0',4325.0,12.2,77,1,'chrysler cordoba')
,(16.0,8,351,'149.0',4335.0,14.5,77,1,'ford thunderbird')
,(29.0,4,97,'78.00',1940.0,14.5,77,2,'volkswagen rabbit custom')
,(24.5,4,151,'88.00',2740.0,16.0,77,1,'pontiac sunbird coupe')
,(26.0,4,97,'75.00',2265.0,18.2,77,3,'toyota corolla liftback')
,(25.5,4,140,'89.00',2755.0,15.8,77,1,'ford mustang ii 2+2')
,(30.5,4,98,'63.00',2051.0,17.0,77,1,'chevrolet chevette')
,(33.5,4,98,'83.00',2075.0,15.9,77,1,'dodge colt m/m')
,(30.0,4,97,'67.00',1985.0,16.4,77,3,'subaru dl')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(30.5,4,97,'78.00',2190.0,14.1,77,2,'volkswagen dasher')
,(22.0,6,146,'97.00',2815.0,14.5,77,3,'datsun 810')
,(21.5,4,121,'110.0',2600.0,12.8,77,2,'bmw 320i')
,(21.5,3,80,'110.0',2720.0,13.5,77,3,'mazda rx-4')
,(43.1,4,90,'48.00',1985.0,21.5,78,2,'volkswagen rabbit custom diesel')
,(36.1,4,98,'66.00',1800.0,14.4,78,1,'ford fiesta')
,(32.8,4,78,'52.00',1985.0,19.4,78,3,'mazda glc deluxe')
,(39.4,4,85,'70.00',2070.0,18.6,78,3,'datsun b210 gx')
,(36.1,4,91,'60.00',1800.0,16.4,78,3,'honda civic cvcc')
,(19.9,8,260,'110.0',3365.0,15.5,78,1,'oldsmobile cutlass salon brougham')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(19.4,8,318,'140.0',3735.0,13.2,78,1,'dodge diplomat')
,(20.2,8,302,'139.0',3570.0,12.8,78,1,'mercury monarch ghia')
,(19.2,6,231,'105.0',3535.0,19.2,78,1,'pontiac phoenix lj')
,(20.5,6,200,'95.00',3155.0,18.2,78,1,'chevrolet malibu')
,(20.2,6,200,'85.00',2965.0,15.8,78,1,'ford fairmont (auto)')
,(25.1,4,140,'88.00',2720.0,15.4,78,1,'ford fairmont (man)')
,(20.5,6,225,'100.0',3430.0,17.2,78,1,'plymouth volare')
,(19.4,6,232,'90.00',3210.0,17.2,78,1,'amc concord')
,(20.6,6,231,'105.0',3380.0,15.8,78,1,'buick century special')
,(20.8,6,200,'85.00',3070.0,16.7,78,1,'mercury zephyr')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(18.6,6,225,'110.0',3620.0,18.7,78,1,'dodge aspen')
,(18.1,6,258,'120.0',3410.0,15.1,78,1,'amc concord d/l')
,(19.2,8,305,'145.0',3425.0,13.2,78,1,'chevrolet monte carlo landau')
,(17.7,6,231,'165.0',3445.0,13.4,78,1,'buick regal sport coupe (turbo)')
,(18.1,8,302,'139.0',3205.0,11.2,78,1,'ford futura')
,(17.5,8,318,'140.0',4080.0,13.7,78,1,'dodge magnum xe')
,(30.0,4,98,'68.00',2155.0,16.5,78,1,'chevrolet chevette')
,(27.5,4,134,'95.00',2560.0,14.2,78,3,'toyota corona')
,(27.2,4,119,'97.00',2300.0,14.7,78,3,'datsun 510')
,(30.9,4,105,'75.00',2230.0,14.5,78,1,'dodge omni')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(21.1,4,134,'95.00',2515.0,14.8,78,3,'toyota celica gt liftback')
,(23.2,4,156,'105.0',2745.0,16.7,78,1,'plymouth sapporo')
,(23.8,4,151,'85.00',2855.0,17.6,78,1,'oldsmobile starfire sx')
,(23.9,4,119,'97.00',2405.0,14.9,78,3,'datsun 200-sx')
,(20.3,5,131,'103.0',2830.0,15.9,78,2,'audi 5000')
,(17.0,6,163,'125.0',3140.0,13.6,78,2,'volvo 264gl')
,(21.6,4,121,'115.0',2795.0,15.7,78,2,'saab 99gle')
,(16.2,6,163,'133.0',3410.0,15.8,78,2,'peugeot 604sl')
,(31.5,4,89,'71.00',1990.0,14.9,78,2,'volkswagen scirocco')
,(29.5,4,98,'68.00',2135.0,16.6,78,3,'honda accord lx')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(21.5,6,231,'115.0',3245.0,15.4,79,1,'pontiac lemans v6')
,(19.8,6,200,'85.00',2990.0,18.2,79,1,'mercury zephyr 6')
,(22.3,4,140,'88.00',2890.0,17.3,79,1,'ford fairmont 4')
,(20.2,6,232,'90.00',3265.0,18.2,79,1,'amc concord dl 6')
,(20.6,6,225,'110.0',3360.0,16.6,79,1,'dodge aspen 6')
,(17.0,8,305,'130.0',3840.0,15.4,79,1,'chevrolet caprice classic')
,(17.6,8,302,'129.0',3725.0,13.4,79,1,'ford ltd landau')
,(16.5,8,351,'138.0',3955.0,13.2,79,1,'mercury grand marquis')
,(18.2,8,318,'135.0',3830.0,15.2,79,1,'dodge st. regis')
,(16.9,8,350,'155.0',4360.0,14.9,79,1,'buick estate wagon (sw)')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(15.5,8,351,'142.0',4054.0,14.3,79,1,'ford country squire (sw)')
,(19.2,8,267,'125.0',3605.0,15.0,79,1,'chevrolet malibu classic (sw)')
,(18.5,8,360,'150.0',3940.0,13.0,79,1,'chrysler lebaron town @ country (sw)')
,(31.9,4,89,'71.00',1925.0,14.0,79,2,'vw rabbit custom')
,(34.1,4,86,'65.00',1975.0,15.2,79,3,'maxda glc deluxe')
,(35.7,4,98,'80.00',1915.0,14.4,79,1,'dodge colt hatchback custom')
,(27.4,4,121,'80.00',2670.0,15.0,79,1,'amc spirit dl')
,(25.4,5,183,'77.00',3530.0,20.1,79,2,'mercedes benz 300d')
,(23.0,8,350,'125.0',3900.0,17.4,79,1,'cadillac eldorado')
,(27.2,4,141,'71.00',3190.0,24.8,79,2,'peugeot 504')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(23.9,8,260,'90.00',3420.0,22.2,79,1,'oldsmobile cutlass salon brougham')
,(34.2,4,105,'70.00',2200.0,13.2,79,1,'plymouth horizon')
,(34.5,4,105,'70.00',2150.0,14.9,79,1,'plymouth horizon tc3')
,(31.8,4,85,'65.00',2020.0,19.2,79,3,'datsun 210')
,(37.3,4,91,'69.00',2130.0,14.7,79,2,'fiat strada custom')
,(28.4,4,151,'90.00',2670.0,16.0,79,1,'buick skylark limited')
,(28.8,6,173,'115.0',2595.0,11.3,79,1,'chevrolet citation')
,(26.8,6,173,'115.0',2700.0,12.9,79,1,'oldsmobile omega brougham')
,(33.5,4,151,'90.00',2556.0,13.2,79,1,'pontiac phoenix')
,(41.5,4,98,'76.00',2144.0,14.7,80,2,'vw rabbit')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(38.1,4,89,'60.00',1968.0,18.8,80,3,'toyota corolla tercel')
,(32.1,4,98,'70.00',2120.0,15.5,80,1,'chevrolet chevette')
,(37.2,4,86,'65.00',2019.0,16.4,80,3,'datsun 310')
,(28.0,4,151,'90.00',2678.0,16.5,80,1,'chevrolet citation')
,(26.4,4,140,'88.00',2870.0,18.1,80,1,'ford fairmont')
,(24.3,4,151,'90.00',3003.0,20.1,80,1,'amc concord')
,(19.1,6,225,'90.00',3381.0,18.7,80,1,'dodge aspen')
,(34.3,4,97,'78.00',2188.0,15.8,80,2,'audi 4000')
,(29.8,4,134,'90.00',2711.0,15.5,80,3,'toyota corona liftback')
,(31.3,4,120,'75.00',2542.0,17.5,80,3,'mazda 626')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(37.0,4,119,'92.00',2434.0,15.0,80,3,'datsun 510 hatchback')
,(32.2,4,108,'75.00',2265.0,15.2,80,3,'toyota corolla')
,(46.6,4,86,'65.00',2110.0,17.9,80,3,'mazda glc')
,(27.9,4,156,'105.0',2800.0,14.4,80,1,'dodge colt')
,(40.8,4,85,'65.00',2110.0,19.2,80,3,'datsun 210')
,(44.3,4,90,'48.00',2085.0,21.7,80,2,'vw rabbit c (diesel)')
,(43.4,4,90,'48.00',2335.0,23.7,80,2,'vw dasher (diesel)')
,(36.4,5,121,'67.00',2950.0,19.9,80,2,'audi 5000s (diesel)')
,(30.0,4,146,'67.00',3250.0,21.8,80,2,'mercedes-benz 240d')
,(44.6,4,91,'67.00',1850.0,13.8,80,3,'honda civic 1500 gl')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(40.9,4,85,'?',1835.0,17.3,80,2,'renault lecar deluxe')
,(33.8,4,97,'67.00',2145.0,18.0,80,3,'subaru dl')
,(29.8,4,89,'62.00',1845.0,15.3,80,2,'vokswagen rabbit')
,(32.7,6,168,'132.0',2910.0,11.4,80,3,'datsun 280-zx')
,(23.7,3,70,'100.0',2420.0,12.5,80,3,'mazda rx-7 gs')
,(35.0,4,122,'88.00',2500.0,15.1,80,2,'triumph tr7 coupe')
,(23.6,4,140,'?',2905.0,14.3,80,1,'ford mustang cobra')
,(32.4,4,107,'72.00',2290.0,17.0,80,3,'honda accord')
,(27.2,4,135,'84.00',2490.0,15.7,81,1,'plymouth reliant')
,(26.6,4,151,'84.00',2635.0,16.4,81,1,'buick skylark')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(25.8,4,156,'92.00',2620.0,14.4,81,1,'dodge aries wagon (sw)')
,(23.5,6,173,'110.0',2725.0,12.6,81,1,'chevrolet citation')
,(30.0,4,135,'84.00',2385.0,12.9,81,1,'plymouth reliant')
,(39.1,4,79,'58.00',1755.0,16.9,81,3,'toyota starlet')
,(39.0,4,86,'64.00',1875.0,16.4,81,1,'plymouth champ')
,(35.1,4,81,'60.00',1760.0,16.1,81,3,'honda civic 1300')
,(32.3,4,97,'67.00',2065.0,17.8,81,3,'subaru')
,(37.0,4,85,'65.00',1975.0,19.4,81,3,'datsun 210 mpg')
,(37.7,4,89,'62.00',2050.0,17.3,81,3,'toyota tercel')
,(34.1,4,91,'68.00',1985.0,16.0,81,3,'mazda glc 4')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(34.7,4,105,'63.00',2215.0,14.9,81,1,'plymouth horizon 4')
,(34.4,4,98,'65.00',2045.0,16.2,81,1,'ford escort 4w')
,(29.9,4,98,'65.00',2380.0,20.7,81,1,'ford escort 2h')
,(33.0,4,105,'74.00',2190.0,14.2,81,2,'volkswagen jetta')
,(34.5,4,100,'?',2320.0,15.8,81,2,'renault 18i')
,(33.7,4,107,'75.00',2210.0,14.4,81,3,'honda prelude')
,(32.4,4,108,'75.00',2350.0,16.8,81,3,'toyota corolla')
,(32.9,4,119,'100.0',2615.0,14.8,81,3,'datsun 200sx')
,(31.6,4,120,'74.00',2635.0,18.3,81,3,'mazda 626')
,(28.1,4,141,'80.00',3230.0,20.4,81,2,'peugeot 505s turbo diesel')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(30.7,6,145,'76.00',3160.0,19.6,81,2,'volvo diesel')
,(25.4,6,168,'116.0',2900.0,12.6,81,3,'toyota cressida')
,(24.2,6,146,'120.0',2930.0,13.8,81,3,'datsun 810 maxima')
,(22.4,6,231,'110.0',3415.0,15.8,81,1,'buick century')
,(26.6,8,350,'105.0',3725.0,19.0,81,1,'oldsmobile cutlass ls')
,(20.2,6,200,'88.00',3060.0,17.1,81,1,'ford granada gl')
,(17.6,6,225,'85.00',3465.0,16.6,81,1,'chrysler lebaron salon')
,(28.0,4,112,'88.00',2605.0,19.6,82,1,'chevrolet cavalier')
,(27.0,4,112,'88.00',2640.0,18.6,82,1,'chevrolet cavalier wagon')
,(34.0,4,112,'88.00',2395.0,18.0,82,1,'chevrolet cavalier 2-door')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(31.0,4,112,'85.00',2575.0,16.2,82,1,'pontiac j2000 se hatchback')
,(29.0,4,135,'84.00',2525.0,16.0,82,1,'dodge aries se')
,(27.0,4,151,'90.00',2735.0,18.0,82,1,'pontiac phoenix')
,(24.0,4,140,'92.00',2865.0,16.4,82,1,'ford fairmont futura')
,(23.0,4,151,'?',3035.0,20.5,82,1,'amc concord dl')
,(36.0,4,105,'74.00',1980.0,15.3,82,2,'volkswagen rabbit l')
,(37.0,4,91,'68.00',2025.0,18.2,82,3,'mazda glc custom l')
,(31.0,4,91,'68.00',1970.0,17.6,82,3,'mazda glc custom')
,(38.0,4,105,'63.00',2125.0,14.7,82,1,'plymouth horizon miser')
,(36.0,4,98,'70.00',2125.0,17.3,82,1,'mercury lynx l')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(36.0,4,120,'88.00',2160.0,14.5,82,3,'nissan stanza xe')
,(36.0,4,107,'75.00',2205.0,14.5,82,3,'honda accord')
,(34.0,4,108,'70.00',2245.0,16.9,82,3,'toyota corolla')
,(38.0,4,91,'67.00',1965.0,15.0,82,3,'honda civic')
,(32.0,4,91,'67.00',1965.0,15.7,82,3,'honda civic (auto)')
,(38.0,4,91,'67.00',1995.0,16.2,82,3,'datsun 310 gx')
,(25.0,6,181,'110.0',2945.0,16.4,82,1,'buick century limited')
,(38.0,6,262,'85.00',3015.0,17.0,82,1,'oldsmobile cutlass ciera (diesel)')
,(26.0,4,156,'92.00',2585.0,14.5,82,1,'chrysler lebaron medallion')
,(22.0,6,232,'112.0',2835.0,14.7,82,1,'ford granada l')
;
INSERT INTO rmaria.autompg (mpg,cylinders,displacement,horsepower,weight,acceleration,`year`,origin,name) VALUES 
(32.0,4,144,'96.00',2665.0,13.9,82,3,'toyota celica gt')
,(36.0,4,135,'84.00',2370.0,13.0,82,1,'dodge charger 2.2')
,(27.0,4,151,'90.00',2950.0,17.3,82,1,'chevrolet camaro')
,(27.0,4,140,'86.00',2790.0,15.6,82,1,'ford mustang gl')
,(44.0,4,97,'52.00',2130.0,24.6,82,2,'vw pickup')
,(32.0,4,135,'84.00',2295.0,11.6,82,1,'dodge rampage')
,(28.0,4,120,'79.00',2625.0,18.6,82,1,'ford ranger')
,(31.0,4,119,'82.00',2720.0,19.4,82,1,'chevy s-10')
;
