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

column descript format a20 wrap
column qty format 9999
column pmin format 9999
column p_min format 9999
column p_disc format 9999
column v_code format 9999

INSERT INTO CUSTOMER(10020, 'ROCQUE', 'AARON', 904, 3562098, 500.0);


DATABASE CONTAINS..


 Customer#
----------
        10

  Invoice#
----------
         8

   Vendor#
----------
        11

  Product#
----------
        16

     Line#
----------
        18
SQL> select * from customer;

    C_CODE LNAME      FNAME          C_AREA    C_PHONE    BALANCE
---------- ---------- ---------- ---------- ---------- ----------
     10010 Anderson   James             615    2933893          0
     10011 Johnson    Elena             713    2753455          0
     10012 Smith      Kathy             615    2873453     345.86
     10013 Paul       Chris             615    2879998     536.75
     10014 Johnson    Bill              615    2455533          0
     10015 Samuels    Julia             713    2345432          0
     10016 Harris     Anne              615    2233445     221.19
     10017 Ford       Gustav            615    2223444     768.93
     10018 Lee        Ming              713    2323234     216.55
     10019 Green      Walter            615    2786403          0

10 rows selected.

SQL> select * from invoice;

   INV_NUM     C_CODE INV_DATE
---------- ---------- ---------
      1001      10014 16-JAN-20
      1002      10011 16-JAN-20
      1003      10012 16-JAN-20
      1004      10018 17-JAN-20
      1005      10011 17-JAN-20
      1006      10014 17-JAN-20
      1007      10015 17-JAN-20
      1008      10011 17-JAN-20

8 rows selected.

SQL> slect * from line;
SP2-0734: unknown command beginning "slect * fr..." - rest of line ignored.
SQL> select * from line;

   INV_NUM      L_NUM P_COD    L_UNITS    L_PRICE
---------- ---------- ----- ---------- ----------
      1001          1 SB725          1      14.99
      1001          2 CH10X          1       9.95
      1002          1 RF100          2       4.99
      1003          1 CD00X          1      38.95
      1003          2 CD00X          1      39.95
      1003          3 SB725          5      14.99
      1004          1 RF100          3       4.99
      1004          2 CH10X          2       9.95
      1005          1 PP101         12       5.87
      1006          1 MC001          3       6.99
      1006          2 JB012          1     109.92
      1006          3 CH10X          1       9.95
      1006          4 HC100          1     256.99
      1007          1 SB725          2      14.99
      1007          2 RF100          1       4.99
      1008          1 PP101          5       5.87
      1008          2 SM48X          3     119.95
      1008          3 CH10X          1       9.95

18 rows selected.

SQL> select * from product;

P_COD DESCRIPT                       P_DATE           QTY      P_MIN    P_PRICE
----- ------------------------------ --------- ---------- ---------- ----------
    P_DISC     V_CODE
---------- ----------
AB112 Power Drill                    03-NOV-19          8          5     109.99
         0      25595

SB725 7.25in Saw Blade               13-DEC-19         32         15      14.99
       .05      21344

SB900 9.00 in Saw Blade              13-NOV-19         18         12      17.49
         0      21344

CL025 Hrd. Spring 1/4in              15-JAN-20         15          8      39.95
         0      23119

CL050 Hrd. Spring 1/2in              15-JAN-20         23          5      43.99
         0      23119

JB012 Jigsaw 12in Blade              30-DEC-19          8          5     109.92
       .05      24288

JB008 Jigsaw 8in Blade               24-DEC-19          6          5      99.87
       .05      24288

P_COD DESCRIPT                       P_DATE           QTY      P_MIN    P_PRICE
----- ------------------------------ --------- ---------- ---------- ----------
    P_DISC     V_CODE
---------- ----------

CD00X Cordless Drill                 20-JAN-20         12          5      38.95
       .05      25595

CH10X Claw Hammer                    20-JAN-20         23         10       9.95
        .1      21225

SH100 Sledge Hammer                  02-JAN-20          8          5       14.4
       .05

RF100 Rat Tail File                  15-DEC-19         43         20       4.99
         0      21344

HC100 Hicut Chain Saw                07-FEB-20         11          5     256.99
       .05      24288

PP101 PVC Pipe                       20-FEB-20        188         75       5.87
         0

MC001 Metal Screw                    01-MAR-20        172         75       6.99

P_COD DESCRIPT                       P_DATE           QTY      P_MIN    P_PRICE
----- ------------------------------ --------- ---------- ---------- ----------
    P_DISC     V_CODE
---------- ----------
         0      21225

WC025 2.5in wide Screw               24-FEB-20        237        100       8.45
         0      21231

SM48X Steel Malting Mesh             17-JAN-20         18          5     119.95
        .1      25595


16 rows selected.

SQL> select * from vendor;

    V_CODE V_NAME                         V_CONTACT                V_AREA
---------- ------------------------------ -------------------- ----------
   V_PHONE V_ V
