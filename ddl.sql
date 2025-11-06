-- DROP existing tables if necessary (uncomment if you want
to re-create)
-- Note: adjust order if constraints prevent drops.
-- DROP TABLE sales;
-- DROP TABLE inventory;
-- DROP TABLE vehicle_features;
-- DROP TABLE features;
-- DROP TABLE vehicles;
-- DROP TABLE models;
-- DROP TABLE manufacturers;
-- DROP TABLE customers;
-- DROP TABLE sales_reps;
-- DROP TABLE dealerships;
-- DROP TABLE cities;
 
-- 1) Cities
CREATE TABLE cities (
  id INTEGER NOT NULL,
  name VARCHAR2(100)
NOT NULL,
  country
VARCHAR2(100) NOT NULL,
  PRIMARY KEY (id)
);
 
-- 2) Manufacturers
CREATE TABLE manufacturers (
  id INTEGER NOT NULL,
  name VARCHAR2(100)
NOT NULL,
  country
VARCHAR2(100),
  PRIMARY KEY (id)
);
 
-- 3) Models
CREATE TABLE models (
  id INTEGER NOT NULL,
  manufacturer_id
INTEGER NOT NULL,
  model_name
VARCHAR2(100) NOT NULL,
  body_type
VARCHAR2(50),       -- SUV, Sedan,
Hatchback, Coupe, Truck
  engine_type
VARCHAR2(50),     -- Petrol, Diesel,
Hybrid, Electric
  base_price
NUMBER(12,2),
  PRIMARY KEY (id)
);
 
-- 4) Vehicles (individual VIN-level inventory items)
CREATE TABLE vehicles (
  id INTEGER NOT NULL,
  vin VARCHAR2(20) NOT
NULL,
  model_id INTEGER NOT
NULL,
  year INTEGER,
  color VARCHAR2(50),
  mileage INTEGER,
  status
VARCHAR2(20),          -- available,
sold, reserved
  PRIMARY KEY (id)
);
 
-- 5) Dealerships
CREATE TABLE dealerships (
  id INTEGER NOT NULL,
  name VARCHAR2(150)
NOT NULL,
  city_id INTEGER NOT
NULL,
  address
VARCHAR2(200),
  phone VARCHAR2(30),
  PRIMARY KEY (id)
);
 
-- 6) Sales Representatives
CREATE TABLE sales_reps (
  id INTEGER NOT NULL,
  first_name
VARCHAR2(100) NOT NULL,
  last_name
VARCHAR2(100) NOT NULL,
  dealership_id
INTEGER NOT NULL,
  hire_date DATE,
  PRIMARY KEY (id)
);
 
-- 7) Customers
CREATE TABLE customers (
  id INTEGER NOT NULL,
  first_name
VARCHAR2(100) NOT NULL,
  last_name
VARCHAR2(100) NOT NULL,
  email VARCHAR2(150),
  phone VARCHAR2(30),
  city_id INTEGER,
  PRIMARY KEY (id)
);
 
-- 8) Sales (transactions)
CREATE TABLE sales (
  id INTEGER NOT NULL,
  vehicle_id INTEGER
NOT NULL,
  customer_id INTEGER
NOT NULL,
  sales_rep_id INTEGER
NOT NULL,
  dealership_id
INTEGER NOT NULL,
  sale_date DATE NOT
NULL,
  sale_price
NUMBER(12,2) NOT NULL,
  payment_type
VARCHAR2(50),   -- cash, finance, lease
  PRIMARY KEY (id)
);
 
-- 9) Inventory (link dealership <-> vehicle, current
stock)
CREATE TABLE inventory (
  id INTEGER NOT NULL,
  dealership_id
INTEGER NOT NULL,
  vehicle_id INTEGER
NOT NULL,
  arrival_date DATE,
  PRIMARY KEY (id)
);
 
-- 10) Features (amenities)
CREATE TABLE features (
  id INTEGER NOT NULL,
  name VARCHAR2(100)
NOT NULL,
  category
VARCHAR2(100),
  PRIMARY KEY (id)
);
 
-- 11) Vehicle_Features (many-to-many)
CREATE TABLE vehicle_features (
  vehicle_id INTEGER
NOT NULL,
  feature_id INTEGER
NOT NULL,
  PRIMARY KEY
(vehicle_id, feature_id)
);
 
-- Foreign keys
ALTER TABLE models ADD CONSTRAINT fk_models_manufacturer
FOREIGN KEY (manufacturer_id) REFERENCES manufacturers (id);
ALTER TABLE vehicles ADD CONSTRAINT fk_vehicles_model
FOREIGN KEY (model_id) REFERENCES models (id);
ALTER TABLE dealerships ADD CONSTRAINT fk_dealerships_city
FOREIGN KEY (city_id) REFERENCES cities (id);
ALTER TABLE sales_reps ADD CONSTRAINT fk_reps_dealer FOREIGN
KEY (dealership_id) REFERENCES dealerships (id);
ALTER TABLE customers ADD CONSTRAINT fk_customers_city
FOREIGN KEY (city_id) REFERENCES cities (id);
ALTER TABLE sales ADD CONSTRAINT fk_sales_vehicle FOREIGN
KEY (vehicle_id) REFERENCES vehicles (id);
ALTER TABLE sales ADD CONSTRAINT fk_sales_customer FOREIGN
KEY (customer_id) REFERENCES customers (id);
ALTER TABLE sales ADD CONSTRAINT fk_sales_rep FOREIGN KEY
(sales_rep_id) REFERENCES sales_reps (id);
ALTER TABLE sales ADD CONSTRAINT fk_sales_dealer FOREIGN KEY
(dealership_id) REFERENCES dealerships (id);
ALTER TABLE inventory ADD CONSTRAINT fk_inventory_dealer
FOREIGN KEY (dealership_id) REFERENCES dealerships (id);
ALTER TABLE inventory ADD CONSTRAINT fk_inventory_vehicle
FOREIGN KEY (vehicle_id) REFERENCES vehicles (id);
ALTER TABLE vehicle_features ADD CONSTRAINT fk_vf_vehicle
FOREIGN KEY (vehicle_id) REFERENCES vehicles (id);
ALTER TABLE vehicle_features ADD CONSTRAINT fk_vf_feature
FOREIGN KEY (feature_id) REFERENCES features (id);