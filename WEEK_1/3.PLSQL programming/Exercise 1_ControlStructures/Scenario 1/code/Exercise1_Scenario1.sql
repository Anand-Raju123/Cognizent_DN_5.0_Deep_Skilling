CREATE TABLE Customers (
CustomerID NUMBER PRIMARY KEY,
Name VARCHAR2(50),
Age NUMBER,
Balance NUMBER,
IsVIP VARCHAR2(5)
);
CREATE TABLE Loans (
LoanID NUMBER PRIMARY KEY,
CustomerID NUMBER,
InterestRate NUMBER,
DueDate DATE
);
INSERT INTO Customers VALUES (1,'Karishma',65,15000,'FALSE');
INSERT INTO Customers VALUES (2,'Gayatri',45,5000,'FALSE');
INSERT INTO Customers VALUES (3,'Balasri',70,25000,'FALSE');

INSERT INTO Loans VALUES (101,1,10,SYSDATE+20);
INSERT INTO Loans VALUES (102,2,12,SYSDATE+40);
INSERT INTO Loans VALUES (103,3,9,SYSDATE+15);
COMMIT;

SELECT * FROM Loans;
SET SERVEROUTPUT ON;
BEGIN
FOR cust IN (
SELECT CustomerID
FROM Customers
WHERE Age > 60
)
LOOP
UPDATE Loans
SET InterestRate = InterestRate - 1
WHERE CustomerID = cust.CustomerID;
END LOOP;

COMMIT;

DBMS_OUTPUT.PUT_LINE('Interest Discount Applied Successfully');
END;
/

SELECT * FROM Loans;
SELECT * FROM Customers;
SELECT c.CustomerID,
       c.Name,
       l.LoanID,
       l.InterestRate,
       l.DueDate
FROM Customers c
JOIN Loans l
ON c.CustomerID = l.CustomerID;