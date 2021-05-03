
PRAGMA foreign_keys = OFF;
BEGIN TRANSACTION;

-- ENTITY Table: Customer
CREATE TABLE Customer (
    Customer_ID SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Customer_First_Name VARCHAR (50),
    Customer_Last_Name VARCHAR (50),
    PRIMARY KEY (Customer_ID)
            );

-- ENTITY Table: Order
CREATE TABLE Order_Des (
    Order_ID SMALLINT UNSIGNED NOT NULL,
    Customer_ID INTEGER NOT NULL,
    Order_Cost INTEGER,
    Order_Status VARCHAR (50),
    PRIMARY KEY (Order_ID),
    CONSTRAINT fk_order_des FOREIGN KEY (Customer_ID) REFERENCES Customer (Customer_ID)

     );

--ENTITY Table: Product
CREATE TABLE Product (
    Product_ID SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Order_ID INTEGER NOT NULL,
    Department VARCHAR (50),
    Subscription_Option BOOLEAN,
    Product_Name VARCHAR (100),
    Product_Description VARCHAR (255),
    Product_Avg_Ratings INTEGER,
    Product_Company VARCHAR (50),
    Product_Availability BOOLEAN,
    PRIMARY KEY (Product_ID),
    CONSTRAINT fk_product FOREIGN KEY (Order_ID) REFERENCES Order_Des (Order_ID)

            );

-- ENTITY Table: Deals
CREATE TABLE Deals (
    Deal_ID SMALLINT UNSIGNED NOT NULL,
    Product_ID INTEGER NOT NULL,
    Product_Sell_Performance VARCHAR (255),    
    Price INTEGER,
    Dicount_Rates INTEGER,
    PRIMARY KEY (Deal_ID),
    CONSTRAINT fk_deal FOREIGN KEY (Product_ID) REFERENCES Product (Product_ID)

     );

-- ENTITY Table: Review
CREATE TABLE Review (
    Review_ID SMALLINT UNSIGNED NOT NULL,
    Customer_ID INTEGER NOT NULL,
    Rating_Stars INTEGER,    
    Comment_Sentiment VARCHAR (50),
    PRIMARY KEY (Review_ID),
    CONSTRAINT fk_review FOREIGN KEY (Customer_ID) REFERENCES Customer (Customer_ID)

     );

 

-- MULTIVALUED Table: Billing_Detail
CREATE TABLE Billing_Detail (
    Billing_ID SMALLINT UNSIGNED NOT NULL,
    Customer_ID INTEGER NOT NULL,
    Street_Num INTEGER,   
    Street_Name VARCHAR (50),
    Postal_Code VARCHAR (50),
    City VARCHAR (50),
    Province VARCHAR (50),
    Country VARCHAR (50),
    PRIMARY KEY (Billing_ID),
    CONSTRAINT fk_bill FOREIGN KEY (Customer_ID) REFERENCES Customer (Customer_ID)
     );            


-- MULTIVALUED Table: Product_Description
CREATE TABLE Product_Description (
    Description_ID SMALLINT UNSIGNED NOT NULL,
    Product_ID INTEGER NOT NULL,
    Product_Description VARCHAR (255),
    PRIMARY KEY (Description_ID),
    CONSTRAINT fk_Product_ID FOREIGN KEY (Product_ID) REFERENCES Product (Product_ID)
     );


-- RELATIONSHIP Table: Places
CREATE TABLE Places (
    Customer_ID INTEGER REFERENCES Customer (Customer_ID) ON UPDATE RESTRICT NOT NULL,
    Order_ID INTEGER REFERENCES Orders_Des (Order_ID) ON UPDATE RESTRICT NOT NULL,
    Num_Of_Orders INTeger UNIQUE NOT NULL,
    Order_date INTeger UNIQUE NOT NULL
     );

-- RELATIONSHIP Table: Contains
CREATE TABLE Contains_ (
    Order_ID INTEGER REFERENCES Orders_Des (Order_ID) ON UPDATE RESTRICT NOT NULL,
    Product_ID INTEGER REFERENCES Product (Product_ID) ON UPDATE RESTRICT NOT NULL
     );

-- RELATIONSHIP Table: Display
CREATE TABLE Display_ (
    Deal_ID INTEGER REFERENCES Deals (Deal_ID) ON UPDATE RESTRICT NOT NULL,
    Product_ID INTEGER REFERENCES Product (Product_ID) ON UPDATE RESTRICT NOT NULL
     );

-- RELATIONSHIP Table: Has
CREATE TABLE Has_ (
    Product_ID INTEGER REFERENCES Product (Product_ID) ON UPDATE RESTRICT NOT NULL,
    Review _ID INTEGER REFERENCES Review (Review_ID) ON UPDATE RESTRICT NOT NULL
    );

-- RELATIONSHIP Table: Write
CREATE TABLE Write_ (
    Review _ID INTEGER REFERENCES Review (Review_ID) ON UPDATE RESTRICT NOT NULL,
    Customer_ID INTEGER REFERENCES Customer (Customer_ID) ON UPDATE RESTRICT NOT NULL
 );


COMMIT TRANSACTION;
PRAGMA foreign_keys = off;

