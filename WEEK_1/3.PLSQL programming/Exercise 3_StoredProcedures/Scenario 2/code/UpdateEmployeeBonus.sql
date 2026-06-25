CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    Department VARCHAR2(50),
    Salary NUMBER
);
INSERT INTO Employees VALUES (301,'Rahul','IT',50000);
INSERT INTO Employees VALUES (302,'Priya','HR',40000);
INSERT INTO Employees VALUES (303,'Anil','IT',60000);
INSERT INTO Employees VALUES (304,'Meena','Finance',45000);

COMMIT;
SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus (
    p_department IN VARCHAR2,
    p_bonus_percent IN NUMBER
)
IS
BEGIN
   UPDATE Employees
   SET Salary = Salary + (Salary * p_bonus_percent / 100)
   WHERE Department = p_department;

   COMMIT;

   DBMS_OUTPUT.PUT_LINE(
      'Bonus Updated for Department: ' || p_department
   );
END;
/
BEGIN
   UpdateEmployeeBonus('IT', 10);
END;
/
SELECT * FROM Employees;