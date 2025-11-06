-- ============================================
-- INSERT SAMPLE DATA
-- ============================================
 
-- Cities
INSERT INTO cities VALUES (1, 'Warsaw', 'Poland');
INSERT INTO cities VALUES (2, 'Krakow', 'Poland');
INSERT INTO cities VALUES (3, 'Wroclaw', 'Poland');
INSERT INTO cities VALUES (4, 'Gdansk', 'Poland');
INSERT INTO cities VALUES (5, 'Poznan', 'Poland');
INSERT INTO cities VALUES (6, 'Lodz', 'Poland');
 
-- Manufacturers (include Toyota and other makes for
comparison)
INSERT INTO manufacturers VALUES (1, 'Toyota', 'Japan');
INSERT INTO manufacturers VALUES (2, 'Honda', 'Japan');
INSERT INTO manufacturers VALUES (3, 'Volkswagen',
'Germany');
INSERT INTO manufacturers VALUES (4, 'BMW', 'Germany');
INSERT INTO manufacturers VALUES (5, 'Ford', 'USA');
INSERT INTO manufacturers VALUES (6, 'Hyundai', 'South
Korea');
 
-- Models (a mix; focus on Toyota models and competitors)
INSERT INTO models VALUES (1, 1, 'Corolla', 'Sedan',
'Petrol', 85000);
INSERT INTO models VALUES (2, 1, 'RAV4', 'SUV', 'Hybrid',
150000);
INSERT INTO models VALUES (3, 1, 'Camry', 'Sedan', 'Hybrid',
170000);
INSERT INTO models VALUES (4, 1, 'C-HR', 'Crossover',
'Hybrid', 140000);
INSERT INTO models VALUES (5, 1, 'Prius', 'Hatchback',
'Hybrid', 130000);
INSERT INTO models VALUES (6, 2, 'Civic', 'Sedan', 'Petrol',
90000);
INSERT INTO models VALUES (7, 3, 'Golf', 'Hatchback',
'Diesel', 95000);
INSERT INTO models VALUES (8, 4, 'X3', 'SUV', 'Petrol',
220000);
INSERT INTO models VALUES (9, 5, 'Focus', 'Hatchback',
'Petrol', 80000);
INSERT INTO models VALUES (10, 6, 'Tucson', 'SUV', 'Petrol',
120000);
INSERT INTO models VALUES (11, 1, 'Yaris', 'Hatchback',
'Petrol', 70000);
INSERT INTO models VALUES (12, 1, 'Land Cruiser', 'SUV',
'Diesel', 300000);
 
-- Vehicles (VIN-level stock; mix of years/colors/mileages)
INSERT INTO vehicles VALUES (1, 'JTDBR32E520012345', 1,
2022, 'White', 12000, 'available');
INSERT INTO vehicles VALUES (2, 'JTDBR32E520012346', 1,
2021, 'Black', 24000, 'available');
INSERT INTO vehicles VALUES (3, 'JTMBR32E330112347', 2,
2023, 'Silver', 8000, 'available');
INSERT INTO vehicles VALUES (4, 'JTMBR32E330112348', 2,
2022, 'Blue', 15000, 'sold');
INSERT INTO vehicles VALUES (5, '4T1BG22K1WU012349', 3,
2020, 'Grey', 40000, 'sold');
INSERT INTO vehicles VALUES (6, 'JTNBB46K873005001', 5,
2019, 'Red', 56000, 'available');
INSERT INTO vehicles VALUES (7, '1HGCM82633A004352', 6,
2021, 'White', 22000, 'available');
INSERT INTO vehicles VALUES (8, 'WVWZZZ1JZXW000001', 7,
2019, 'Black', 45000, 'available');
INSERT INTO vehicles VALUES (9, 'WBA3A5C58CF123456', 8,
2021, 'White', 30000, 'available');
INSERT INTO vehicles VALUES (10, '1FADP3F2XEL123457', 9,
2020, 'Blue', 35000, 'available');
INSERT INTO vehicles VALUES (11, 'KM8J3CA45NU123458', 10,
2022, 'Grey', 9000, 'available');
INSERT INTO vehicles VALUES (12, 'JTDBR32E520012350', 1,
2024, 'Red', 5000, 'available');
INSERT INTO vehicles VALUES (13, 'JTDBR32E520012351', 11,
2023, 'Green', 3000, 'available');
INSERT INTO vehicles VALUES (14, 'JTDBR32E520012352', 4,
2022, 'Black', 18000, 'sold');
INSERT INTO vehicles VALUES (15, 'JTDBR32E520012353', 12,
2018, 'White', 80000, 'sold');
INSERT INTO vehicles VALUES (16, 'JTDBR32E520012354', 2,
2020, 'Black', 40000, 'available');
INSERT INTO vehicles VALUES (17, 'JTDBR32E520012355', 3,
2021, 'White', 25000, 'available');
INSERT INTO vehicles VALUES (18, 'JTDBR32E520012356', 4,
2024, 'Blue', 1000, 'available');
INSERT INTO vehicles VALUES (19, 'JTDBR32E520012357', 5,
2021, 'Silver', 23000, 'available');
INSERT INTO vehicles VALUES (20, 'JTDBR32E520012358', 2,
2023, 'White', 6000, 'available');
INSERT INTO vehicles VALUES (21, 'JTDBR32E520012359', 1,
2020, 'Grey', 45000, 'sold');
INSERT INTO vehicles VALUES (22, 'JTDBR32E520012360', 11,
2020, 'Blue', 47000, 'available');
INSERT INTO vehicles VALUES (23, 'JTDBR32E520012361', 9,
2018, 'Black', 90000, 'available');
INSERT INTO vehicles VALUES (24, 'JTDBR32E520012362', 2,
2024, 'Green', 200, 'available');
INSERT INTO vehicles VALUES (25, 'JTDBR32E520012363', 1,
2019, 'White', 62000, 'available');
INSERT INTO vehicles VALUES (26, 'JTDBR32E520012364', 3,
2018, 'Red', 78000, 'sold');
INSERT INTO vehicles VALUES (27, 'JTDBR32E520012365', 4,
2021, 'Silver', 21000, 'available');
INSERT INTO vehicles VALUES (28, 'JTDBR32E520012366', 2,
2022, 'White', 17000, 'available');
INSERT INTO vehicles VALUES (29, 'JTDBR32E520012367', 12,
2016, 'Black', 120000, 'available');
INSERT INTO vehicles VALUES (30, 'JTDBR32E520012368', 1,
2023, 'Blue', 7000, 'available');
 
-- Dealerships
INSERT INTO dealerships VALUES (1, 'Warsaw Toyota Center',
1, 'ul. Krakowskie Przedmieście 12', '+48 22 111 0001');
INSERT INTO dealerships VALUES (2, 'Krakow Auto Mall', 2,
'ul. Floriańska 45', '+48 12 222 0002');
INSERT INTO dealerships VALUES (3, 'Wroclaw Motors', 3, 'ul.
Piłsudskiego 7', '+48 71 333 0003');
INSERT INTO dealerships VALUES (4, 'Gdansk Auto', 4, 'ul.
Długa 20', '+48 58 444 0004');
INSERT INTO dealerships VALUES (5, 'Poznan Cars', 5, 'ul.
Stary Rynek 3', '+48 61 555 0005');
INSERT INTO dealerships VALUES (6, 'Lodz Motors', 6, 'ul.
Piotrkowska 100', '+48 42 666 0006');
INSERT INTO dealerships VALUES (7, 'Warsaw Premium Autos',
1, 'ul. Nowy Świat 50', '+48 22 777 0007');
INSERT INTO dealerships VALUES (8, 'Toyota Central
Warehouse', 1, 'ul. Przemysłowa 8', '+48 22 888 0008');
 
-- Sales Representatives
INSERT INTO sales_reps VALUES (1, 'Piotr', 'Nowak', 1,
TO_DATE('2019-03-15','YYYY-MM-DD'));
INSERT INTO sales_reps VALUES (2, 'Anna', 'Kowalczyk', 1,
TO_DATE('2020-06-01','YYYY-MM-DD'));
INSERT INTO sales_reps VALUES (3, 'Marcin', 'Wiśniewski', 2,
TO_DATE('2018-11-05','YYYY-MM-DD'));
INSERT INTO sales_reps VALUES (4, 'Katarzyna', 'Wójcik', 3,
TO_DATE('2021-01-10','YYYY-MM-DD'));
INSERT INTO sales_reps VALUES (5, 'Tomasz', 'Zieliński', 4,
TO_DATE('2017-09-20','YYYY-MM-DD'));
INSERT INTO sales_reps VALUES (6, 'Marta', 'Kozłowska', 5,
TO_DATE('2022-02-14','YYYY-MM-DD'));
INSERT INTO sales_reps VALUES (7, 'Adam', 'Sikora', 6,
TO_DATE('2016-05-02','YYYY-MM-DD'));
INSERT INTO sales_reps VALUES (8, 'Ewa', 'Mazur', 7,
TO_DATE('2021-07-01','YYYY-MM-DD'));
INSERT INTO sales_reps VALUES (9, 'Piotr', 'Górski', 8,
TO_DATE('2020-10-10','YYYY-MM-DD'));
INSERT INTO sales_reps VALUES (10, 'Aneta', 'Lis', 1,
TO_DATE('2023-04-01','YYYY-MM-DD'));
 
-- Customers
INSERT INTO customers VALUES (1, 'Jakub', 'Lewandowski',
'jakub.lewandowski@example.com', '48500111222', 1);
INSERT INTO customers VALUES (2, 'Marta', 'Zalewska',
'marta.zalewska@example.com', '48500555444', 2);
INSERT INTO customers VALUES (3, 'Piotr', 'Kaczmarek',
'piotr.k@example.com', '48500666777', 1);
INSERT INTO customers VALUES (4, 'Anna', 'Szymańska',
'anna.s@example.com', '48500999000', 3);
INSERT INTO customers VALUES (5, 'Kamil', 'Duda',
'kamil.duda@example.com', '48500223344', 4);
INSERT INTO customers VALUES (6, 'Ola', 'Kowalska',
'ola.k@example.com', '48500888777', 5);
INSERT INTO customers VALUES (7, 'Bartek', 'Nowicki',
'bartek.n@example.com', '48500777666', 1);
INSERT INTO customers VALUES (8, 'Zofia', 'Kamińska',
'zofia.k@example.com', '48500333555', 2);
INSERT INTO customers VALUES (9, 'Marek', 'Wojciechowski',
'marek.w@example.com', '48500444666', 3);
INSERT INTO customers VALUES (10, 'Patrycja', 'Mazur',
'patrycja.m@example.com', '48500222444', 1);
INSERT INTO customers VALUES (11, 'Andrzej', 'Gorski',
'andrzej.g@example.com', '48500111333', 4);
INSERT INTO customers VALUES (12, 'Ewa', 'Kowal',
'ewa.k@example.com', '48500666555', 5);
INSERT INTO customers VALUES (13, 'Tomasz', 'Zielinski',
'tomasz.z@example.com', '48500555111', 1);
INSERT INTO customers VALUES (14, 'Magdalena', 'Baran',
'magda.b@example.com', '48500000011', 2);
INSERT INTO customers VALUES (15, 'Łukasz', 'Sokół',
'lukasz.s@example.com', '48500999111', 6);
INSERT INTO customers VALUES (16, 'Natalia', 'Nowak',
'natalia.n@example.com', '48500888000', 1);
INSERT INTO customers VALUES (17, 'Jakub', 'Wesoły',
'jakub.w@example.com', '48500222000', 2);
INSERT INTO customers VALUES (18, 'Paulina', 'Sikorska',
'paulina.s@example.com', '48500333000', 3);
INSERT INTO customers VALUES (19, 'Michał', 'Czarnecki',
'michal.c@example.com', '48500444000', 5);
INSERT INTO customers VALUES (20, 'Katarzyna', 'Pawlak',
'katarzyna.p@example.com', '48500111000', 1);
INSERT INTO customers VALUES (21, 'Robert', 'Lew',
'robert.l@example.com', '48500222255', 1);
INSERT INTO customers VALUES (22, 'Sylwia', 'Mak',
'sylwia.m@example.com', '48500222999', 3);
INSERT INTO customers VALUES (23, 'Daniel', 'Malinowski',
'daniel.m@example.com', '48500333888', 4);
INSERT INTO customers VALUES (24, 'Agnieszka', 'Ostrowska',
'agnieszka.o@example.com', '48500444777', 2);
INSERT INTO customers VALUES (25, 'Grzegorz', 'Kubiak',
'grzegorz.k@example.com', '48500555999', 6);
 
-- Inventory (which vehicles are present at which
dealership)
INSERT INTO inventory VALUES (1, 1, 1,
TO_DATE('2022-01-10','YYYY-MM-DD'));
INSERT INTO inventory VALUES (2, 1, 2,
TO_DATE('2021-06-20','YYYY-MM-DD'));
INSERT INTO inventory VALUES (3, 1, 12,
TO_DATE('2024-02-05','YYYY-MM-DD'));
INSERT INTO inventory VALUES (4, 2, 3,
TO_DATE('2023-04-01','YYYY-MM-DD'));
INSERT INTO inventory VALUES (5, 2, 4,
TO_DATE('2022-08-10','YYYY-MM-DD'));
INSERT INTO inventory VALUES (6, 3, 7,
TO_DATE('2021-07-07','YYYY-MM-DD'));
INSERT INTO inventory VALUES (7, 4, 5,
TO_DATE('2020-09-09','YYYY-MM-DD'));
INSERT INTO inventory VALUES (8, 5, 6,
TO_DATE('2019-05-20','YYYY-MM-DD'));
INSERT INTO inventory VALUES (9, 6, 8,
TO_DATE('2019-12-12','YYYY-MM-DD'));
INSERT INTO inventory VALUES (10, 1, 13,
TO_DATE('2023-11-01','YYYY-MM-DD'));
INSERT INTO inventory VALUES (11, 7, 30,
TO_DATE('2023-03-05','YYYY-MM-DD'));
INSERT INTO inventory VALUES (12, 8, 28,
TO_DATE('2024-04-14','YYYY-MM-DD'));
INSERT INTO inventory VALUES (13, 1, 21,
TO_DATE('2020-02-20','YYYY-MM-DD'));
INSERT INTO inventory VALUES (14, 4, 15,
TO_DATE('2018-06-15','YYYY-MM-DD'));
INSERT INTO inventory VALUES (15, 1, 11,
TO_DATE('2022-10-10','YYYY-MM-DD'));
INSERT INTO inventory VALUES (16, 2, 16,
TO_DATE('2020-10-12','YYYY-MM-DD'));
INSERT INTO inventory VALUES (17, 2, 17,
TO_DATE('2021-02-01','YYYY-MM-DD'));
INSERT INTO inventory VALUES (18, 1, 18,
TO_DATE('2024-09-01','YYYY-MM-DD'));
INSERT INTO inventory VALUES (19, 3, 19,
TO_DATE('2021-04-01','YYYY-MM-DD'));
INSERT INTO inventory VALUES (20, 5, 20,
TO_DATE('2023-12-12','YYYY-MM-DD'));
INSERT INTO inventory VALUES (21, 6, 22,
TO_DATE('2020-08-08','YYYY-MM-DD'));
INSERT INTO inventory VALUES (22, 7, 23,
TO_DATE('2018-09-09','YYYY-MM-DD'));
INSERT INTO inventory VALUES (23, 8, 24,
TO_DATE('2024-10-01','YYYY-MM-DD'));
INSERT INTO inventory VALUES (24, 1, 25,
TO_DATE('2019-11-11','YYYY-MM-DD'));
INSERT INTO inventory VALUES (25, 2, 26,
TO_DATE('2018-03-03','YYYY-MM-DD'));
INSERT INTO inventory VALUES (26, 4, 27,
TO_DATE('2021-05-05','YYYY-MM-DD'));
INSERT INTO inventory VALUES (27, 5, 29,
TO_DATE('2016-07-07','YYYY-MM-DD'));
INSERT INTO inventory VALUES (28, 1, 30,
TO_DATE('2023-01-01','YYYY-MM-DD'));
 
-- Features
INSERT INTO features VALUES (1, 'Sunroof', 'Comfort');
INSERT INTO features VALUES (2, 'Leather Seats', 'Comfort');
INSERT INTO features VALUES (3, 'Parking Sensors',
'Safety');
INSERT INTO features VALUES (4, 'Adaptive Cruise Control',
'Safety');
INSERT INTO features VALUES (5, 'Apple CarPlay',
'Infotainment');
INSERT INTO features VALUES (6, 'Android Auto',
'Infotainment');
INSERT INTO features VALUES (7, 'Alloy Wheels', 'Style');
INSERT INTO features VALUES (8, 'Heated Seats', 'Comfort');
 
-- Vehicle features (some assignments)
INSERT INTO vehicle_features VALUES (1, 3);
INSERT INTO vehicle_features VALUES (1, 5);
INSERT INTO vehicle_features VALUES (2, 3);
INSERT INTO vehicle_features VALUES (3, 4);
INSERT INTO vehicle_features VALUES (3, 5);
INSERT INTO vehicle_features VALUES (4, 4);
INSERT INTO vehicle_features VALUES (5, 2);
INSERT INTO vehicle_features VALUES (6, 7);
INSERT INTO vehicle_features VALUES (7, 5);
INSERT INTO vehicle_features VALUES (8, 3);
INSERT INTO vehicle_features VALUES (9, 4);
INSERT INTO vehicle_features VALUES (10, 6);
INSERT INTO vehicle_features VALUES (11, 1);
INSERT INTO vehicle_features VALUES (12, 2);
INSERT INTO vehicle_features VALUES (13, 5);
INSERT INTO vehicle_features VALUES (14, 3);
INSERT INTO vehicle_features VALUES (18, 8);
INSERT INTO vehicle_features VALUES (20, 4);
INSERT INTO vehicle_features VALUES (24, 3);
INSERT INTO vehicle_features VALUES (30, 7);
 
-- Sales (transactions) -- include sold vehicles and varied
dates/prices
INSERT INTO sales VALUES (1, 4, 1, 3, 2,
TO_DATE('2023-05-15','YYYY-MM-DD'), 155000, 'cash');
INSERT INTO sales VALUES (2, 5, 2, 5, 4,
TO_DATE('2022-11-20','YYYY-MM-DD'), 172000, 'finance');
INSERT INTO sales VALUES (3, 15, 3, 7, 4,
TO_DATE('2021-06-30','YYYY-MM-DD'), 295000, 'cash');
INSERT INTO sales VALUES (4, 21, 7, 1, 1,
TO_DATE('2020-02-20','YYYY-MM-DD'), 82000, 'finance');
INSERT INTO sales VALUES (5, 26, 8, 2, 2,
TO_DATE('2019-03-12','YYYY-MM-DD'), 90000, 'cash');
INSERT INTO sales VALUES (6, 14, 9, 4, 3,
TO_DATE('2022-12-05','YYYY-MM-DD'), 140000, 'lease');
INSERT INTO sales VALUES (7, 15, 10, 5, 4,
TO_DATE('2018-07-11','YYYY-MM-DD'), 300000, 'cash');
INSERT INTO sales VALUES (8, 31, 11, 1, 1,
TO_DATE('2023-01-20','YYYY-MM-DD'), 220000, 'finance') -- note: vehicle 31
doesn't exist, remove/comment if DB enforces strict FK; kept for variety
;
 
-- Note: remove or correct #8 above if your DB enforces FK
strictly.
 
-- More realistic recent sales for Toyota vehicles
INSERT INTO sales VALUES (9, 12, 13, 2, 1,
TO_DATE('2024-03-02','YYYY-MM-DD'), 128000, 'cash');
INSERT INTO sales VALUES (10, 3, 14, 3, 2,
TO_DATE('2023-07-25','YYYY-MM-DD'), 152000, 'finance');
INSERT INTO sales VALUES (11, 30, 16, 1, 1,
TO_DATE('2023-02-10','YYYY-MM-DD'), 89000, 'cash');
INSERT INTO sales VALUES (12, 21, 11, 10, 1,
TO_DATE('2020-03-01','YYYY-MM-DD'), 81000, 'finance');
INSERT INTO sales VALUES (13, 4, 19, 5, 4,
TO_DATE('2023-05-22','YYYY-MM-DD'), 153000, 'cash');
INSERT INTO sales VALUES (14, 26, 20, 6, 5,
TO_DATE('2018-09-14','YYYY-MM-DD'), 88000, 'cash');
INSERT INTO sales VALUES (15, 15, 9, 5, 4,
TO_DATE('2018-06-16','YYYY-MM-DD'), 298000, 'cash');
INSERT INTO sales VALUES (16, 5, 21, 9, 4,
TO_DATE('2020-11-11','YYYY-MM-DD'), 169000, 'finance');
INSERT INTO sales VALUES (17, 2, 22, 1, 1,
TO_DATE('2021-03-03','YYYY-MM-DD'), 87000, 'cash');
INSERT INTO sales VALUES (18, 4, 23, 3, 2,
TO_DATE('2023-05-16','YYYY-MM-DD'), 150000, 'lease');
INSERT INTO sales VALUES (19, 14, 24, 4, 3,
TO_DATE('2022-08-08','YYYY-MM-DD'), 139500, 'cash');
INSERT INTO sales VALUES (20, 15, 25, 6, 4,
TO_DATE('2019-12-12','YYYY-MM-DD'), 305000, 'cash');
 
COMMIT;