---------- -- -
     21225 Bryson, Inc.                   Bella Ford                  615
   2453628 TN Y

     21226 SuperLoo, Inc.                 Ching Ming                  904
   3876330 FL N

     21231 GnB Supply                     Ted Jones                   615
   2889922 TN Y

     21344 Gomez Sons                     Mark Welder                 615
   2986363 KY N

     22587 Downing, Inc.                  Simon Singh                 901
   3985333 GA N

     23119 Blackman Sisters               Svetlana Han                901
   3562429 GA Y

     24004 Almeda House                   Almeda Brown                615
   2787878 TN N

    V_CODE V_NAME                         V_CONTACT                V_AREA
---------- ------------------------------ -------------------- ----------
   V_PHONE V_ V
---------- -- -

     24288 Justin Stores                  Gracy Yu                    615
   2543333 TN Y

     25443 Super Systems                  Ted Hwang                   904
   3561111 FL N

     25501 Silvermines Ltd.               Anne White                  615
   2983455 TN N

     25595 HighEnd Supplies               Smith Rust                  904
   3098773 FL Y


11 rows selected.

SQL> set linesize 50;
SQL> set pagesize 50;
SQL> select * from vendor;

    V_CODE V_NAME
---------- ------------------------------
V_CONTACT                V_AREA    V_PHONE V_ V
-------------------- ---------- ---------- -- -
     21225 Bryson, Inc.
Bella Ford                  615    2453628 TN Y

     21226 SuperLoo, Inc.
Ching Ming                  904    3876330 FL N

     21231 GnB Supply
Ted Jones                   615    2889922 TN Y

     21344 Gomez Sons
Mark Welder                 615    2986363 KY N

     22587 Downing, Inc.
Simon Singh                 901    3985333 GA N

     23119 Blackman Sisters
Svetlana Han                901    3562429 GA Y

     24004 Almeda House
Almeda Brown                615    2787878 TN N

     24288 Justin Stores
Gracy Yu                    615    2543333 TN Y

     25443 Super Systems
Ted Hwang                   904    3561111 FL N

     25501 Silvermines Ltd.
Anne White                  615    2983455 TN N

     25595 HighEnd Supplies
Smith Rust                  904    3098773 FL Y


11 rows selected.

SQL> set linesize 100;
SQL> select * from vendor;

    V_CODE V_NAME                         V_CONTACT                V_AREA    V_PHONE V_ V
---------- ------------------------------ -------------------- ---------- ---------- -- -
     21225 Bryson, Inc.                   Bella Ford                  615    2453628 TN Y
     21226 SuperLoo, Inc.                 Ching Ming                  904    3876330 FL N
     21231 GnB Supply                     Ted Jones                   615    2889922 TN Y
     21344 Gomez Sons                     Mark Welder                 615    2986363 KY N
     22587 Downing, Inc.                  Simon Singh                 901    3985333 GA N
     23119 Blackman Sisters               Svetlana Han                901    3562429 GA Y
     24004 Almeda House                   Almeda Brown                615    2787878 TN N
     24288 Justin Stores                  Gracy Yu                    615    2543333 TN Y
     25443 Super Systems                  Ted Hwang                   904    3561111 FL N
     25501 Silvermines Ltd.               Anne White                  615    2983455 TN N
     25595 HighEnd Supplies               Smith Rust                  904    3098773 FL Y

11 rows selected.

SQL> select * from product;

P_COD DESCRIPT                       P_DATE           QTY      P_MIN    P_PRICE     P_DISC
----- ------------------------------ --------- ---------- ---------- ---------- ----------
    V_CODE
----------
AB112 Power Drill                    03-NOV-19          8          5     109.99          0
     25595

SB725 7.25in Saw Blade               13-DEC-19         32         15      14.99        .05
     21344

SB900 9.00 in Saw Blade              13-NOV-19         18         12      17.49          0
     21344

CL025 Hrd. Spring 1/4in              15-JAN-20         15          8      39.95          0
     23119

CL050 Hrd. Spring 1/2in              15-JAN-20         23          5      43.99          0
     23119

JB012 Jigsaw 12in Blade              30-DEC-19          8          5     109.92        .05
     24288

JB008 Jigsaw 8in Blade               24-DEC-19          6          5      99.87        .05
     24288

CD00X Cordless Drill                 20-JAN-20         12          5      38.95        .05
     25595

CH10X Claw Hammer                    20-JAN-20         23         10       9.95         .1
     21225

SH100 Sledge Hammer                  02-JAN-20          8          5       14.4        .05


RF100 Rat Tail File                  15-DEC-19         43         20       4.99          0
     21344

HC100 Hicut Chain Saw                07-FEB-20         11          5     256.99        .05
     24288

PP101 PVC Pipe                       20-FEB-20        188         75       5.87          0


MC001 Metal Screw                    01-MAR-20        172         75       6.99          0
     21225

WC025 2.5in wide Screw               24-FEB-20        237        100       8.45          0
     21231


P_COD DESCRIPT                       P_DATE           QTY      P_MIN    P_PRICE     P_DISC
----- ------------------------------ --------- ---------- ---------- ---------- ----------
    V_CODE
----------
SM48X Steel Malting Mesh             17-JAN-20         18          5     119.95         .1
     25595


