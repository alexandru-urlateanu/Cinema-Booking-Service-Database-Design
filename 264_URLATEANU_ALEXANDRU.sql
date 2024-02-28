--------------------------------------------------------
--  File created - Sunday-January-16-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BILET
--------------------------------------------------------

  CREATE TABLE "ORADB2"."BILET" 
   (	"ID_BILET" NUMBER(4,0), 
	"ID_REZERVARE" NUMBER(4,0), 
	"FILM" VARCHAR2(40 BYTE), 
	"TIP_BILET" VARCHAR2(20 BYTE), 
	"PRET" NUMBER(3,0), 
	"SALA" VARCHAR2(3 BYTE), 
	"RAND" NUMBER(3,0), 
	"LOC" NUMBER(3,0), 
	"DATA_FILM" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CINEMATOGRAFE
--------------------------------------------------------

  CREATE TABLE "ORADB2"."CINEMATOGRAFE" 
   (	"ID_CINEMATOGRAF" NUMBER(4,0), 
	"NUME" VARCHAR2(40 BYTE), 
	"ORAS" VARCHAR2(30 BYTE), 
	"STRADA" VARCHAR2(70 BYTE), 
	"TELEFON" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CLIENTI
--------------------------------------------------------

  CREATE TABLE "ORADB2"."CLIENTI" 
   (	"ID_CLIENT" NUMBER(4,0), 
	"NUME" VARCHAR2(30 BYTE), 
	"PRENUME" VARCHAR2(30 BYTE), 
	"DATA_NASTERII" DATE, 
	"ADRESA" VARCHAR2(50 BYTE), 
	"NR_TELEFON" VARCHAR2(10 BYTE), 
	"EMAIL" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EVALUARE_FILM
--------------------------------------------------------

  CREATE TABLE "ORADB2"."EVALUARE_FILM" 
   (	"ID_EVALUARE" NUMBER(4,0), 
	"ID_FILM" NUMBER(4,0), 
	"NUME_AUTOR" VARCHAR2(30 BYTE), 
	"PRENUME_AUTOR" VARCHAR2(30 BYTE), 
	"NOTA" NUMBER(2,0), 
	"COMENTARII" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FILME
--------------------------------------------------------

  CREATE TABLE "ORADB2"."FILME" 
   (	"ID_FILM" NUMBER(4,0), 
	"NUME" VARCHAR2(40 BYTE), 
	"DATA_LANSARI" DATE, 
	"DURATA" NUMBER(3,0), 
	"GEN" VARCHAR2(30 BYTE), 
	"REGIZOR" VARCHAR2(50 BYTE), 
	"DISTRIBUTIE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ISTORIC_VIZIONARI
--------------------------------------------------------

  CREATE TABLE "ORADB2"."ISTORIC_VIZIONARI" 
   (	"ID_ISTORIC" NUMBER(4,0), 
	"ID_CLIENT" NUMBER(4,0), 
	"ID_FILM" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PROGRAM
--------------------------------------------------------

  CREATE TABLE "ORADB2"."PROGRAM" 
   (	"ID_PROGRAM" NUMBER(4,0), 
	"ID_CINEMATOGRAF" NUMBER(4,0), 
	"ID_FILM" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REDUCERE
--------------------------------------------------------

  CREATE TABLE "ORADB2"."REDUCERE" 
   (	"ID_REDUCERE" NUMBER(4,0), 
	"TIP" VARCHAR2(20 BYTE), 
	"PROCENT" NUMBER(2,0), 
	"DOVADA" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REZERVARI
--------------------------------------------------------

  CREATE TABLE "ORADB2"."REZERVARI" 
   (	"ID_REZERVARE" NUMBER(4,0), 
	"ID_CLIENT" NUMBER(4,0), 
	"DATA_REZERVARII" DATE, 
	"SUMA_DE_PLATA" NUMBER(3,0), 
	"TIP_CARD" VARCHAR2(20 BYTE), 
	"PROCESATOR_PLATA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SCHEMA_REDUCERE
--------------------------------------------------------

  CREATE TABLE "ORADB2"."SCHEMA_REDUCERE" 
   (	"ID_SCHEMA" NUMBER(4,0), 
	"ID_BILET" NUMBER(4,0), 
	"ID_REDUCERE" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into ORADB2.BILET
SET DEFINE OFF;
Insert into ORADB2.BILET (ID_BILET,ID_REZERVARE,FILM,TIP_BILET,PRET,SALA,RAND,LOC,DATA_FILM) values (800,10,'Scream 5','Elev',20,'10A',14,27,to_date('22-FEB-22','DD-MON-RR'));
Insert into ORADB2.BILET (ID_BILET,ID_REZERVARE,FILM,TIP_BILET,PRET,SALA,RAND,LOC,DATA_FILM) values (801,10,'Scream 5','Elev',20,'10A',14,28,to_date('22-FEB-22','DD-MON-RR'));
Insert into ORADB2.BILET (ID_BILET,ID_REZERVARE,FILM,TIP_BILET,PRET,SALA,RAND,LOC,DATA_FILM) values (802,10,'Scream 5','Elev',20,'10A',14,29,to_date('22-FEB-22','DD-MON-RR'));
Insert into ORADB2.BILET (ID_BILET,ID_REZERVARE,FILM,TIP_BILET,PRET,SALA,RAND,LOC,DATA_FILM) values (803,10,'Scream 5','Elev',20,'10A',14,30,to_date('22-FEB-22','DD-MON-RR'));
Insert into ORADB2.BILET (ID_BILET,ID_REZERVARE,FILM,TIP_BILET,PRET,SALA,RAND,LOC,DATA_FILM) values (804,10,'Scream 5','Elev',20,'10A',14,31,to_date('22-FEB-22','DD-MON-RR'));
Insert into ORADB2.BILET (ID_BILET,ID_REZERVARE,FILM,TIP_BILET,PRET,SALA,RAND,LOC,DATA_FILM) values (805,10,'Scream 5','Elev',20,'10A',14,32,to_date('22-FEB-22','DD-MON-RR'));
Insert into ORADB2.BILET (ID_BILET,ID_REZERVARE,FILM,TIP_BILET,PRET,SALA,RAND,LOC,DATA_FILM) values (806,11,'Tabara','Adult',50,'11B',15,8,to_date('23-FEB-22','DD-MON-RR'));
Insert into ORADB2.BILET (ID_BILET,ID_REZERVARE,FILM,TIP_BILET,PRET,SALA,RAND,LOC,DATA_FILM) values (807,12,'The 355','Pensionar',20,'12A',16,2,to_date('16-APR-22','DD-MON-RR'));
Insert into ORADB2.BILET (ID_BILET,ID_REZERVARE,FILM,TIP_BILET,PRET,SALA,RAND,LOC,DATA_FILM) values (809,14,'The 355','Pensionar',40,'8',12,17,to_date('11-FEB-22','DD-MON-RR'));
Insert into ORADB2.BILET (ID_BILET,ID_REZERVARE,FILM,TIP_BILET,PRET,SALA,RAND,LOC,DATA_FILM) values (808,13,'The 355','Student',100,'9',10,5,to_date('12-MAY-22','DD-MON-RR'));
REM INSERTING into ORADB2.CINEMATOGRAFE
SET DEFINE OFF;
Insert into ORADB2.CINEMATOGRAFE (ID_CINEMATOGRAF,NUME,ORAS,STRADA,TELEFON) values (900,'Happy Cinema','Buzau','Galeria Mall, Bulevardul Unirii 301A','0724203336');
Insert into ORADB2.CINEMATOGRAFE (ID_CINEMATOGRAF,NUME,ORAS,STRADA,TELEFON) values (901,'Cinema City','Buzau','Shopping City, Bulevardul Unirii 232','0314130520');
Insert into ORADB2.CINEMATOGRAFE (ID_CINEMATOGRAF,NUME,ORAS,STRADA,TELEFON) values (902,'Cinema Dacia','Buzau','Piata Daciei 1','0238565800');
Insert into ORADB2.CINEMATOGRAFE (ID_CINEMATOGRAF,NUME,ORAS,STRADA,TELEFON) values (903,'Movieplex Cinema','Bucuresti','Plaza Romania, Bulevardul Timi?oara 26','0214310000');
Insert into ORADB2.CINEMATOGRAFE (ID_CINEMATOGRAF,NUME,ORAS,STRADA,TELEFON) values (905,'Cinemax','Bucuresti','Veranda Mall, Strada Ziduri Mosi 23','0786986150');
Insert into ORADB2.CINEMATOGRAFE (ID_CINEMATOGRAF,NUME,ORAS,STRADA,TELEFON) values (906,'Hollywood Multiplex','Bucuresti','Bucuresti Mall, Calea Vitan 55-59','0213277020');
Insert into ORADB2.CINEMATOGRAFE (ID_CINEMATOGRAF,NUME,ORAS,STRADA,TELEFON) values (907,'IMAX','Bucuresti','AFI Cotroceni, Bulevardul General Vasile Milea 4','0214070000');
Insert into ORADB2.CINEMATOGRAFE (ID_CINEMATOGRAF,NUME,ORAS,STRADA,TELEFON) values (904,'Cineplexx','Bucuresti','Baneasa Shopping City, Soseaua Bucuresti-Ploiesti 42D','0316400100');
REM INSERTING into ORADB2.CLIENTI
SET DEFINE OFF;
Insert into ORADB2.CLIENTI (ID_CLIENT,NUME,PRENUME,DATA_NASTERII,ADRESA,NR_TELEFON,EMAIL) values (1000,'Popescu','Ion',to_date('21-FEB-00','DD-MON-RR'),'Splaiul Independentei 290 Bucuresti','0769674666','popescu.ion@yahoo.com');
Insert into ORADB2.CLIENTI (ID_CLIENT,NUME,PRENUME,DATA_NASTERII,ADRESA,NR_TELEFON,EMAIL) values (1001,'Dumitrache','Radu',to_date('24-APR-00','DD-MON-RR'),'Strada Prieteniei bl 5A ap 14 Buzau','0736519306','dumitrache.radu@yahoo.com');
Insert into ORADB2.CLIENTI (ID_CLIENT,NUME,PRENUME,DATA_NASTERII,ADRESA,NR_TELEFON,EMAIL) values (1002,'Serban','Radu',to_date('22-JUL-97','DD-MON-RR'),'Aleea Tuberozelor bl 3C ap 5 Buzau','0758149748','serban.radu@yahoo.com');
Insert into ORADB2.CLIENTI (ID_CLIENT,NUME,PRENUME,DATA_NASTERII,ADRESA,NR_TELEFON,EMAIL) values (1003,'Necula','Alexandru',to_date('05-OCT-00','DD-MON-RR'),'Aleea Sporturilor bl 7B ap 2 Buzau','0783902130','necula.alexandru@yahoo.com');
Insert into ORADB2.CLIENTI (ID_CLIENT,NUME,PRENUME,DATA_NASTERII,ADRESA,NR_TELEFON,EMAIL) values (1004,'Ion','Gabriel',to_date('03-AUG-00','DD-MON-RR'),'Strada Magnoliei bl 12H ap 10 Buzau','0766296228','ion.gabriel@yahoo.com');
Insert into ORADB2.CLIENTI (ID_CLIENT,NUME,PRENUME,DATA_NASTERII,ADRESA,NR_TELEFON,EMAIL) values (1005,'Zainescu','Marius',to_date('26-JAN-93','DD-MON-RR'),'Bulevardul Ferdinand bl 7C Bucuresti','0726088999','zainescu.marius@yahoo.com');
Insert into ORADB2.CLIENTI (ID_CLIENT,NUME,PRENUME,DATA_NASTERII,ADRESA,NR_TELEFON,EMAIL) values (1006,'Popa','Bogdan',to_date('15-OCT-92','DD-MON-RR'),'Strada Urziceni nr 10A Buzau','0744227389','popa.bogdan@yahoo.com');
Insert into ORADB2.CLIENTI (ID_CLIENT,NUME,PRENUME,DATA_NASTERII,ADRESA,NR_TELEFON,EMAIL) values (1007,'Popescu','Bianca',to_date('29-DEC-99','DD-MON-RR'),'Bulevardul Unirii bl 18J Buzau','0749235968','popescu.bianca@yahoo.com');
Insert into ORADB2.CLIENTI (ID_CLIENT,NUME,PRENUME,DATA_NASTERII,ADRESA,NR_TELEFON,EMAIL) values (1008,'Petrescu','Daria',to_date('26-FEB-98','DD-MON-RR'),'Strada Dorobanti nr 46','0733875231','petrescu.bianca@yahoo.com');
Insert into ORADB2.CLIENTI (ID_CLIENT,NUME,PRENUME,DATA_NASTERII,ADRESA,NR_TELEFON,EMAIL) values (1009,'Dinu','Alina',to_date('24-DEC-73','DD-MON-RR'),'Strada Orizont nr 26','0769233164','dinu.alina@yahoo.com');
Insert into ORADB2.CLIENTI (ID_CLIENT,NUME,PRENUME,DATA_NASTERII,ADRESA,NR_TELEFON,EMAIL) values (1010,'Enache','Daniela',to_date('17-MAR-70','DD-MON-RR'),'Strada Verii nr 114','0723437000','enache.daniela@yahoo.com');
REM INSERTING into ORADB2.EVALUARE_FILM
SET DEFINE OFF;
Insert into ORADB2.EVALUARE_FILM (ID_EVALUARE,ID_FILM,NUME_AUTOR,PRENUME_AUTOR,NOTA,COMENTARII) values (200,100,'Martin','Haffer',7,'Au inghesuit asa multe lucruri intr-un film atat de scurt, incat am ramas confuz');
Insert into ORADB2.EVALUARE_FILM (ID_EVALUARE,ID_FILM,NUME_AUTOR,PRENUME_AUTOR,NOTA,COMENTARII) values (201,100,'Lee','Eisenberg',8,'Timothee Chalamet demonstreaza iar ca este unul dintre cei mai bun actori ai acestei generatii');
Insert into ORADB2.EVALUARE_FILM (ID_EVALUARE,ID_FILM,NUME_AUTOR,PRENUME_AUTOR,NOTA,COMENTARII) values (202,102,'John','Millard',8,'Nu esti din alt univers, nu-i asa?');
Insert into ORADB2.EVALUARE_FILM (ID_EVALUARE,ID_FILM,NUME_AUTOR,PRENUME_AUTOR,NOTA,COMENTARII) values (203,102,'George','Schmidt',9,'Efecte vizuale superbe, scene de actiune pline de suspans');
Insert into ORADB2.EVALUARE_FILM (ID_EVALUARE,ID_FILM,NUME_AUTOR,PRENUME_AUTOR,NOTA,COMENTARII) values (204,101,'Paul','Johnson',8,'Ma bucur ca noua generatie se poate bucura de un film Matrix');
REM INSERTING into ORADB2.FILME
SET DEFINE OFF;
Insert into ORADB2.FILME (ID_FILM,NUME,DATA_LANSARI,DURATA,GEN,REGIZOR,DISTRIBUTIE) values (100,'Dune',to_date('21-OCT-21','DD-MON-RR'),156,'Science Fiction','Denis Villeneuve','Timothee Chalamet, Rebecca Ferguson, Oscar Isaac, Dave Bautista');
Insert into ORADB2.FILME (ID_FILM,NUME,DATA_LANSARI,DURATA,GEN,REGIZOR,DISTRIBUTIE) values (101,'Matrix Renasterea',to_date('22-DEC-21','DD-MON-RR'),148,'Science Fiction/Actiune','Lana Wachowski','Keanu Reeves, Carrie-Anne Moss, Jonathan Groff');
Insert into ORADB2.FILME (ID_FILM,NUME,DATA_LANSARI,DURATA,GEN,REGIZOR,DISTRIBUTIE) values (102,'Omul-Paianjen: Niciun drum spre casa',to_date('13-DEC-21','DD-MON-RR'),148,'Supereroi/Actiune','Joe Watts','Tom Holland, Zendaya, Benedict Cumberbatch, Marisa Tomei, Andrew Garfield, Tobey Maguire');
Insert into ORADB2.FILME (ID_FILM,NUME,DATA_LANSARI,DURATA,GEN,REGIZOR,DISTRIBUTIE) values (105,'Tabara',to_date('31-DEC-21','DD-MON-RR'),81,'Actiune/Comedie','Vali Dobrogeanu','Andrei Selaru, Diana Condurache, Andrei Gavril, Madalin Serban');
Insert into ORADB2.FILME (ID_FILM,NUME,DATA_LANSARI,DURATA,GEN,REGIZOR,DISTRIBUTIE) values (106,'The King''s Man-Inceputul',to_date('22-DEC-21','DD-MON-RR'),131,'Spy/Actiune/Comedie','Matthew Vaughn','Ralph Fiennes, Gemma Arterton, Rhys Ifans, Matthew Goode, Tom Hollander');
Insert into ORADB2.FILME (ID_FILM,NUME,DATA_LANSARI,DURATA,GEN,REGIZOR,DISTRIBUTIE) values (107,'The 355',to_date('07-DEC-22','DD-MON-RR'),124,'Spy','Simon Kinberg','Jessica Chastain, Pen�lope Cruz, Fan Bingbing, Diane Kruger');
Insert into ORADB2.FILME (ID_FILM,NUME,DATA_LANSARI,DURATA,GEN,REGIZOR,DISTRIBUTIE) values (108,'Clifford: Marele caine rosu',to_date('10-NOV-21','DD-MON-RR'),96,'Aventura/Comedie','Walt Becker','Jack Whitehall, Darby Camp, Tony Hale, Sienna Guillory');
Insert into ORADB2.FILME (ID_FILM,NUME,DATA_LANSARI,DURATA,GEN,REGIZOR,DISTRIBUTIE) values (109,'Hai sa cantam din nou!',to_date('22-DEC-21','DD-MON-RR'),110,'Animatie/Musical/Comedie','Garth Jennings','Matthew McConaughey, Reese Witherspoon, Scarlett Johansson');
Insert into ORADB2.FILME (ID_FILM,NUME,DATA_LANSARI,DURATA,GEN,REGIZOR,DISTRIBUTIE) values (110,'The Many Saints of Newmark',to_date('01-SEP-21','DD-MON-RR'),120,'Crima/Drama','Alan Taylor','Alessandro Nivola, Leslie Odom Jr, Jon Bernthal, Corey Stoll, Michael Gandolfini');
Insert into ORADB2.FILME (ID_FILM,NUME,DATA_LANSARI,DURATA,GEN,REGIZOR,DISTRIBUTIE) values (111,'Nu e vreme de murit',to_date('08-SEP-21','DD-MON-RR'),163,'Spy','Cary Joji Fukunaga','Daniel Craig, Rami Malek, L�a Seydoux');
Insert into ORADB2.FILME (ID_FILM,NUME,DATA_LANSARI,DURATA,GEN,REGIZOR,DISTRIBUTIE) values (104,'Scream 5',to_date('14-JAN-22','DD-MON-RR'),114,'Horror','Matt Bettinelli-Olpin, Tyler Gillett','David Arquette, Neve Campbell, Courteney Cox, Melissa Barrera, Jenna Ortega');
REM INSERTING into ORADB2.ISTORIC_VIZIONARI
SET DEFINE OFF;
Insert into ORADB2.ISTORIC_VIZIONARI (ID_ISTORIC,ID_CLIENT,ID_FILM) values (70,1000,104);
Insert into ORADB2.ISTORIC_VIZIONARI (ID_ISTORIC,ID_CLIENT,ID_FILM) values (71,1000,102);
Insert into ORADB2.ISTORIC_VIZIONARI (ID_ISTORIC,ID_CLIENT,ID_FILM) values (72,1003,107);
Insert into ORADB2.ISTORIC_VIZIONARI (ID_ISTORIC,ID_CLIENT,ID_FILM) values (73,1009,108);
Insert into ORADB2.ISTORIC_VIZIONARI (ID_ISTORIC,ID_CLIENT,ID_FILM) values (74,1010,109);
REM INSERTING into ORADB2.PROGRAM
SET DEFINE OFF;
Insert into ORADB2.PROGRAM (ID_PROGRAM,ID_CINEMATOGRAF,ID_FILM) values (500,900,100);
Insert into ORADB2.PROGRAM (ID_PROGRAM,ID_CINEMATOGRAF,ID_FILM) values (501,900,101);
Insert into ORADB2.PROGRAM (ID_PROGRAM,ID_CINEMATOGRAF,ID_FILM) values (502,900,102);
Insert into ORADB2.PROGRAM (ID_PROGRAM,ID_CINEMATOGRAF,ID_FILM) values (504,901,107);
Insert into ORADB2.PROGRAM (ID_PROGRAM,ID_CINEMATOGRAF,ID_FILM) values (505,901,108);
Insert into ORADB2.PROGRAM (ID_PROGRAM,ID_CINEMATOGRAF,ID_FILM) values (506,901,109);
Insert into ORADB2.PROGRAM (ID_PROGRAM,ID_CINEMATOGRAF,ID_FILM) values (507,902,105);
Insert into ORADB2.PROGRAM (ID_PROGRAM,ID_CINEMATOGRAF,ID_FILM) values (508,902,111);
Insert into ORADB2.PROGRAM (ID_PROGRAM,ID_CINEMATOGRAF,ID_FILM) values (509,903,107);
Insert into ORADB2.PROGRAM (ID_PROGRAM,ID_CINEMATOGRAF,ID_FILM) values (510,903,110);
Insert into ORADB2.PROGRAM (ID_PROGRAM,ID_CINEMATOGRAF,ID_FILM) values (511,904,102);
Insert into ORADB2.PROGRAM (ID_PROGRAM,ID_CINEMATOGRAF,ID_FILM) values (512,905,109);
Insert into ORADB2.PROGRAM (ID_PROGRAM,ID_CINEMATOGRAF,ID_FILM) values (513,906,111);
Insert into ORADB2.PROGRAM (ID_PROGRAM,ID_CINEMATOGRAF,ID_FILM) values (514,907,104);
Insert into ORADB2.PROGRAM (ID_PROGRAM,ID_CINEMATOGRAF,ID_FILM) values (515,907,106);
REM INSERTING into ORADB2.REDUCERE
SET DEFINE OFF;
Insert into ORADB2.REDUCERE (ID_REDUCERE,TIP,PROCENT,DOVADA) values (300,'Elev',20,'Carnet de elev');
Insert into ORADB2.REDUCERE (ID_REDUCERE,TIP,PROCENT,DOVADA) values (301,'Student',20,'Legitimatie de student');
Insert into ORADB2.REDUCERE (ID_REDUCERE,TIP,PROCENT,DOVADA) values (302,'Pensionar',35,'Cupon de pensie');
Insert into ORADB2.REDUCERE (ID_REDUCERE,TIP,PROCENT,DOVADA) values (303,'Persoana cu handicap',50,'Certificat de handicap');
Insert into ORADB2.REDUCERE (ID_REDUCERE,TIP,PROCENT,DOVADA) values (304,'Copil',30,'Nu este nevoie');
REM INSERTING into ORADB2.REZERVARI
SET DEFINE OFF;
Insert into ORADB2.REZERVARI (ID_REZERVARE,ID_CLIENT,DATA_REZERVARII,SUMA_DE_PLATA,TIP_CARD,PROCESATOR_PLATA) values (10,1000,to_date('16-JAN-22','DD-MON-RR'),120,'Visa','Upay');
Insert into ORADB2.REZERVARI (ID_REZERVARE,ID_CLIENT,DATA_REZERVARII,SUMA_DE_PLATA,TIP_CARD,PROCESATOR_PLATA) values (11,1000,to_date('16-JAN-22','DD-MON-RR'),50,'Mastercard','LibraPay');
Insert into ORADB2.REZERVARI (ID_REZERVARE,ID_CLIENT,DATA_REZERVARII,SUMA_DE_PLATA,TIP_CARD,PROCESATOR_PLATA) values (12,1003,to_date('17-JAN-22','DD-MON-RR'),20,'Revolut','EuPlatesc');
Insert into ORADB2.REZERVARI (ID_REZERVARE,ID_CLIENT,DATA_REZERVARII,SUMA_DE_PLATA,TIP_CARD,PROCESATOR_PLATA) values (13,1009,to_date('14-JAN-22','DD-MON-RR'),100,'Mastercard','LibraPay');
Insert into ORADB2.REZERVARI (ID_REZERVARE,ID_CLIENT,DATA_REZERVARII,SUMA_DE_PLATA,TIP_CARD,PROCESATOR_PLATA) values (14,1010,to_date('10-JAN-22','DD-MON-RR'),40,'Revolut','EuPlatesc');
REM INSERTING into ORADB2.SCHEMA_REDUCERE
SET DEFINE OFF;
Insert into ORADB2.SCHEMA_REDUCERE (ID_SCHEMA,ID_BILET,ID_REDUCERE) values (200,800,300);
Insert into ORADB2.SCHEMA_REDUCERE (ID_SCHEMA,ID_BILET,ID_REDUCERE) values (201,801,300);
Insert into ORADB2.SCHEMA_REDUCERE (ID_SCHEMA,ID_BILET,ID_REDUCERE) values (202,802,300);
Insert into ORADB2.SCHEMA_REDUCERE (ID_SCHEMA,ID_BILET,ID_REDUCERE) values (203,803,300);
Insert into ORADB2.SCHEMA_REDUCERE (ID_SCHEMA,ID_BILET,ID_REDUCERE) values (204,804,300);
Insert into ORADB2.SCHEMA_REDUCERE (ID_SCHEMA,ID_BILET,ID_REDUCERE) values (205,805,300);
Insert into ORADB2.SCHEMA_REDUCERE (ID_SCHEMA,ID_BILET,ID_REDUCERE) values (206,807,302);
Insert into ORADB2.SCHEMA_REDUCERE (ID_SCHEMA,ID_BILET,ID_REDUCERE) values (207,809,302);
Insert into ORADB2.SCHEMA_REDUCERE (ID_SCHEMA,ID_BILET,ID_REDUCERE) values (209,808,301);
--------------------------------------------------------
--  DDL for Index PK_EVALUARE
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORADB2"."PK_EVALUARE" ON "ORADB2"."EVALUARE_FILM" ("ID_EVALUARE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_CINEMATOGRAF
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORADB2"."PK_CINEMATOGRAF" ON "ORADB2"."CINEMATOGRAFE" ("ID_CINEMATOGRAF") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_REZERVARE
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORADB2"."PK_REZERVARE" ON "ORADB2"."REZERVARI" ("ID_REZERVARE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_PROGRAM
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORADB2"."PK_PROGRAM" ON "ORADB2"."PROGRAM" ("ID_PROGRAM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_ISTORIC
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORADB2"."PK_ISTORIC" ON "ORADB2"."ISTORIC_VIZIONARI" ("ID_ISTORIC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_REDUCERE
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORADB2"."PK_REDUCERE" ON "ORADB2"."REDUCERE" ("ID_REDUCERE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_CLIENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORADB2"."PK_CLIENT" ON "ORADB2"."CLIENTI" ("ID_CLIENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_BILET
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORADB2"."PK_BILET" ON "ORADB2"."BILET" ("ID_BILET") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_FILM
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORADB2"."PK_FILM" ON "ORADB2"."FILME" ("ID_FILM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_SCHEMA
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORADB2"."PK_SCHEMA" ON "ORADB2"."SCHEMA_REDUCERE" ("ID_SCHEMA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CLIENTI
--------------------------------------------------------

  ALTER TABLE "ORADB2"."CLIENTI" ADD CONSTRAINT "PK_CLIENT" PRIMARY KEY ("ID_CLIENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ORADB2"."CLIENTI" MODIFY ("EMAIL" CONSTRAINT "EMAIL_NN" NOT NULL ENABLE);
  ALTER TABLE "ORADB2"."CLIENTI" MODIFY ("PRENUME" CONSTRAINT "PRENUME_CLIENT_NN" NOT NULL ENABLE);
  ALTER TABLE "ORADB2"."CLIENTI" MODIFY ("NUME" CONSTRAINT "NUME_CLIENT_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROGRAM
--------------------------------------------------------

  ALTER TABLE "ORADB2"."PROGRAM" ADD CONSTRAINT "PK_PROGRAM" PRIMARY KEY ("ID_PROGRAM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ORADB2"."PROGRAM" MODIFY ("ID_FILM" CONSTRAINT "ID_FILM_PROGRAM_NN" NOT NULL ENABLE);
  ALTER TABLE "ORADB2"."PROGRAM" MODIFY ("ID_CINEMATOGRAF" CONSTRAINT "ID_CINEMATOGRAF_PROGRAM_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REZERVARI
--------------------------------------------------------

  ALTER TABLE "ORADB2"."REZERVARI" ADD CONSTRAINT "PK_REZERVARE" PRIMARY KEY ("ID_REZERVARE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ORADB2"."REZERVARI" MODIFY ("DATA_REZERVARII" CONSTRAINT "DATA_REZERVARII_NN" NOT NULL ENABLE);
  ALTER TABLE "ORADB2"."REZERVARI" MODIFY ("ID_CLIENT" CONSTRAINT "ID_CLIENT_REZERVARE_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CINEMATOGRAFE
--------------------------------------------------------

  ALTER TABLE "ORADB2"."CINEMATOGRAFE" ADD CONSTRAINT "PK_CINEMATOGRAF" PRIMARY KEY ("ID_CINEMATOGRAF")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ORADB2"."CINEMATOGRAFE" MODIFY ("NUME" CONSTRAINT "NUME_CINEMATOGRAF_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SCHEMA_REDUCERE
--------------------------------------------------------

  ALTER TABLE "ORADB2"."SCHEMA_REDUCERE" ADD CONSTRAINT "PK_SCHEMA" PRIMARY KEY ("ID_SCHEMA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ORADB2"."SCHEMA_REDUCERE" MODIFY ("ID_REDUCERE" CONSTRAINT "ID_REDUCERE_SCHEMA_NN" NOT NULL ENABLE);
  ALTER TABLE "ORADB2"."SCHEMA_REDUCERE" MODIFY ("ID_BILET" CONSTRAINT "ID_BILET_SCHEMA_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ISTORIC_VIZIONARI
--------------------------------------------------------

  ALTER TABLE "ORADB2"."ISTORIC_VIZIONARI" ADD CONSTRAINT "PK_ISTORIC" PRIMARY KEY ("ID_ISTORIC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ORADB2"."ISTORIC_VIZIONARI" MODIFY ("ID_FILM" CONSTRAINT "ID_FILM_ISTORIC_NN" NOT NULL ENABLE);
  ALTER TABLE "ORADB2"."ISTORIC_VIZIONARI" MODIFY ("ID_CLIENT" CONSTRAINT "ID_CLIENT_ISTORIC_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FILME
--------------------------------------------------------

  ALTER TABLE "ORADB2"."FILME" ADD CONSTRAINT "PK_FILM" PRIMARY KEY ("ID_FILM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ORADB2"."FILME" MODIFY ("NUME" CONSTRAINT "NUME_FILM_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REDUCERE
--------------------------------------------------------

  ALTER TABLE "ORADB2"."REDUCERE" ADD CONSTRAINT "PK_REDUCERE" PRIMARY KEY ("ID_REDUCERE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BILET
--------------------------------------------------------

  ALTER TABLE "ORADB2"."BILET" ADD CONSTRAINT "PK_BILET" PRIMARY KEY ("ID_BILET")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ORADB2"."BILET" MODIFY ("TIP_BILET" CONSTRAINT "TIP_BILET_NN" NOT NULL ENABLE);
  ALTER TABLE "ORADB2"."BILET" MODIFY ("FILM" CONSTRAINT "FILM_NN" NOT NULL ENABLE);
  ALTER TABLE "ORADB2"."BILET" MODIFY ("ID_REZERVARE" CONSTRAINT "ID_REZERVARE_BILET_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EVALUARE_FILM
--------------------------------------------------------

  ALTER TABLE "ORADB2"."EVALUARE_FILM" MODIFY ("NOTA" NOT NULL ENABLE);
  ALTER TABLE "ORADB2"."EVALUARE_FILM" ADD CONSTRAINT "PK_EVALUARE" PRIMARY KEY ("ID_EVALUARE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ORADB2"."EVALUARE_FILM" MODIFY ("ID_FILM" CONSTRAINT "ID_FILM_EVALUARE_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BILET
--------------------------------------------------------

  ALTER TABLE "ORADB2"."BILET" ADD CONSTRAINT "FK_REZERVARE_BILET" FOREIGN KEY ("ID_REZERVARE")
	  REFERENCES "ORADB2"."REZERVARI" ("ID_REZERVARE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EVALUARE_FILM
--------------------------------------------------------

  ALTER TABLE "ORADB2"."EVALUARE_FILM" ADD CONSTRAINT "FK_FILM_EVALUARE" FOREIGN KEY ("ID_FILM")
	  REFERENCES "ORADB2"."FILME" ("ID_FILM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ISTORIC_VIZIONARI
--------------------------------------------------------

  ALTER TABLE "ORADB2"."ISTORIC_VIZIONARI" ADD CONSTRAINT "FK_CLIENT_ISTORIC" FOREIGN KEY ("ID_CLIENT")
	  REFERENCES "ORADB2"."CLIENTI" ("ID_CLIENT") ENABLE;
  ALTER TABLE "ORADB2"."ISTORIC_VIZIONARI" ADD CONSTRAINT "FK_FILM_ISTORIC" FOREIGN KEY ("ID_FILM")
	  REFERENCES "ORADB2"."FILME" ("ID_FILM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROGRAM
--------------------------------------------------------

  ALTER TABLE "ORADB2"."PROGRAM" ADD CONSTRAINT "FK_CINEMATOGRAF_PROGRAM" FOREIGN KEY ("ID_CINEMATOGRAF")
	  REFERENCES "ORADB2"."CINEMATOGRAFE" ("ID_CINEMATOGRAF") ENABLE;
  ALTER TABLE "ORADB2"."PROGRAM" ADD CONSTRAINT "FK_FILM_PROGRAM" FOREIGN KEY ("ID_FILM")
	  REFERENCES "ORADB2"."FILME" ("ID_FILM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REZERVARI
--------------------------------------------------------

  ALTER TABLE "ORADB2"."REZERVARI" ADD CONSTRAINT "FK_CLIENT_REZERVARI" FOREIGN KEY ("ID_CLIENT")
	  REFERENCES "ORADB2"."CLIENTI" ("ID_CLIENT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SCHEMA_REDUCERE
--------------------------------------------------------

  ALTER TABLE "ORADB2"."SCHEMA_REDUCERE" ADD CONSTRAINT "FK_BILET_SCHEMA" FOREIGN KEY ("ID_BILET")
	  REFERENCES "ORADB2"."BILET" ("ID_BILET") ENABLE;
  ALTER TABLE "ORADB2"."SCHEMA_REDUCERE" ADD CONSTRAINT "FK_REDUCERE_SCHEMA" FOREIGN KEY ("ID_REDUCERE")
	  REFERENCES "ORADB2"."REDUCERE" ("ID_REDUCERE") ENABLE;
