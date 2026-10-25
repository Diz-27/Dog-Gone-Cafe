--creating and selecting the database
DROP DATABASE IF EXISTS dog_gone;
CREATE DATABASE dog_gone;
USE dog_gone;

--creating the tables for the database
CREATE TABLE customer(
    customer_id     INT NOT NULL AUTO_INCREMENT,
    first_name      varchar(35) NOT NULL,
    last_name       varchar(35) NOT NULL,
    email           varchar(50) NOT NULL,
    phone           varchar(15) NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE dog_register(
    dog_id      INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    dog_name    varchar(50) NOT NULL,
    dog_breed   varchar(50) NOT NULL,
    dog_dob     datetime    NOT NULL,
    dog_vac_date datetime   NOT NULL,
    PRIMARY KEY (dog_id),
    INDEX customer_id (customer_id)
);

CREATE TABLE menu( 
    menu_id     INT NOT NULL AUTO_INCREMENT,
    menu_item   varchar(50) NOT NULL,
    menu_description varchar(100) NOT NULL,
    menu_price decimal(3,2) NOT NULL,
    menu_order_type INT NOT NULL,
    PRIMARY KEY (menu_id)
);

CREATE TABLE menu_type(
    menu_type_id INT NOT NULL AUTO_INCREMENT,
    menu_type_name varchar(30) NOT NULL,
    PRIMARY KEY (menu_type_id)
)

-- Insert data into tables
INSERT INTO customer (customer_id, first_name, last_name, email, phone) VALUES
(1, 'Darren', 'Shannon', 'Ds@example.com', 471-777-7777),
(2, 'Big', 'Chungus', 'bigchungus@example.com', '417-999-9999'),
(3, 'Shayla', 'Harper', 'shayharper@example.com', '417-555-5555');

INSERT INTO dog_register(dog_id, dog_name, dog_breed, dog_dob, dog_vac_date, customer_id) VALUES
(1, 'Solo', 'Labrador', '2020-05-21', '2030-06-28', 1),
(2, 'Squishy', 'Golden Retriever', '2026-10-21', '2036-10-31', 2);

INSERT INTO menu_type (menu_type_id, menu_type_name) VALUES
(1, 'Human'),
(2, 'Dog');

INSERT INTO menu (menu_id, menu_item, menu_description, menu_price, menu_type_id) VALUES
(1, 'Butter Croissant', 'Fresh-baked, flaky pastry', 3.50, 1),
(2, 'Blueberry Muffin', 'Made with fresh blueberries', 3.25, 1),
(3, 'Café Latte', 'Espresso with steamed milk', 4.75, 1),
(4, 'Drip Coffee', 'Freshly brewed house blend', 2.50, 1),
(5, 'Pup Cup', 'Whipped cream dog treat', 2.00, 2),
(6, 'Peanut Butter Biscuit', 'Homemade crunchy biscuit', 1.75, 2),
(7, 'Doggy Ice Cream', 'Frozen dog-friendly treat', 3.50, 2);

