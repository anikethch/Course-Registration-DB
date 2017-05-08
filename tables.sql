--------------------------------------------------------
--  DDL for Table ADMINISTRATOR
--------------------------------------------------------
CREATE TABLE "NTHANIK"."ADMINISTRATOR"
 (	"AID" VARCHAR2(20 BYTE),
"ADMIN_FNAME" VARCHAR2(20 BYTE),
"ADMIN_LNAME" VARCHAR2(20 BYTE),
"ADMIN_PWD" VARCHAR2(20 BYTE),
"DOB" DATE,
"USERNAME" VARCHAR2(20 BYTE),
"SSN" VARCHAR2(20 BYTE),
"ENFORCED" NUMBER(*,0) DEFAULT 0
 )

 --------------------------------------------------------
 --  Constraints for Table ADMINISTRATOR
 --------------------------------------------------------
   ALTER TABLE "NTHANIK"."ADMINISTRATOR" MODIFY ("ADMIN_FNAME" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."ADMINISTRATOR" MODIFY ("ADMIN_LNAME" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."ADMINISTRATOR" MODIFY ("ADMIN_PWD" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."ADMINISTRATOR" MODIFY ("DOB" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."ADMINISTRATOR" MODIFY ("USERNAME" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."ADMINISTRATOR" MODIFY ("SSN" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."ADMINISTRATOR" ADD PRIMARY KEY ("AID")

 --------------------------------------------------------
 --  DDL for Table ACCOUNT
 --------------------------------------------------------
 CREATE TABLE "NTHANIK"."ACCOUNT"
 (	"TOTAL_AMOUNT" FLOAT(126) DEFAULT 0,
"SID" VARCHAR2(20 BYTE),
"BALANCE" FLOAT(126)
 )

 --------------------------------------------------------
 --  Constraints for Table ACCOUNT
 --------------------------------------------------------
ALTER TABLE "NTHANIK"."ACCOUNT" MODIFY ("BALANCE" NOT NULL ENABLE);
ALTER TABLE "NTHANIK"."ACCOUNT" ADD PRIMARY KEY ("SID")

--------------------------------------------------------
--  DDL for Table CLASS_FACULTY
--------------------------------------------------------
CREATE TABLE "NTHANIK"."CLASS_FACULTY"
(	"CLASS_ID" VARCHAR2(20 BYTE),
 	"F_ID" VARCHAR2(20 BYTE)
)
--------------------------------------------------------
--  Constraints for Table CLASS_FACULTY
--------------------------------------------------------
  ALTER TABLE "NTHANIK"."CLASS_FACULTY" MODIFY ("CLASS_ID" NOT NULL ENABLE);
  ALTER TABLE "NTHANIK"."CLASS_FACULTY" MODIFY ("F_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Table CLASSES
--------------------------------------------------------
CREATE TABLE "NTHANIK"."CLASSES"
 (	"CLASS_ID" VARCHAR2(20 BYTE),
"WAITLIST_MAX" NUMBER(*,0),
"TOTAL_COUNT" NUMBER(*,0) DEFAULT 0,
"SEMESTER" VARCHAR2(20 BYTE),
"CUR_YEAR" NUMBER(*,0),
"MAX_COUNT" NUMBER(*,0),
"COURSE_ID" VARCHAR2(20 BYTE)
 )
--------------------------------------------------------
 --  Constraints for Table CLASSES
--------------------------------------------------------
   ALTER TABLE "NTHANIK"."CLASSES" ADD CONSTRAINT "MAXC" CHECK (max_count>=total_count) ENABLE;
   ALTER TABLE "NTHANIK"."CLASSES" MODIFY ("WAITLIST_MAX" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."CLASSES" MODIFY ("SEMESTER" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."CLASSES" MODIFY ("CUR_YEAR" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."CLASSES" MODIFY ("MAX_COUNT" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."CLASSES" MODIFY ("COURSE_ID" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."CLASSES" ADD PRIMARY KEY ("CLASS_ID")
   ALTER TABLE "NTHANIK"."CLASSES" ADD CONSTRAINT "WL" CHECK (waitlist_max<=max_count) ENABLE;

--------------------------------------------------------
   --  DDL for Table COMPARISON
--------------------------------------------------------
 CREATE TABLE "NTHANIK"."COMPARISON"
 (	"SID" VARCHAR2(20 BYTE),
"OLD_GPA" FLOAT(126)
 )
--------------------------------------------------------
 --  Constraints for Table COMPARISON
--------------------------------------------------------
   ALTER TABLE "NTHANIK"."COMPARISON" ADD PRIMARY KEY ("SID")

--------------------------------------------------------
   --  DDL for Table COURSE
--------------------------------------------------------
 CREATE TABLE "NTHANIK"."COURSE"
 (	"COURSE_ID" VARCHAR2(20 BYTE),
"MIN_NUM_OF_CREDITS" NUMBER(*,0),
"MAX_NUM_OF_CREDITS" NUMBER(*,0),
"COURSE_LEVEL" NUMBER(*,0),
"DEPT" VARCHAR2(20 BYTE),
"TITLE" VARCHAR2(50 BYTE)
 )
 --------------------------------------------------------
 --  Constraints for Table COURSE
 --------------------------------------------------------
   ALTER TABLE "NTHANIK"."COURSE" ADD CONSTRAINT "CREDITS" CHECK (min_num_of_credits>0) ENABLE;
   ALTER TABLE "NTHANIK"."COURSE" ADD CONSTRAINT "C_LEVEL" CHECK (course_level in (1,2)) ENABLE;
   ALTER TABLE "NTHANIK"."COURSE" ADD CONSTRAINT "MIN_MAX" CHECK (min_num_of_credits<=max_num_of_credits) ENABLE;
   ALTER TABLE "NTHANIK"."COURSE" MODIFY ("COURSE_LEVEL" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."COURSE" MODIFY ("DEPT" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."COURSE" MODIFY ("TITLE" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."COURSE" ADD PRIMARY KEY ("COURSE_ID")

--------------------------------------------------------
   --  DDL for Table ENROLL
--------------------------------------------------------
 CREATE TABLE "NTHANIK"."ENROLL"
 (	"COURSE_ID" VARCHAR2(20 BYTE),
"CLASS_ID" VARCHAR2(20 BYTE),
"SID" VARCHAR2(20 BYTE),
"NUM_OF_CREDITS" NUMBER(*,0),
"GRADE" VARCHAR2(20 BYTE)
 )

 --------------------------------------------------------
 --  Constraints for Table ENROLL
 --------------------------------------------------------
   ALTER TABLE "NTHANIK"."ENROLL" ADD CONSTRAINT "ALLK" PRIMARY KEY ("COURSE_ID", "SID")

--------------------------------------------------------
   --  DDL for Table FACULTY
--------------------------------------------------------
 CREATE TABLE "NTHANIK"."FACULTY"
  (	"F_ID" VARCHAR2(20 BYTE),
 "F_NAME" VARCHAR2(20 BYTE),
 "L_NAME" VARCHAR2(20 BYTE)
  )

--------------------------------------------------------
--  Constraints for Table FACULTY
--------------------------------------------------------
  ALTER TABLE "NTHANIK"."FACULTY" MODIFY ("F_NAME" NOT NULL ENABLE);
  ALTER TABLE "NTHANIK"."FACULTY" MODIFY ("L_NAME" NOT NULL ENABLE);
  ALTER TABLE "NTHANIK"."FACULTY" ADD PRIMARY KEY ("F_ID")

--------------------------------------------------------
  --  DDL for Table GRADING
--------------------------------------------------------
  CREATE TABLE "NTHANIK"."GRADING"
 (	"GRADE" VARCHAR2(20 BYTE),
"GP" FLOAT(126)
 )

--------------------------------------------------------
--  Constraints for Table GRADING
--------------------------------------------------------
  ALTER TABLE "NTHANIK"."GRADING" MODIFY ("GP" NOT NULL ENABLE);
  ALTER TABLE "NTHANIK"."GRADING" ADD PRIMARY KEY ("GRADE")

-------------------------------------------------------
  --  DDL for Table PENDING
--------------------------------------------------------

 CREATE TABLE "NTHANIK"."PENDING"
 (	"CLASS_ID" VARCHAR2(20 BYTE),
"COURSE_ID" VARCHAR2(20 BYTE),
"SID" VARCHAR2(20 BYTE),
"NUM_OF_CREDITS" NUMBER(*,0)
 )
 --------------------------------------------------------
 --  Constraints for Table PENDING
 --------------------------------------------------------
    ALTER TABLE "NTHANIK"."PENDING" ADD CONSTRAINT "P" PRIMARY KEY ("COURSE_ID", "CLASS_ID", "SID")

--------------------------------------------------------
--  DDL for Table PRE_CONDITION
--------------------------------------------------------

 CREATE TABLE "NTHANIK"."PRE_CONDITION"
 (	"COURSE_ID" VARCHAR2(20 BYTE),
"PREREQ_COURSEID" VARCHAR2(20 BYTE) DEFAULT 'NONE',
"MIN_GPA" FLOAT(126) DEFAULT 0,
"PERM" VARCHAR2(20 BYTE)
 )
--------------------------------------------------------
 --  Constraints for Table PRE_CONDITION
--------------------------------------------------------
   ALTER TABLE "NTHANIK"."PRE_CONDITION" ADD CONSTRAINT "P5" CHECK (perm in ('PREREQ','SPPERM')) ENABLE;
   ALTER TABLE "NTHANIK"."PRE_CONDITION" ADD CONSTRAINT "PK5" PRIMARY KEY ("COURSE_ID", "PREREQ_COURSEID")

--------------------------------------------------------
--  DDL for Table REJECT1
--------------------------------------------------------

 CREATE TABLE "NTHANIK"."REJECT1"
 (	"CLASS_ID" VARCHAR2(20 BYTE),
"COURSE_ID" VARCHAR2(20 BYTE),
"SID" VARCHAR2(20 BYTE)
 )
 --------------------------------------------------------
 --  Constraints for Table REJECT1
 --------------------------------------------------------
   ALTER TABLE "NTHANIK"."REJECT1" ADD CONSTRAINT "P101" PRIMARY KEY ("COURSE_ID", "CLASS_ID", "SID")

--------------------------------------------------------
   --  DDL for Table RSTATUS
--------------------------------------------------------

 CREATE TABLE "NTHANIK"."RSTATUS"
 (	"STUDENT_LEVEL" NUMBER(*,0),
"RESIDENCY" NUMBER(*,0),
"DOLLAR_HOUR" NUMBER(*,0),
"MIN_CREDIT" NUMBER(*,0),
"MAX_CREDIT" NUMBER(*,0)
 )

 --------------------------------------------------------
 --  Constraints for Table RSTATUS
 --------------------------------------------------------
   ALTER TABLE "NTHANIK"."RSTATUS" ADD CONSTRAINT "PK1" PRIMARY KEY ("STUDENT_LEVEL", "RESIDENCY")
   ALTER TABLE "NTHANIK"."RSTATUS" ADD CONSTRAINT "RES2" CHECK (residency in(1,2,3)) ENABLE;
   ALTER TABLE "NTHANIK"."RSTATUS" ADD CONSTRAINT "ST_LEVEL2" CHECK (student_level in (1,2)) ENABLE;
   ALTER TABLE "NTHANIK"."RSTATUS" MODIFY ("STUDENT_LEVEL" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."RSTATUS" MODIFY ("RESIDENCY" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."RSTATUS" MODIFY ("DOLLAR_HOUR" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."RSTATUS" MODIFY ("MIN_CREDIT" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."RSTATUS" MODIFY ("MAX_CREDIT" NOT NULL ENABLE);

--------------------------------------------------------
--  DDL for Table SCHEDULE
--------------------------------------------------------
 CREATE TABLE "NTHANIK"."SCHEDULE"
 (	"CLASS_ID" VARCHAR2(20 BYTE),
"DAYS" VARCHAR2(20 BYTE),
"FROM_TIME" TIMESTAMP (6),
"TO_TIME" TIMESTAMP (6),
"LOCATION" VARCHAR2(20 BYTE)
 )
--------------------------------------------------------
--  Constraints for Table SCHEDULE
--------------------------------------------------------
   ALTER TABLE "NTHANIK"."SCHEDULE" MODIFY ("DAYS" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."SCHEDULE" MODIFY ("FROM_TIME" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."SCHEDULE" MODIFY ("TO_TIME" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."SCHEDULE" MODIFY ("LOCATION" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."SCHEDULE" ADD CONSTRAINT "TIMEE" CHECK (from_time<to_time) ENABLE;

--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------
 CREATE TABLE "NTHANIK"."STUDENT"
 (	"SID" VARCHAR2(20 BYTE),
"FNAME" VARCHAR2(20 BYTE),
"LNAME" VARCHAR2(20 BYTE),
"DID" VARCHAR2(20 BYTE),
"PWD" VARCHAR2(20 BYTE),
"EMAIL" VARCHAR2(20 BYTE),
"STUDENT_LEVEL" NUMBER(*,0),
"RESIDENCY" NUMBER(*,0),
"GPA" FLOAT(126) DEFAULT 0,
"DOB" DATE
 )
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------
   ALTER TABLE "NTHANIK"."STUDENT" ADD CONSTRAINT "RES5" CHECK (residency in(1,2,3)) ENABLE;
   ALTER TABLE "NTHANIK"."STUDENT" ADD CONSTRAINT "ST_LEVEL5" CHECK (student_level in (1,2)) ENABLE;
   ALTER TABLE "NTHANIK"."STUDENT" MODIFY ("FNAME" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."STUDENT" MODIFY ("LNAME" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."STUDENT" MODIFY ("PWD" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."STUDENT" MODIFY ("STUDENT_LEVEL" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."STUDENT" MODIFY ("RESIDENCY" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."STUDENT" ADD PRIMARY KEY ("SID")

--------------------------------------------------------
--  DDL for Table WAITLIST
--------------------------------------------------------
 CREATE TABLE "NTHANIK"."WAITLIST"
 (	"WAITLIST_NO" NUMBER(*,0),
"DROP_ID" VARCHAR2(20 BYTE),
"CLASS_ID" VARCHAR2(20 BYTE),
"SID" VARCHAR2(20 BYTE)
 )

--------------------------------------------------------
--  Constraints for Table WAITLIST
--------------------------------------------------------
   ALTER TABLE "NTHANIK"."WAITLIST" MODIFY ("WAITLIST_NO" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."WAITLIST" MODIFY ("CLASS_ID" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."WAITLIST" MODIFY ("SID" NOT NULL ENABLE);
   ALTER TABLE "NTHANIK"."WAITLIST" ADD PRIMARY KEY ("CLASS_ID", "SID")

 CREATE OR REPLACE TRIGGER "NTHANIK"."ADMINDROP"
after update on administrator
for each row
declare
mincre numeric;
res numeric;
count1 numeric;
lev numeric;
begin
if :new.enforced=1 then
count1:=0;
delete from pending;
delete from reject1;
delete from waitlist;
for s1 in (select sid,sum(num_of_credits) as no_cre from enroll group by sid)
loop
select residency,student_level into res,lev from student where sid=s1.sid;
select min_credit into mincre from rstatus where residency=res and student_level=lev;
if s1.no_cre<mincre then
count1:=count1+1;
end if;
end loop;
for s in (select * from account where balance<>0)
loop
delete from enroll where sid=s.sid;
end loop;
update account set total_amount=0.0;
update account set balance=0.0;
update classes set total_count=0;
for s2 in (select * from student)
loop
insert into comparison values(s2.sid,s2.gpa);
end loop;
if count1<>0 then
RAISE_APPLICATION_ERROR(-20111,'admin drop');
end if;
end if;
end;


 CREATE OR REPLACE TRIGGER "NTHANIK"."TRIG_GPACALC"
before update on enroll
for each row
declare
c_id varchar2(20);
co_id varchar2(20);
g_pa float;
g_rade varchar2(20);
cre1 float;
s_id varchar2(20);
begin
s_id:= :new.sid;
g_rade:= :new.grade;
cre1:= :new.num_of_credits;
co_id:= :new.course_id;
gpafunc(s_id,g_rade,cre1,co_id,c_id,g_pa);
update student set gpa=g_pa where sid=s_id;
end;


CREATE OR REPLACE TRIGGER "NTHANIK"."TRIG_DECREMENTCOUNT"
before delete on enroll
for each row
declare
c_id varchar2(20);
tot numeric;
max1 numeric;
diff numeric;
s_id varchar2(20);
amount float;
res numeric;
lev numeric;
dollar float;
no_cre numeric;
begin
c_id:=:old.class_id;
s_id:=:old.sid;
no_cre:=:old.num_of_credits;
select residency,student_level into res,lev from student where sid=s_id;
select dollar_hour into dollar from rstatus where residency=res and student_level=lev;
select total_amount into amount from account where sid=s_id;
amount:= amount-no_cre*dollar;
update account set total_amount=amount where sid=s_id;
select total_count into tot from classes where class_id=c_id;
tot:=tot-1;
update classes set total_count= tot where class_id=c_id;
select max_count into max1 from classes where class_id=c_id;
if tot<max1 then
update waitlist set waitlist_no=waitlist_no-1 where class_id=c_id;
end if;
end;

CREATE OR REPLACE TRIGGER "NTHANIK"."TRIG_INCREMENTCOUNT"
  before insert on enroll
  for each row
  declare
  c_id varchar2(20);
  tot numeric;
  count2 numeric;
  wait numeric;
  max1 numeric;
  s_id varchar2(20);
  s_p numeric;
  no_cre numeric;
  res numeric;
  lev numeric;
  dollar float;
  amount float;
  maxcre numeric;
  co_id varchar2(20);
  cre1 numeric;
  cur_gpa float;
  mingpa float;
  pre1 varchar2(20);
  count1 numeric;
  co_level numeric;
  spl varchar2(20);
  begin
  s_p:=800;
  c_id:= :new.class_id;
  s_id:= :new.sid;
  co_id:= :new.course_id;
  no_cre:= :new.num_of_credits;
  cre1:=0;
  DBMS_OUTPUT.PUT_LINE(C_ID||CO_ID||S_ID||NO_CRE);

  select total_count into tot from classes where class_id=c_id;
  tot:= tot+1;
DBMS_OUTPUT.PUT_LINE('TOT'||tot);
  select max_count into max1 from classes where class_id=c_id;
  DBMS_OUTPUT.PUT_LINE('max'||max1);
select perm into spl from pre_condition where course_id=co_id;
select course_level into co_level from course where course_id=co_id;
select residency,student_level into res,lev from student where sid=s_id;
select prereq_courseid into pre1 from pre_condition where course_id=co_id;
select dollar_hour,max_credit into dollar,maxcre from rstatus where residency=res and student_level=lev;
creditcount(s_id,cre1);
DBMS_OUTPUT.PUT_LINE(spl);
DBMS_OUTPUT.PUT_LINE(pre1);
proc22(s_id,pre1,count1);
DBMS_OUTPUT.PUT_LINE(count1);
select gpa into cur_gpa from student where sid=s_id;
proctemp(co_id,mingpa);
DBMS_OUTPUT.PUT_LINE(count1);
DBMS_OUTPUT.PUT_LINE('gpa'||cur_gpa||mingpa);
tempproc(s_id,c_id,co_id,count2);
if ((co_level<>lev or spl='SPPERM') and count2=0)  then
pendingproc(s_id,c_id,co_id,no_cre);
RAISE_APPLICATION_ERROR(-20111,'waiting for special permission');
elsif tot>max1 then
DBMS_OUTPUT.PUT_LINE('hhhhhhhh5');
DBMS_OUTPUT.PUT_LINE('tot>max');
log_error_p(c_id,s_id,co_id);
RAISE_APPLICATION_ERROR(-20111,'total count greater than max count');
elsif count1=0 AND pre1<> 'NONE' then
DBMS_OUTPUT.PUT_LINE('hhhhhhhh2');
rejectproc(s_id,c_id,co_id);
RAISE_APPLICATION_ERROR(-20001,'prerequisite not satisfied');
elsif cur_gpa<mingpa then
DBMS_OUTPUT.PUT_LINE('hhhhhhhh1');
rejectproc(s_id,c_id,co_id);
RAISE_APPLICATION_ERROR(-20111,'minimum gpa not satisfied');
elsif cre1+no_cre >maxcre then
rejectproc(s_id,c_id,co_id);
DBMS_OUTPUT.PUT_LINE('hhhhhhhh'||cre1||no_cre||maxcre);
RAISE_APPLICATION_ERROR(-20111,'credits greater than max credits');
else
update classes set total_count= tot where class_id=c_id;
select total_amount into amount from account where sid=s_id;
DBMS_OUTPUT.PUT_LINE('hhhhhhhh');
amount:= amount+no_cre*dollar;
update account set total_amount=amount where sid=s_id;
END IF;
END;


create or replace PROCEDURE         creditcount(s_id IN varchar2,cre1 OUT numeric)
is
sum1 numeric;
PRAGMA AUTONOMOUS_TRANSACTION;
 BEGIN
commit;
sum1:=0;
for s1 in (select * from enroll where sid=s_id)
loop
if s1.grade is NULL then
sum1:=sum1+s1.num_of_credits;
end if;
end loop;
cre1:=sum1;
commit;
END;

create or replace PROCEDURE gpafunc(s_id IN varchar2,g_rade IN varchar2,cre1 IN float,co_id IN varchar2,c_id IN varchar2,g_pa OUT float)
is
val float;
i number:=0;
add float;
f float;
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
g_pa:=0.0;
add:= 0.0;
for s in (select * from enroll where sid=s_id)
loop
if s.grade is NOT NULL then
select gp into val from grading where grade=s.grade;
DBMS_OUTPUT.PUT_LINE('val'||val);
DBMS_OUTPUT.PUT_LINE('grade'||s.grade);
f:=s.num_of_credits*1.0;
g_pa:=g_pa+val*f;
add:= add+ f;
end if;
end loop;
f:=cre1*1.0;
select gp into val from grading where grade=g_rade;
g_pa:=g_pa+val*f;
add:=add+f;
DBMS_OUTPUT.PUT_LINE('gpa'||g_pa);
DBMS_OUTPUT.PUT_LINE('add'||add);
DBMS_OUTPUT.PUT_LINE('cre'||cre1);
DBMS_OUTPUT.PUT_LINE('val'||val);
g_pa:=g_pa/add;
END;

create or replace PROCEDURE         log_error_p(c_id IN varchar2,s_id IN varchar2,co_id IN varchar2)
is wait1 numeric;
waitmax numeric;
PRAGMA AUTONOMOUS_TRANSACTION;
 BEGIN
commit;
wait1:=0;
select waitlist_max into waitmax from classes where class_id=c_id;
DBMS_OUTPUT.PUT_LINE('WAITMAX'||waitmax);
select count(*) into wait1 from waitlist where class_id=c_id;
DBMS_OUTPUT.PUT_LINE('WAIT'||wait1);
wait1:=wait1+1;
if wait1<=waitmax then
insert into waitlist(waitlist_no,class_id,sid) values(wait1,c_id,s_id);
else
insert into reject1 values(c_id,co_id,s_id);
end if;
commit;
END;

create or replace PROCEDURE pendingproc(s_id IN varchar2,c_id IN varchar2,co_id IN varchar2,no_cre IN numeric)
is
cre1 numeric;
PRAGMA AUTONOMOUS_TRANSACTION;
 BEGIN
commit;
cre1:=no_cre;
insert into pending values(c_id,co_id,s_id,cre1);
commit;
END;

create or replace PROCEDURE proc22(s_id IN varchar2,pre1 IN varchar2,count1 OUT numeric)
is
PRAGMA AUTONOMOUS_TRANSACTION;
 BEGIN
commit;
count1:=0;
for s in (select * from enroll where sid=s_id)
loop
IF(S.COURSE_ID = PRE1) THEN
count1:=count1+1;
END IF;
end loop;
commit;
END;

create or replace PROCEDURE proctemp(co_id IN varchar2,mingpa OUT float)
is
PRAGMA AUTONOMOUS_TRANSACTION;
 BEGIN
commit;
mingpa:=0.0;
for s in (select * from pre_condition)
loop
if(s.course_id=co_id) then
mingpa:=s.min_gpa;
end if;
end loop;
mingpa:=mingpa*1.0;
commit;
END;

create or replace PROCEDURE proctemp(co_id IN varchar2,mingpa OUT float)
is
PRAGMA AUTONOMOUS_TRANSACTION;
 BEGIN
commit;
mingpa:=0.0;
for s in (select * from pre_condition)
loop
if(s.course_id=co_id) then
mingpa:=s.min_gpa;
end if;
end loop;
mingpa:=mingpa*1.0;
commit;
END;

create or replace PROCEDURE tempproc(s_id IN varchar2,c_id IN varchar2,co_id IN varchar2,count2 OUT numeric)
is
PRAGMA AUTONOMOUS_TRANSACTION;
 BEGIN
commit;
count2:=0;
for s in (select * from pending)
loop
if s.sid=s_id AND s.course_id=co_id and s.class_id= c_id
then
count2:=count2+1;
end if;
end loop;
end;