16 rows selected.

SQL> set linesize 150;
SQL> select * from vendor;

    V_CODE V_NAME                         V_CONTACT                V_AREA    V_PHONE V_ V
---------- ------------------------------ -------------------- ---------- ---------- -- -
     21225 Bryson, Inc.                   Bella Ford                  615    2453628 TN Y
     21226 SuperLoo, Inc.                 Ching Ming                  904    3876330 FL N
     21231 GnB Supply                     Ted Jones                   615    2889922 TN Y
     21344 Gomez Sons                     Mark Welder                 615    2986363 KY N
     22587 Downing, Inc.                  Simon Singh                 901    3985333 GA N
     23119 Blackman Sisters               Svetlana Han                901    3562429 GA Y
     24004 Almeda House                   Almeda Brown                615    2787878 TN N
     24288 Justin Stores                  Gracy Yu                    615    2543333 TN Y
     25443 Super Systems                  Ted Hwang                   904    3561111 FL N
     25501 Silvermines Ltd.               Anne White                  615    2983455 TN N
     25595 HighEnd Supplies               Smith Rust                  904    3098773 FL Y

11 rows selected.

SQL> select * from product;

P_COD DESCRIPT                       P_DATE           QTY      P_MIN    P_PRICE     P_DISC     V_CODE
----- ------------------------------ --------- ---------- ---------- ---------- ---------- ----------
AB112 Power Drill                    03-NOV-19          8          5     109.99          0      25595
SB725 7.25in Saw Blade               13-DEC-19         32         15      14.99        .05      21344
SB900 9.00 in Saw Blade              13-NOV-19         18         12      17.49          0      21344
CL025 Hrd. Spring 1/4in              15-JAN-20         15          8      39.95          0      23119
CL050 Hrd. Spring 1/2in              15-JAN-20         23          5      43.99          0      23119
JB012 Jigsaw 12in Blade              30-DEC-19          8          5     109.92        .05      24288
JB008 Jigsaw 8in Blade               24-DEC-19          6          5      99.87        .05      24288
CD00X Cordless Drill                 20-JAN-20         12          5      38.95        .05      25595
CH10X Claw Hammer                    20-JAN-20         23         10       9.95         .1      21225
SH100 Sledge Hammer                  02-JAN-20          8          5       14.4        .05
RF100 Rat Tail File                  15-DEC-19         43         20       4.99          0      21344
HC100 Hicut Chain Saw                07-FEB-20         11          5     256.99        .05      24288
PP101 PVC Pipe                       20-FEB-20        188         75       5.87          0
MC001 Metal Screw                    01-MAR-20        172         75       6.99          0      21225
WC025 2.5in wide Screw               24-FEB-20        237        100       8.45          0      21231
SM48X Steel Malting Mesh             17-JAN-20         18          5     119.95         .1      25595

16 rows selected.

SQL> select * from customer;

    C_CODE LNAME      FNAME          C_AREA    C_PHONE    BALANCE
---------- ---------- ---------- ---------- ---------- ----------
     10010 Anderson   James             615    2933893          0
     10011 Johnson    Elena             713    2753455          0
     10012 Smith      Kathy             615    2873453     345.86
     10013 Paul       Chris             615    2879998     536.75
     10014 Johnson    Bill              615    2455533          0
     10015 Samuels    Julia             713    2345432          0
     10016 Harris     Anne              615    2233445     221.19
     10017 Ford       Gustav            615    2223444     768.93
     10018 Lee        Ming              713    2323234     216.55
     10019 Green      Walter            615    2786403          0

10 rows selected.

SQL> select * from line;

   INV_NUM      L_NUM P_COD    L_UNITS    L_PRICE
---------- ---------- ----- ---------- ----------
      1001          1 SB725          1      14.99
      1001          2 CH10X          1       9.95
      1002          1 RF100          2       4.99
      1003          1 CD00X          1      38.95
      1003          2 CD00X          1      39.95
      1003          3 SB725          5      14.99
      1004          1 RF100          3       4.99
      1004          2 CH10X          2       9.95
      1005          1 PP101         12       5.87
      1006          1 MC001          3       6.99
      1006          2 JB012          1     109.92
      1006          3 CH10X          1       9.95
      1006          4 HC100          1     256.99
      1007          1 SB725          2      14.99
      1007          2 RF100          1       4.99
      1008          1 PP101          5       5.87
      1008          2 SM48X          3     119.95
      1008          3 CH10X          1       9.95

18 rows selected.

SQL> select * from invoice;

   INV_NUM     C_CODE INV_DATE
---------- ---------- ---------
      1001      10014 16-JAN-20
      1002      10011 16-JAN-20
      1003      10012 16-JAN-20
      1004      10018 17-JAN-20
      1005      10011 17-JAN-20
      1006      10014 17-JAN-20
      1007      10015 17-JAN-20
      1008      10011 17-JAN-20

8 rows selected.

