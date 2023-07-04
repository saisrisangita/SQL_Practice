create database indexes

CREATE TABLE emp (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100) NOT NULL,
    EmpEmail VARCHAR(100),
    EmpPhone VARCHAR(20),
    EmpAddress VARCHAR(200)
);

INSERT INTO emp (EmpID, EmpName, EmpEmail, EmpPhone, EmpAddress)
VALUES (1, 'sai sri', 'saisri@example.com', '123456789', 'Address1'), 
       (2, 'Durga ', 'Durga@example.com', '9876543210', 'Address2'),
	   (3, 'divya ', 'divya@example.com', '9876543211', 'Address3'),
	   (4, 'sangita ', 'sangita@example.com', '9876543212', 'Address4'),
	   (5, 'udit ', 'udit@example.com', '9876543213', 'Address5'),
	   (6, 'pramod ', 'pramod@example.com', '9876543214', 'Address6');
INSERT INTO emp (EmpID, EmpName, EmpEmail, EmpPhone, EmpAddress)
VALUES (9, 'sai sree', 'saisri@example.com', '123456789', 'Address1'), 
       (7, 'Durga bhavani ', 'Durga@example.com', '9876543210', 'Address2');

select * from emp;




CREATE CLUSTERED INDEX emp_index ON emp(EmpName);
CREATE NONCLUSTERED INDEX emp_empid ON emp(EmpID);
SELECT * FROM emp WITH(INDEX(emp_empid)) WHERE EmpID = '4';
--SELECT * FROM emp  WHERE EmpID = '4';
  