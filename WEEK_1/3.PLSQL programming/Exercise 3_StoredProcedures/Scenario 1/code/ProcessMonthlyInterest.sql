CREATE TABLE Accounts (
    AccountID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    Balance NUMBER
);

INSERT INTO Accounts VALUES (201,1,20000);
INSERT INTO Accounts VALUES (202,2,10000);
INSERT INTO Accounts VALUES (203,3,30000);

COMMIT;

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest
IS
BEGIN
   UPDATE Accounts
   SET Balance = Balance + (Balance * 0.01);

   COMMIT;

   DBMS_OUTPUT.PUT_LINE('Monthly Interest Processed Successfully');
END;
/

BEGIN
   ProcessMonthlyInterest;
END;
/

SELECT * FROM Accounts;