SQL> desc user_constraints
 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 OWNER
          VARCHAR2(30)
 CONSTRAINT_NAME                                                                     NOT NULL VARCHAR2(30)
 CONSTRAINT_TYPE
          VARCHAR2(1)
 TABLE_NAME                                                                          NOT NULL VARCHAR2(30)
 SEARCH_CONDITION
          LONG
 R_OWNER
          VARCHAR2(30)
 R_CONSTRAINT_NAME
          VARCHAR2(30)
 DELETE_RULE
          VARCHAR2(9)
 STATUS
          VARCHAR2(8)
 DEFERRABLE
          VARCHAR2(14)
 DEFERRED
          VARCHAR2(9)
 VALIDATED
          VARCHAR2(13)
 GENERATED
          VARCHAR2(14)
 BAD
          VARCHAR2(3)
 RELY
          VARCHAR2(4)
 LAST_CHANGE
          DATE
 INDEX_OWNER
          VARCHAR2(30)
 INDEX_NAME
          VARCHAR2(30)
 INVALID
          VARCHAR2(7)
 VIEW_RELATED
          VARCHAR2(14)

SQL> desc user_constraints
 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 OWNER
          VARCHAR2(30)
 CONSTRAINT_NAME                                                                     NOT NULL VARCHAR2(30)
 CONSTRAINT_TYPE
          VARCHAR2(1)
 TABLE_NAME                                                                          NOT NULL VARCHAR2(30)
 SEARCH_CONDITION
          LONG
 R_OWNER
          VARCHAR2(30)
 R_CONSTRAINT_NAME
          VARCHAR2(30)
 DELETE_RULE
          VARCHAR2(9)
 STATUS
          VARCHAR2(8)
 DEFERRABLE
          VARCHAR2(14)
 DEFERRED
          VARCHAR2(9)
 VALIDATED
          VARCHAR2(13)
 GENERATED
          VARCHAR2(14)
 BAD
          VARCHAR2(3)
 RELY
          VARCHAR2(4)
 LAST_CHANGE
          DATE
 INDEX_OWNER
          VARCHAR2(30)
 INDEX_NAME
          VARCHAR2(30)
 INVALID
          VARCHAR2(7)
 VIEW_RELATED
          VARCHAR2(14)

SQL> desc user_constraints for customer
Usage: DESCRIBE [schema.]object[@db_link]
SQL> desc user_constraints for customer;
Usage: DESCRIBE [schema.]object[@db_link]
SQL> set linesize 50;
SQL> desc user_constraints
 Name                    Null?    Type
 ----------------------- -------- ----------------
 OWNER                            VARCHAR2(30)
 CONSTRAINT_NAME         NOT NULL VARCHAR2(30)
 CONSTRAINT_TYPE                  VARCHAR2(1)
 TABLE_NAME              NOT NULL VARCHAR2(30)
 SEARCH_CONDITION                 LONG
 R_OWNER                          VARCHAR2(30)
 R_CONSTRAINT_NAME                VARCHAR2(30)
 DELETE_RULE                      VARCHAR2(9)
 STATUS                           VARCHAR2(8)
 DEFERRABLE                       VARCHAR2(14)
 DEFERRED                         VARCHAR2(9)
 VALIDATED                        VARCHAR2(13)
 GENERATED                        VARCHAR2(14)
 BAD                              VARCHAR2(3)
 RELY                             VARCHAR2(4)
 LAST_CHANGE                      DATE
 INDEX_OWNER                      VARCHAR2(30)
 INDEX_NAME                       VARCHAR2(30)
 INVALID                          VARCHAR2(7)
 VIEW_RELATED                     VARCHAR2(14)

SQL> select table_name, constraint_name, constraint type
  2  from user_constraints
  3  where table_name = "CUSTOMER";
where table_name = "CUSTOMER"
                   *
ERROR at line 3:
ORA-00904: "CUSTOMER": invalid identifier


SQL> select table_name, constraint_name, constraint type
  2    from user_constraint
  3    where UPPER(table_name) = "CUSTOMER";
  from user_constraint
       *
ERROR at line 2:
ORA-00942: table or view does not exist


SQL> select table_name, constraint_name, constraint type
  2    from user_constraintS
  3    where UPPER(table_name) = "CUSTOMER";
  where UPPER(table_name) = "CUSTOMER"
                            *
ERROR at line 3:
ORA-00904: "CUSTOMER": invalid identifier


SQL> select table_name, constraint_name, constraint type
  2    from user_constraintS
  3    where UPPER(table_name) = 'CUSTOMER';
select table_name, constraint_name, constraint type
                                    *
ERROR at line 1:
ORA-00904: "CONSTRAINT": invalid identifier


SQL> select table_name, constraint_name, constraint_type
  2    from user_constraintS
  3    where UPPER(table_name) = 'CUSTOMER';

TABLE_NAME
------------------------------
CONSTRAINT_NAME                C
------------------------------ -
CUSTOMER
SYS_C0011578                   C

CUSTOMER
SYS_C0011579                   C

CUSTOMER
SYS_C0011580                   C

CUSTOMER
SYS_C0011581                   C

CUSTOMER
SYS_C0011582                   C

CUSTOMER
SYS_C0011583                   C

CUSTOMER
CUSTOMER_CK_C_CODE             C

