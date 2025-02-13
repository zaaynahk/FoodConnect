-- Drop tables with PL/SQL block for Oracle
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Claim CASCADE CONSTRAINTS';
EXCEPTION
   WHEN OTHERS THEN
       IF SQLCODE != -942 THEN
           RAISE;
       END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Donation CASCADE CONSTRAINTS';
EXCEPTION
   WHEN OTHERS THEN
       IF SQLCODE != -942 THEN
           RAISE;
       END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Recipient CASCADE CONSTRAINTS';
EXCEPTION
   WHEN OTHERS THEN
       IF SQLCODE != -942 THEN
           RAISE;
       END IF;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Donor CASCADE CONSTRAINTS';
EXCEPTION
   WHEN OTHERS THEN
       IF SQLCODE != -942 THEN
           RAISE;
       END IF;
END;
/

-- Create tables
CREATE TABLE Donor (
    DonorID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInfo VARCHAR(255),
    Location VARCHAR(255)
);
/

CREATE TABLE Recipient (
    RecipientID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInfo VARCHAR(255),
    Location VARCHAR(255)
);
/

CREATE TABLE Donation (
    DonationID INT PRIMARY KEY,
    DonorID INT,
    FoodType VARCHAR(255),
    Quantity INT,
    ExpirationDate DATE,
    Status VARCHAR(100),
    FOREIGN KEY (DonorID) REFERENCES Donor(DonorID)
);
/

CREATE TABLE Claim (
    ClaimID INT PRIMARY KEY,
    DonationID INT,
    RecipientID INT,
    ClaimDate DATE,
    Status VARCHAR(100),
    FOREIGN KEY (DonationID) REFERENCES Donation(DonationID),
    FOREIGN KEY (RecipientID) REFERENCES Recipient(RecipientID)
);
/

-- Insert example for Donor
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (1, 'John’s Bakery', '555-1001', '123 Main St');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (1, 'John’s Bakery', '555-1001', '123 Main St');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (2, 'Local Farm Co.', '555-1002', '456 Farm Rd');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (3, 'Organic Greens', '555-1003', '789 Organic Ave');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (4, 'City Supermarket', '555-1004', '321 Shopping Ln');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (5, 'Rural Orchards', '555-1005', '654 Orchard Rd');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (6, 'Grain Suppliers', '555-1006', '156 Grain Gate');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (7, 'City Market', '555-1007', '307 Market St');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (8, 'Healthy Harvest', '555-1008', '452 Harvest Rd');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (9, 'The Butchers', '555-1009', '249 Meat Ave');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (10, 'Ocean Catch', '555-1010', '333 Fishers Is');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (11, 'Bakers Delight', '555-1011', '121 Bakers St');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (12, 'Farm Fresh Eggs', '555-1012', '404 Egg Farm');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (13, 'Pure Dairy', '555-1013', '223 Milk Lane');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (14, 'Green Organics', '555-1014', '556 Veggie Blvd');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (15, 'Sweet Fruits', '555-1015', '789 Fruitful Rd');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (16, 'Healthy Veggies', '555-1016', '163 Veggie Path');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (17, 'Meat Masters', '555-1017', '174 Meat Corner');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (18, 'Fish Market', '555-1018', '185 Fresh Fish Ave');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (19, 'Sweet Bakery', '555-1019', '196 Sugar Lane');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (20, 'Pasta Producers', '555-1020', '207 Pasta Road');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (21, 'Spice Traders', '555-1021', '218 Spice Blvd');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (22, 'Wine and Dine', '555-1022', '229 Gourmet St');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (23, 'Beer Brewery', '555-1023', '240 Brew Way');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (24, 'Snack Suppliers', '555-1024', '251 Snack Street');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (25, 'Candy Creations', '555-1025', '262 Candy Lane');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (26, 'Whole Grain Bakery', '555-1026', '263 Grain Lane');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (27, 'Farm to Table', '555-1027', '274 Fresh Ave');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (28, 'City Deli', '555-1028', '285 Deli St');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (29, 'Garden Fresh', '555-1029', '296 Garden Rd');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (30, 'Juice Bar', '555-1030', '307 Juice Blvd');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (31, 'Local Cheese Maker', '555-1031', '318 Cheese Ct');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (32, 'Vegan Snacks', '555-1032', '329 Vegan St');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (33, 'Family Farms', '555-1033', '340 Family Lane');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (34, 'Nutrition House', '555-1034', '351 Nutrition Rd');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (35, 'Confectionery', '555-1035', '362 Sweet St');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (36, 'Quick Meals', '555-1036', '373 Meal Blvd');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (37, 'Frozen Treats', '555-1037', '384 Freeze Ln');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (38, 'Hearty Soups', '555-1038', '395 Soup Ave');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (39, 'Tea Time', '555-1039', '406 Tea St');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (40, 'Coffee Cult', '555-1040', '417 Coffee Rd');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (41, 'Spicy Delights', '555-1041', '428 Spice Ln');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (42, 'Fine Chocolates', '555-1042', '439 Chocolate Blvd');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (43, 'Organic Juices', '555-1043', '450 Juice Way');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (44, 'Artisan Breads', '555-1044', '461 Bread Lane');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (45, 'Tropical Fruits', '555-1045', '472 Tropical Rd');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (46, 'Seafood Market', '555-1046', '483 Sea St');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (47, 'Herbal Products', '555-1047', '494 Herb Ave');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (48, 'Dairy Delights', '555-1048', '505 Dairy Rd');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (49, 'Brewery', '555-1049', '516 Brew St');
INSERT INTO Donor (DonorID, Name, ContactInfo, Location) VALUES (50, 'Vegan Goods', '555-1050', '527 Vegan Circle');
COMMIT;
/

INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (1, 'Helping Hands Community', '555-2001', '123 Help St');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (2, 'Food Bank City Center', '555-2002', '456 Bank Rd');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (3, 'Charity House', '555-2003', '789 Charity Blvd');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (4, 'School Lunch Program', '555-2004', '321 School Ln');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (5, 'Emergency Relief Foundation', '555-2005', '654 Relief Rd');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (6, 'Senior Center', '555-2006', '777 Senior Ave');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (7, 'Veterans Support', '555-2007', '888 Veterans Ln');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (8, 'Homeless Shelter', '555-2008', '999 Shelter St');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (9, 'Children’s Home', '555-2009', '111 Orphan Rd');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (10, 'Women’s Refuge', '555-2010', '222 Safe St');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (11, 'Disaster Relief', '555-2011', '333 Recovery Blvd');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (12, 'Low-Income Families Support', '555-2012', '444 Support Ave');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (13, 'Immigrant Assistance Program', '555-2013', '555 NewStart Ln');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (14, 'Free Meals Program', '555-2014', '666 Meal Rd');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (15, 'Local Food Pantry', '555-2015', '777 Pantry St');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (16, 'Neighborhood Watch', '555-2016', '163 Watch Way');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (17, 'Elderly Care Center', '555-2017', '174 Elderly Lane');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (18, 'Youth Hostel', '555-2018', '185 Youth St');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (19, 'Student Commune', '555-2019', '196 Student Lane');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (20, 'Migrant Shelter', '555-2020', '207 Migrant Rd');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (21, 'Disaster Aid Network', '555-2021', '218 Disaster Blvd');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (22, 'Animal Rescue Center', '555-2022', '229 Rescue St');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (23, 'Urban Outreach', '555-2023', '240 Outreach Way');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (24, 'Rural Aid Collective', '555-2024', '251 Rural Street');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (25, 'Community Soup Kitchen', '555-2025', '262 Soup Lane');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (26, 'Day Care Centers', '555-2026', '263 Day Care Ln');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (27, 'Local Clinics', '555-2027', '274 Clinic St');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (28, 'Refugee Camps', '555-2028', '285 Camp Rd');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (29, 'Rehabilitation Centers', '555-2029', '296 Rehab Blvd');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (30, 'Community Centers', '555-2030', '307 Community Ct');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (31, 'Soup Kitchens', '555-2031', '318 Soup St');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (32, 'Homeless Outreach', '555-2032', '329 Outreach Lane');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (33, 'Youth Programs', '555-2033', '340 Youth Rd');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (34, 'Senior Assistance', '555-2034', '351 Senior Ave');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (35, 'Disabled Support Groups', '555-2035', '362 Support St');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (36, 'Veterans Affairs', '555-2036', '373 Veteran Blvd');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (37, 'Underprivileged Schools', '555-2037', '384 School Ln');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (38, 'Mental Health Clinics', '555-2038', '395 Mental Ave');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (39, 'Animal Shelters', '555-2039', '406 Shelter St');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (40, 'Environmental Groups', '555-2040', '417 Environment Rd');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (41, 'Art Communities', '555-2041', '428 Art Ln');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (42, 'Sports Clubs', '555-2042', '439 Sport Blvd');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (43, 'Religious Organizations', '555-2043', '450 Church Way');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (44, 'Cultural Societies', '555-2044', '461 Culture Lane');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (45, 'Peace Corps', '555-2045', '472 Peace Rd');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (46, 'Women’s Groups', '555-2046', '483 Women St');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (47, 'Human Rights NGOs', '555-2047', '494 Rights Ave');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (48, 'Health Awareness Campaigns', '555-2048', '505 Health Rd');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (49, 'Community Art Projects', '555-2049', '516 Art St');
INSERT INTO Recipient (RecipientID, Name, ContactInfo, Location) VALUES (50, 'Family Services Office', '555-2050', '527 Family Circle');
COMMIT;
/

