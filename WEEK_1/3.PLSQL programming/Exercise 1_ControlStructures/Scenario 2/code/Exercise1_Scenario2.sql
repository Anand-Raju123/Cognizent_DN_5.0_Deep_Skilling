SET SERVEROUTPUT ON;

BEGIN
   FOR cust IN (
      SELECT CustomerID
      FROM Customers
      WHERE Balance > 10000
   )
   LOOP
      UPDATE Customers
      SET IsVIP = 'TRUE'
      WHERE CustomerID = cust.CustomerID;
   END LOOP;

   COMMIT;

   DBMS_OUTPUT.PUT_LINE('VIP Status Updated Successfully');
END;
/


SELECT * FROM Customers;