CUSTOMER
CUSTOMER_CK_C_AREA             C

CUSTOMER
CUSTOMER_PK_C_CODE             P


9 rows selected.

SQL> set linezize 80
SP2-0158: unknown SET option "linezize"
SQL> set linezize 80;
SP2-0158: unknown SET option "linezize"
SQL> set linesize 80
SQL> select table_name, constraint_name, constraint_type
  2    from user_constraintS
  3    where UPPER(table_name) = 'CUSTOMER';

TABLE_NAME                     CONSTRAINT_NAME                C
------------------------------ ------------------------------ -
CUSTOMER                       SYS_C0011578                   C
CUSTOMER                       SYS_C0011579                   C
CUSTOMER                       SYS_C0011580                   C
CUSTOMER                       SYS_C0011581                   C
CUSTOMER                       SYS_C0011582                   C
CUSTOMER                       SYS_C0011583                   C
CUSTOMER                       CUSTOMER_CK_C_CODE             C
CUSTOMER                       CUSTOMER_CK_C_AREA             C
CUSTOMER                       CUSTOMER_PK_C_CODE             P

9 rows selected.

SQL> select table_name, constraint_name, constraint_type
  2    from user_constraintS
  3    where UPPER(table_name) = 'CUSTOMER' and 'LINE';
  where UPPER(table_name) = 'CUSTOMER' and 'LINE'
                                                *
ERROR at line 3:
ORA-00920: invalid relational operator


SQL> select table_name, constraint_name, constraint_type
  2    from user_constraintS
  3    where UPPER(table_name) = 'CUSTOMER';

TABLE_NAME                     CONSTRAINT_NAME                C
------------------------------ ------------------------------ -
CUSTOMER                       SYS_C0011578                   C
CUSTOMER                       SYS_C0011579                   C
CUSTOMER                       SYS_C0011580                   C
CUSTOMER                       SYS_C0011581                   C
CUSTOMER                       SYS_C0011582                   C
CUSTOMER                       SYS_C0011583                   C
CUSTOMER                       CUSTOMER_CK_C_CODE             C
CUSTOMER                       CUSTOMER_CK_C_AREA             C
CUSTOMER                       CUSTOMER_PK_C_CODE             P

9 rows selected.

SQL>
SQL>   select table_name, constraint_name, constraint_type
  2    from user_constraintS
  3    where UPPER(table_name) = 'LINE';

TABLE_NAME                     CONSTRAINT_NAME                C
------------------------------ ------------------------------ -
LINE                           SYS_C0011614                   C
LINE                           SYS_C0011615                   C
LINE                           SYS_C0011616                   C
LINE                           SYS_C0011617                   C
LINE                           SYS_C0011618                   C
LINE                           LINE_CK_L_NUM                  C
LINE                           LINE_CK_L_UNITS                C
LINE                           LINE_CK_L_PRICE                C
LINE                           LINE_PRODUCT_FK_P_CODE         R
LINE                           LINE_INVOICE_FK_INV_NUM        R
LINE                           LINE_PK_INV_NUM_L_NUM          P

11 rows selected.

SQL>
SQL>   select table_name, constraint_name, constraint_type
  2    from user_constraintS
  3    where UPPER(table_name) = 'INVOICE';

TABLE_NAME                     CONSTRAINT_NAME                C
------------------------------ ------------------------------ -
INVOICE                        SYS_C0011587                   C
INVOICE                        SYS_C0011588                   C
INVOICE                        SYS_C0011589                   C
INVOICE                        INVOICE_CK_INV_NUM             C
INVOICE                        INVOICE_CUSTOMER_FK_C_CODE     R
INVOICE                        INVOICE_PK_INV_NUM             P

6 rows selected.

SQL>
SQL>   select table_name, constraint_name, constraint_type
  2    from user_constraintS
  3    where UPPER(table_name) = 'PRODUCT';

TABLE_NAME                     CONSTRAINT_NAME                C
------------------------------ ------------------------------ -
PRODUCT                        SYS_C0011604                   C
PRODUCT                        SYS_C0011605                   C
PRODUCT                        SYS_C0011606                   C
PRODUCT                        SYS_C0011607                   C
PRODUCT                        SYS_C0011608                   C
PRODUCT                        SYS_C0011609                   C
PRODUCT                        SYS_C0011610                   C
PRODUCT                        PRODUCT_CK_P_MIN               C
PRODUCT                        PRODUCT_VENDOR_FK_V_CODE       R
PRODUCT                        PRODUCT_PK_P_CODE              P

10 rows selected.

SQL>
SQL>   select table_name, constraint_name, constraint_type
  2    from user_constraintS
  3    where UPPER(table_name) = 'VENDOR';

TABLE_NAME                     CONSTRAINT_NAME                C
------------------------------ ------------------------------ -
VENDOR                         SYS_C0011593                   C
VENDOR                         SYS_C0011594                   C
VENDOR                         SYS_C0011595                   C
VENDOR                         SYS_C0011596                   C
VENDOR                         SYS_C0011597                   C
VENDOR                         SYS_C0011598                   C
VENDOR                         SYS_C0011599                   C
VENDOR                         VENDOR_CK_V_CODE               C
VENDOR                         VENDOR_CK_V_AREA               C
VENDOR                         VENDOR_CK_V_STATE              C
VENDOR                         VENDOR_PK_V_CODE               P

