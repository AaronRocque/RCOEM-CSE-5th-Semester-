DROP TABLE CUSTOMER CASCADE CONSTRAINTS;
DROP TABLE INVOICE CASCADE CONSTRAINTS;
DROP TABLE LINE CASCADE CONSTRAINTS;
DROP TABLE PRODUCT CASCADE CONSTRAINTS;
DROP TABLE VENDOR CASCADE CONSTRAINTS;
PURGE RECYCLEBIN;
------------------------------------------------------------------
Q1
start C:\Users\AaronRocque\Documents\V_Semester\Lab\DBMS\Practical-2\SalesCo

column descript format a20 wrap
column qty format 9999
column pmin format 9999
column p_min format 9999
column p_disc format 9999
column v_name format a20
set pagesize 40

SELECT * FROM CUSTOMER;

SELECT * FROM INVOICE;

SELECT * FROM LINE;

SELECT * FROM PRODUCT;

SELECT * FROM VENDOR;
------------------------------------------------------------------

Q2
select table_name, constraint_name, constraint_type
  from user_constraintS
  where UPPER(table_name) = 'CUSTOMER';
  
select table_name, constraint_name, constraint_type
  from user_constraintS
  where UPPER(table_name) = 'LINE';

select table_name, constraint_name, constraint_type
  from user_constraintS
  where UPPER(table_name) = 'INVOICE';

select table_name, constraint_name, constraint_type
  from user_constraintS
  where UPPER(table_name) = 'PRODUCT';

select table_name, constraint_name, constraint_type
  from user_constraintS
  where UPPER(table_name) = 'VENDOR';
------------------------------------------------------------------

Q3
INSERT INTO LINE VALUES (1009, 1, 'HW15X', 20, 15.50);

INSERT INTO CUSTOMER VALUES (10020, 'ROCQUE', 'AARON', 904, 3562098, 500.0);

INSERT INTO VENDOR VALUES (24992, 'Indian Masters', 'Aretha Rocque', 615, 2863322, 'KY', 'N');

INSERT INTO INVOICE VALUES (1009, 10020, '22-JUN-20');

INSERT INTO PRODUCT VALUES ('HW15X', 'HiVeld Hammer', '10-JAN-20', 60, 15, 17.50, 0, 24992);

INSERT INTO LINE VALUES (1009, 1, 'HW15X', 20, 17.50);

SELECT * FROM CUSTOMER
	WHERE C_CODE = 10020;

SELECT * FROM INVOICE
	WHERE INV_NUM = 1009;

SELECT * FROM LINE
	WHERE INV_NUM = 1009;

SELECT * FROM PRODUCT
	WHERE P_CODE = 'HW15X';

SELECT * FROM VENDOR
	WHERE V_CODE = 24992;

------------------------------------------------------------------


Q4

SELECT P_CODE, DESCRIPT, V_CODE FROM PRODUCT
	WHERE lower(DESCRIPT) LIKE '%hammer%'
		OR lower(DESCRIPT) LIKE '%screw%';

------------------------------------------------------------------


Q5

SELECT P_CODE, DESCRIPT, V_CODE, P_DATE FROM PRODUCT
	WHERE P_DATE BETWEEN '01-JAN-20' AND '31-DEC-20';
	
--Sir's Solution
	
SELECT P_CODE, DESCRIPT, V_CODE, P_DATE FROM PRODUCT
	WHERE extract(year from P_DATE) = 2020;
------------------------------------------------------------------


Q6

SELECT CUSTOMER.FNAME, CUSTOMER.LNAME, INVOICE.INV_NUM, INVOICE.INV_DATE 
	FROM INVOICE
	JOIN CUSTOMER USING(C_CODE)
	WHERE CUSTOMER.FNAME = 'Elena' AND CUSTOMER.LNAME = 'Johnson';
	
--Sir's Solution

SELECT c.c_code, inv_num, fname||' '||lname name
	from invoice i join customer c
	on c.c_code = i.c_code and
	lower(fname||' '||lname) = 'elena johnson';
	
--Other sir's solution

SELECT c_code, inv_num, fname||' '||lname name
	from invoice i natural join customer c
	where lower(fname||' '||lname) = 'elena johnson';
	
-- Other Soluttion
SELECT c_code, inv_num, fname||' '||lname name
	from invoice i join customer c
	using (c_code)
	where lower(fname||' '||lname) = 'elena johnson';
	
--Other solution
SELECT c.c_code, inv_num, fname||' '||lname name
	from invoice i, customer c
	where c.c_code = i.c_code and lower(fname||' '||lname) = 'elena johnson';

------------------------------------------------------------------


Q7

INSERT INTO PRODUCT 
VALUES('AB111', 'Power Drill', sysdate, 15, 5, 125, 0.1, 24992);

INSERT INTO PRODUCT 
VALUES('PP102', 'PVC PIPE', sysdate+1, 50, 12, 15.25, 0.02, 24992);

SELECT * FROM PRODUCT
	WHERE P_CODE IN ('AB111', 'PP102');
------------------------------------------------------------------


