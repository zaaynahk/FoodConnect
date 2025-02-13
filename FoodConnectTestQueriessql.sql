SELECT D.Name, D.ContactInfo, D.Location, N.FoodType, N.Quantity
FROM Donor D
JOIN Donation N ON D.DonorID = N.DonorID
WHERE N.FoodType = 'Bread' AND N.Status = 'Available';

SELECT D.Name, D.ContactInfo, D.Location, N.FoodType, N.Quantity
FROM Donor D
JOIN Donation N ON D.DonorID = N.DonorID
WHERE N.FoodType = 'Vegetables' AND N.Status = 'Available';


SELECT Claim.ClaimID, Donation.DonationID, Donation.FoodType, Donation.Quantity, Donor.Name AS DonorName
FROM Claim
JOIN Donation ON Claim.DonationID = Donation.DonationID
JOIN Donor ON Donation.DonorID = Donor.DonorID
WHERE Claim.Status = 'Pending';

-- Select donors who donate bread
SELECT d.DonorID, d.Name, d.ContactInfo, d.Location
FROM Donor d
JOIN Donation dn ON d.DonorID = dn.DonorID
WHERE dn.FoodType = 'Bread'

UNION

-- Select donors who donate vegetables
SELECT d.DonorID, d.Name, d.ContactInfo, d.Location
FROM Donor d
JOIN Donation dn ON d.DonorID = dn.DonorID
WHERE dn.FoodType = 'Vegetables';

SELECT Name, ContactInfo, Location
FROM Donor
WHERE DonorID IN (
    SELECT DonorID
    FROM Donation
    WHERE FoodType = 'Vegetables'
);

SELECT FoodType,
       AVG(Quantity) AS AverageQuantity,
       SUM(Quantity) AS TotalQuantity,
       COUNT(DonationID) AS NumberOfDonations
FROM Donation
GROUP BY FoodType;