11 rows selected.

SQL> column descript format a20 wrap
SQL> column qty format 9999
SQL> column pmin format 9999
SQL> column p_min format 9999
SQL> column p_disc format 9999
SQL> column v_code format 9999
SQL> select * from vendor;

V_CODE V_NAME                         V_CONTACT                V_AREA    V_PHONE
------ ------------------------------ -------------------- ---------- ----------
V_ V
-- -
 ##### Bryson, Inc.                   Bella Ford                  615    2453628
TN Y

 ##### SuperLoo, Inc.                 Ching Ming                  904    3876330
FL N

 ##### GnB Supply                     Ted Jones                   615    2889922
TN Y

 ##### Gomez Sons                     Mark Welder                 615    2986363
KY N

 ##### Downing, Inc.                  Simon Singh                 901    3985333
GA N

 ##### Blackman Sisters               Svetlana Han                901    3562429
GA Y

 ##### Almeda House                   Almeda Brown                615    2787878
TN N

 ##### Justin Stores                  Gracy Yu                    615    2543333
TN Y

 ##### Super Systems                  Ted Hwang                   904    3561111
FL N

 ##### Silvermines Ltd.               Anne White                  615    2983455
TN N

 ##### HighEnd Supplies               Smith Rust                  904    3098773
FL Y


11 rows selected.

SQL> /

V_CODE V_NAME                         V_CONTACT                V_AREA    V_PHONE
------ ------------------------------ -------------------- ---------- ----------
V_ V
-- -
 ##### Bryson, Inc.                   Bella Ford                  615    2453628
TN Y

 ##### SuperLoo, Inc.                 Ching Ming                  904    3876330
FL N

 ##### GnB Supply                     Ted Jones                   615    2889922
TN Y

 ##### Gomez Sons                     Mark Welder                 615    2986363
KY N

 ##### Downing, Inc.                  Simon Singh                 901    3985333
GA N

 ##### Blackman Sisters               Svetlana Han                901    3562429
GA Y

 ##### Almeda House                   Almeda Brown                615    2787878
TN N

 ##### Justin Stores                  Gracy Yu                    615    2543333
TN Y

 ##### Super Systems                  Ted Hwang                   904    3561111
FL N

 ##### Silvermines Ltd.               Anne White                  615    2983455
TN N

 ##### HighEnd Supplies               Smith Rust                  904    3098773
FL Y


11 rows selected.

SQL> //

V_CODE V_NAME                         V_CONTACT                V_AREA    V_PHONE
------ ------------------------------ -------------------- ---------- ----------
V_ V
-- -
 ##### Bryson, Inc.                   Bella Ford                  615    2453628
TN Y

 ##### SuperLoo, Inc.                 Ching Ming                  904    3876330
FL N

 ##### GnB Supply                     Ted Jones                   615    2889922
TN Y

 ##### Gomez Sons                     Mark Welder                 615    2986363
KY N

 ##### Downing, Inc.                  Simon Singh                 901    3985333
GA N

 ##### Blackman Sisters               Svetlana Han                901    3562429
GA Y

 ##### Almeda House                   Almeda Brown                615    2787878
TN N

 ##### Justin Stores                  Gracy Yu                    615    2543333
TN Y

 ##### Super Systems                  Ted Hwang                   904    3561111
FL N

 ##### Silvermines Ltd.               Anne White                  615    2983455
TN N

 ##### HighEnd Supplies               Smith Rust                  904    3098773
FL Y


11 rows selected.

SQL> ////

V_CODE V_NAME                         V_CONTACT                V_AREA    V_PHONE
------ ------------------------------ -------------------- ---------- ----------
V_ V
-- -
 ##### Bryson, Inc.                   Bella Ford                  615    2453628
TN Y

 ##### SuperLoo, Inc.                 Ching Ming                  904    3876330
FL N

 ##### GnB Supply                     Ted Jones                   615    2889922
TN Y

 ##### Gomez Sons                     Mark Welder                 615    2986363
KY N

 ##### Downing, Inc.                  Simon Singh                 901    3985333
GA N

 ##### Blackman Sisters               Svetlana Han                901    3562429
GA Y

 ##### Almeda House                   Almeda Brown                615    2787878
TN N

 ##### Justin Stores                  Gracy Yu                    615    2543333
TN Y

 ##### Super Systems                  Ted Hwang                   904    3561111
FL N

 ##### Silvermines Ltd.               Anne White                  615    2983455
TN N

 ##### HighEnd Supplies               Smith Rust                  904    3098773
FL Y


11 rows selected.

SQL> select * from customer;

    C_CODE LNAME      FNAME          C_AREA    C_PHONE    BALANCE