--DONATION
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (1, 1, 'Bread', 50, TO_DATE('2024-05-30', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (2, 2, 'Vegetables', 100, TO_DATE('2024-06-15', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (3, 3, 'Fruits', 30, TO_DATE('2024-05-25', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (4, 4, 'Canned Goods', 80, TO_DATE('2025-01-01', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (5, 5, 'Meat', 60, TO_DATE('2024-07-15', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (6, 6, 'Pastries', 120, TO_DATE('2024-06-01', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (7, 7, 'Coffee', 200, TO_DATE('2024-08-20', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (8, 8, 'Salads', 90, TO_DATE('2024-05-30', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (9, 9, 'Poultry', 70, TO_DATE('2024-07-25', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (10, 10, 'Seafood', 50, TO_DATE('2024-05-20', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (11, 11, 'Cakes', 30, TO_DATE('2024-06-15', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (12, 12, 'Eggs', 300, TO_DATE('2024-06-10', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (13, 13, 'Cheese', 80, TO_DATE('2024-07-15', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (14, 14, 'Vegetable Oil', 150, TO_DATE('2025-12-01', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (15, 15, 'Oranges', 100, TO_DATE('2024-06-25', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (16, 16, 'Organic Tomatoes', 120, TO_DATE('2024-06-10', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (17, 17, 'Grass-Fed Beef', 100, TO_DATE('2024-07-20', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (18, 18, 'Fresh Salmon', 80, TO_DATE('2024-05-30', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (19, 19, 'Gluten-Free Bread', 60, TO_DATE('2024-05-25', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (20, 20, 'Handmade Pasta', 40, TO_DATE('2024-08-15', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (21, 21, 'Curry Powder', 200, TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (22, 22, 'Fine Wines', 150, TO_DATE('2025-12-25', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (23, 23, 'Craft Beers', 180, TO_DATE('2025-11-30', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (24, 24, 'Assorted Nuts', 110, TO_DATE('2024-09-10', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (25, 25, 'Gourmet Candies', 90, TO_DATE('2024-10-05', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (26, 26, 'Organic Lettuce', 130, TO_DATE('2024-06-11', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (27, 27, 'Smoked Ham', 85, TO_DATE('2024-07-21', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (28, 28, 'Trout Fish', 75, TO_DATE('2024-05-31', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (29, 29, 'Cucumber', 95, TO_DATE('2024-05-26', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (30, 30, 'Apple Juice', 55, TO_DATE('2024-08-16', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (31, 31, 'Gouda Cheese', 45, TO_DATE('2025-01-16', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (32, 32, 'Vegan Burgers', 155, TO_DATE('2025-12-26', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (33, 33, 'Pork Sausages', 175, TO_DATE('2025-11-30', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (34, 34, 'Cashew Nuts', 105, TO_DATE('2024-09-11', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (35, 35, 'Chocolate Bars', 85, TO_DATE('2024-10-06', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (36, 36, 'Tofu', 120, TO_DATE('2024-06-12', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (37, 37, 'Fresh Berries', 80, TO_DATE('2024-07-22', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (38, 38, 'Whole Chickens', 70, TO_DATE('2024-05-31', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (39, 39, 'Bagels', 60, TO_DATE('2024-05-26', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (40, 40, 'Tomato Sauce', 50, TO_DATE('2024-08-17', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (41, 41, 'Swiss Cheese', 200, TO_DATE('2025-01-17', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (42, 42, 'Packaged Meals', 150, TO_DATE('2025-12-27', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (43, 43, 'Mixed Nuts', 180, TO_DATE('2025-11-30', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (44, 44, 'Pasta', 110, TO_DATE('2024-09-12', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (45, 45, 'Yogurt', 90, TO_DATE('2024-10-07', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (46, 46, 'Bottled Water', 200, TO_DATE('2025-01-20', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (47, 47, 'Ice Cream', 150, TO_DATE('2025-03-15', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (48, 48, 'Baby Food', 100, TO_DATE('2024-12-31', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (49, 49, 'Rice', 120, TO_DATE('2024-11-20', 'YYYY-MM-DD'), 'Available');
INSERT INTO Donation (DonationID, DonorID, FoodType, Quantity, ExpirationDate, Status) VALUES (50, 50, 'Vegan Cheese', 60, TO_DATE('2024-06-20', 'YYYY-MM-DD'), 'Available');
COMMIT;
/

--CLAIM
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (1, 1, 1, TO_DATE('2024-04-25', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (2, 2, 2, TO_DATE('2024-04-26', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (3, 3, 3, TO_DATE('2024-04-27', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (4, 4, 4, TO_DATE('2024-04-28', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (5, 5, 5, TO_DATE('2024-04-29', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (6, 6, 6, TO_DATE('2024-04-30', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (7, 7, 7, TO_DATE('2024-05-01', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (8, 8, 8, TO_DATE('2024-05-02', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (9, 9, 9, TO_DATE('2024-05-03', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (10, 10, 10, TO_DATE('2024-05-04', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (11, 11, 11, TO_DATE('2024-05-05', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (12, 12, 12, TO_DATE('2024-05-06', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (13, 13, 13, TO_DATE('2024-05-07', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (14, 14, 14, TO_DATE('2024-05-08', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (15, 15, 15, TO_DATE('2024-05-09', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (16, 16, 16, TO_DATE('2024-04-30', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (17, 17, 17, TO_DATE('2024-05-01', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (18, 18, 18, TO_DATE('2024-05-02', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (19, 19, 19, TO_DATE('2024-05-03', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (20, 20, 20, TO_DATE('2024-05-04', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (21, 21, 21, TO_DATE('2024-05-05', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (22, 22, 22, TO_DATE('2024-05-06', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (23, 23, 23, TO_DATE('2024-05-07', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (24, 24, 24, TO_DATE('2024-05-08', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (25, 25, 25, TO_DATE('2024-05-09', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (26, 26, 26, TO_DATE('2024-04-30', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (27, 27, 27, TO_DATE('2024-05-01', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (28, 28, 28, TO_DATE('2024-05-02', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (29, 29, 29, TO_DATE('2024-05-03', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (30, 30, 30, TO_DATE('2024-05-04', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (31, 31, 31, TO_DATE('2024-05-05', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (32, 32, 32, TO_DATE('2024-05-06', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (33, 33, 33, TO_DATE('2024-05-07', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (34, 34, 34, TO_DATE('2024-05-08', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (35, 35, 35, TO_DATE('2024-05-09', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (36, 36, 36, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (37, 37, 37, TO_DATE('2024-05-11', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (38, 38, 38, TO_DATE('2024-05-12', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (39, 39, 39, TO_DATE('2024-05-13', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (40, 40, 40, TO_DATE('2024-05-14', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (41, 41, 41, TO_DATE('2024-05-15', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (42, 42, 42, TO_DATE('2024-05-16', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (43, 43, 43, TO_DATE('2024-05-17', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (44, 44, 44, TO_DATE('2024-05-18', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (45, 45, 45, TO_DATE('2024-05-19', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (46, 46, 46, TO_DATE('2024-05-20', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (47, 47, 47, TO_DATE('2024-05-21', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (48, 48, 48, TO_DATE('2024-05-22', 'YYYY-MM-DD'), 'Pending');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (49, 49, 49, TO_DATE('2024-05-23', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Claim (ClaimID, DonationID, RecipientID, ClaimDate, Status) VALUES (50, 50, 50, TO_DATE('2024-05-24', 'YYYY-MM-DD'), 'Pending');
COMMIT;
/