Q8
SELECT V_CODE, V_NAME FROM VENDOR
	WHERE V_CODE = 23119;
	
DELETE FROM VENDOR
	WHERE V_CODE = 23119;
	
SELECT P_CODE, DESCRIPT, V_CODE
	FROM PRODUCT 
	WHERE V_CODE = 23119;
	
SELECT TABLE_NAME, CONSTRAINT_NAME, CONSTRAINT_TYPE, DELETE_RULE
	FROM USER_CONSTRAINTS
	WHERE TABLE_NAME = 'PRODUCT' AND CONSTRAINT_TYPE = 'R';
	
alter table PRODUCT 
	drop constraint PRODUCT_VENDOR_FK_V_CODE;
	
SELECT TABLE_NAME, CONSTRAINT_NAME, CONSTRAINT_TYPE, DELETE_RULE
	FROM USER_CONSTRAINTS
	WHERE TABLE_NAME = 'PRODUCT' AND CONSTRAINT_TYPE = 'R';
	
alter table PRODUCT
	add constraint PRODUCT_VENDOR_FK_V_CODE foreign key (v_code)
	REFERENCES vendor(v_code) on delete cascade;
	
SELECT TABLE_NAME, CONSTRAINT_NAME, CONSTRAINT_TYPE, DELETE_RULE
	FROM USER_CONSTRAINTS
	WHERE TABLE_NAME = 'PRODUCT' AND CONSTRAINT_TYPE = 'R';
	
DELETE FROM VENDOR
	WHERE V_CODE = 23119;
	
SELECT V_CODE, V_NAME FROM VENDOR
	WHERE V_CODE = 23119;
	
rollback;

SELECT P_CODE, V_CODE FROM PRODUCT
	WHERE V_CODE =23119;

SELECT V_CODE FROM VENDOR
	WHERE V_CODE =23119;

SELECT TABLE_NAME, CONSTRAINT_NAME, CONSTRAINT_TYPE, DELETE_RULE
	FROM USER_CONSTRAINTS
	WHERE TABLE_NAME = 'PRODUCT' AND CONSTRAINT_TYPE = 'R';
	
-- does not work 

ALTER TABLE PRODUCT
   DROP CONSTRAINT  PRODUCT_VENDOR_FK_V_CODE;

ALTER TABLE PRODUCT
  ADD CONSTRAINT PRODUCT_VENDOR_FK_V_CODE FOREIGN KEY(V_CODE)
    REFERENCES VENDOR(V_CODE) ON DELETE no action;



------------------------------------------------------------------


Q9

SELECT V_CODE, V_NAME, PRODUCT.P_CODE, PRODUCT.DESCRIPT, V_CONTACT, PRODUCT.P_DATE
	FROM PRODUCT
    JOIN VENDOR USING(V_CODE)
	WHERE V_STATE = 'KY'
    ORDER BY V_CODE ASC;
	
SELECT V.V_CODE, V.V_NAME, P.P_CODE, P.DESCRIPT, V.V_CONTACT, P.P_DATE
	FROM PRODUCT P
    JOIN VENDOR V
		ON P.V_CODE = V.V_CODE
	WHERE V.V_STATE = 'KY'
    ORDER BY V.V_CODE ASC;

------------------------------------------------------------------

Q10

SELECT CUSTOMER.FNAME || ' ' || CUSTOMER.LNAME C_NAME, P_CODE, P_DATE
	FROM LINE
	JOIN INVOICE USING(INV_NUM)
	JOIN CUSTOMER USING(C_CODE)
	JOIN PRODUCT USING(P_CODE)
	WHERE P_CODE = 'CD00X' OR P_CODE = 'PP101';
	
SELECT DISTINCT C.FNAME || ' ' || C.LNAME C_NAME, P.P_CODE, P.P_DATE
	FROM PRODUCT P
	JOIN LINE L
		ON P.P_CODE = L.P_CODE
	JOIN INVOICE I
		ON L.INV_NUM = I.INV_NUM
	JOIN CUSTOMER C
		ON C.C_CODE = I.C_CODE
	WHERE P.P_CODE = 'CD00X' OR P.P_CODE = 'PP101';
	
	
	
------------------------------------------------------------------


Q11

select * from invoice 
	where c_code < 10015
	order by c_code desc; --for ordering the sequence 
	
	--join between invoice and line
	
SELECT INVOICE.C_CODE, INV_NUM, L_UNITS, L_PRICE
    FROM LINE
    JOIN INVOICE USING(INV_NUM)
    ORDER BY C_CODE ASC, INV_NUM DESC;


SELECT INVOICE.C_CODE, INV_NUM, L_UNITS, L_PRICE
    FROM LINE
    JOIN INVOICE USING(INV_NUM)
    ORDER BY INV_NUM DESC, C_CODE ASC;

------------------------------------------------------------------


Q12

SELECT INVOICE.C_CODE, INV_NUM, L_UNITS, L_PRICE, L_UNITS*L_PRICE SUBTOTAL
	FROM LINE
    JOIN INVOICE USING(INV_NUM)
    ORDER BY C_CODE ASC, INV_NUM DESC;

------------------------------------------------------------------