---------- ---------- ---------- ---------- ---------- ----------
     10010 Anderson   James             615    2933893          0
     10011 Johnson    Elena             713    2753455          0
     10012 Smith      Kathy             615    2873453     345.86
     10013 Paul       Chris             615    2879998     536.75
     10014 Johnson    Bill              615    2455533          0
     10015 Samuels    Julia             713    2345432          0
     10016 Harris     Anne              615    2233445     221.19
     10017 Ford       Gustav            615    2223444     768.93
     10018 Lee        Ming              713    2323234     216.55
     10019 Green      Walter            615    2786403          0

10 rows selected.

SQL> select * from invoice;

   INV_NUM     C_CODE INV_DATE
---------- ---------- ---------
      1001      10014 16-JAN-20
      1002      10011 16-JAN-20
      1003      10012 16-JAN-20
      1004      10018 17-JAN-20
      1005      10011 17-JAN-20
      1006      10014 17-JAN-20
      1007      10015 17-JAN-20
      1008      10011 17-JAN-20

8 rows selected.

SQL> select * from product;

P_COD DESCRIPT             P_DATE      QTY P_MIN    P_PRICE P_DISC V_CODE
----- -------------------- --------- ----- ----- ---------- ------ ------
AB112 Power Drill          03-NOV-19     8     5     109.99      0  #####
SB725 7.25in Saw Blade     13-DEC-19    32    15      14.99      0  #####
SB900 9.00 in Saw Blade    13-NOV-19    18    12      17.49      0  #####
CL025 Hrd. Spring 1/4in    15-JAN-20    15     8      39.95      0  #####
CL050 Hrd. Spring 1/2in    15-JAN-20    23     5      43.99      0  #####
JB012 Jigsaw 12in Blade    30-DEC-19     8     5     109.92      0  #####
JB008 Jigsaw 8in Blade     24-DEC-19     6     5      99.87      0  #####
CD00X Cordless Drill       20-JAN-20    12     5      38.95      0  #####
CH10X Claw Hammer          20-JAN-20    23    10       9.95      0  #####
SH100 Sledge Hammer        02-JAN-20     8     5       14.4      0
RF100 Rat Tail File        15-DEC-19    43    20       4.99      0  #####
HC100 Hicut Chain Saw      07-FEB-20    11     5     256.99      0  #####
PP101 PVC Pipe             20-FEB-20   188    75       5.87      0
MC001 Metal Screw          01-MAR-20   172    75       6.99      0  #####
WC025 2.5in wide Screw     24-FEB-20   237   100       8.45      0  #####
SM48X Steel Malting Mesh   17-JAN-20    18     5     119.95      0  #####

16 rows selected.

SQL> select * from invoice;

   INV_NUM     C_CODE INV_DATE
---------- ---------- ---------
      1001      10014 16-JAN-20
      1002      10011 16-JAN-20
      1003      10012 16-JAN-20
      1004      10018 17-JAN-20
      1005      10011 17-JAN-20
      1006      10014 17-JAN-20
      1007      10015 17-JAN-20
      1008      10011 17-JAN-20

8 rows selected.

SQL> select * from line;

   INV_NUM      L_NUM P_COD    L_UNITS    L_PRICE
---------- ---------- ----- ---------- ----------
      1001          1 SB725          1      14.99
      1001          2 CH10X          1       9.95
      1002          1 RF100          2       4.99
      1003          1 CD00X          1      38.95
      1003          2 CD00X          1      39.95
      1003          3 SB725          5      14.99
      1004          1 RF100          3       4.99
      1004          2 CH10X          2       9.95
      1005          1 PP101         12       5.87
      1006          1 MC001          3       6.99
      1006          2 JB012          1     109.92
      1006          3 CH10X          1       9.95
      1006          4 HC100          1     256.99
      1007          1 SB725          2      14.99
      1007          2 RF100          1       4.99
      1008          1 PP101          5       5.87
      1008          2 SM48X          3     119.95
      1008          3 CH10X          1       9.95

18 rows selected.

SQL> INSERT INTO CUSTOMER(10020, 'ROCQUE', 'AARON', 904, 3562098, 500.0);
INSERT INTO CUSTOMER(10020, 'ROCQUE', 'AARON', 904, 3562098, 500.0)
                     *
ERROR at line 1:
ORA-00928: missing SELECT keyword


SQL> INSERT INTO CUSTOMER VALUES(10020, 'ROCQUE', 'AARON', 904, 3562098, 500.0);

1 row created.

SQL> SELECT * FROM CUSTOMER;

    C_CODE LNAME      FNAME          C_AREA    C_PHONE    BALANCE
---------- ---------- ---------- ---------- ---------- ----------
     10010 Anderson   James             615    2933893          0
     10011 Johnson    Elena             713    2753455          0
     10012 Smith      Kathy             615    2873453     345.86
     10013 Paul       Chris             615    2879998     536.75
     10014 Johnson    Bill              615    2455533          0
     10015 Samuels    Julia             713    2345432          0
     10016 Harris     Anne              615    2233445     221.19
     10017 Ford       Gustav            615    2223444     768.93
     10018 Lee        Ming              713    2323234     216.55
     10019 Green      Walter            615    2786403          0
     10020 ROCQUE     AARON             904    3562098        500

11 rows selected.

SQL> SELECT * FROM VENDOR;

V_CODE V_NAME                         V_CONTACT                V_AREA    V_PHONE
------ ------------------------------ -------------------- ---------- ----------
V_ V
-- -
 ##### Bryson, Inc.                   Bella Ford                  615    2453628
TN Y

 ##### SuperLoo, Inc.                 Ching Ming                  904    3876330
FL N

 ##### GnB Supply                     Ted Jones                   615    2889922
TN Y

 ##### Gomez Sons                     Mark Welder                 615    2986363
KY N

 ##### Downing, Inc.                  Simon Singh                 901    3985333
GA N

 ##### Blackman Sisters               Svetlana Han                901    3562429
GA Y

 ##### Almeda House                   Almeda Brown                615    2787878
TN N

 ##### Justin Stores                  Gracy Yu                    615    2543333
TN Y

 ##### Super Systems                  Ted Hwang                   904    3561111
FL N

 ##### Silvermines Ltd.               Anne White                  615    2983455
TN N

 ##### HighEnd Supplies               Smith Rust                  904    3098773
FL Y


11 rows selected.

SQL> SELECT * FROM INVOICE;

   INV_NUM     C_CODE INV_DATE
---------- ---------- ---------
      1001      10014 16-JAN-20
      1002      10011 16-JAN-20
      1003      10012 16-JAN-20
      1004      10018 17-JAN-20
      1005      10011 17-JAN-20
      1006      10014 17-JAN-20
      1007      10015 17-JAN-20
      1008      10011 17-JAN-20

8 rows selected.

SQL> COLUMN V_NAME FORMAT A20
SQL> SET PAGESIZE40
SQL> SET PAGESIZE 40
SQL> SELECT * FROM VENDOR;

V_CODE V_NAME               V_CONTACT                V_AREA    V_PHONE V_ V
------ -------------------- -------------------- ---------- ---------- -- -
 ##### Bryson, Inc.         Bella Ford                  615    2453628 TN Y
 ##### SuperLoo, Inc.       Ching Ming                  904    3876330 FL N
 ##### GnB Supply           Ted Jones                   615    2889922 TN Y
 ##### Gomez Sons           Mark Welder                 615    2986363 KY N
 ##### Downing, Inc.        Simon Singh                 901    3985333 GA N
 ##### Blackman Sisters     Svetlana Han                901    3562429 GA Y
 ##### Almeda House         Almeda Brown                615    2787878 TN N
 ##### Justin Stores        Gracy Yu                    615    2543333 TN Y
 ##### Super Systems        Ted Hwang                   904    3561111 FL N
 ##### Silvermines Ltd.     Anne White                  615    2983455 TN N
 ##### HighEnd Supplies     Smith Rust                  904    3098773 FL Y

11 rows selected.

SQL> column v_code format 9999
SQL> SELECT * FROM VENDOR;

V_CODE V_NAME               V_CONTACT                V_AREA    V_PHONE V_ V
------ -------------------- -------------------- ---------- ---------- -- -
 ##### Bryson, Inc.         Bella Ford                  615    2453628 TN Y
 ##### SuperLoo, Inc.       Ching Ming                  904    3876330 FL N
 ##### GnB Supply           Ted Jones                   615    2889922 TN Y
 ##### Gomez Sons           Mark Welder                 615    2986363 KY N
 ##### Downing, Inc.        Simon Singh                 901    3985333 GA N
 ##### Blackman Sisters     Svetlana Han                901    3562429 GA Y
 ##### Almeda House         Almeda Brown                615    2787878 TN N
 ##### Justin Stores        Gracy Yu                    615    2543333 TN Y
 ##### Super Systems        Ted Hwang                   904    3561111 FL N
 ##### Silvermines Ltd.     Anne White                  615    2983455 TN N
 ##### HighEnd Supplies     Smith Rust                  904    3098773 FL Y

11 rows selected.

SQL> column v_code format 999
SQL> SELECT * FROM VENDOR;

V_CODE V_NAME               V_CONTACT                V_AREA    V_PHONE V_ V
------ -------------------- -------------------- ---------- ---------- -- -
  #### Bryson, Inc.         Bella Ford                  615    2453628 TN Y
  #### SuperLoo, Inc.       Ching Ming                  904    3876330 FL N
  #### GnB Supply           Ted Jones                   615    2889922 TN Y
  #### Gomez Sons           Mark Welder                 615    2986363 KY N
  #### Downing, Inc.        Simon Singh                 901    3985333 GA N
  #### Blackman Sisters     Svetlana Han                901    3562429 GA Y
  #### Almeda House         Almeda Brown                615    2787878 TN N
  #### Justin Stores        Gracy Yu                    615    2543333 TN Y
  #### Super Systems        Ted Hwang                   904    3561111 FL N
  #### Silvermines Ltd.     Anne White                  615    2983455 TN N
  #### HighEnd Supplies     Smith Rust                  904    3098773 FL Y

11 rows selected.

SQL> SELECT * FROM VENDOR;