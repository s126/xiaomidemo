grant dba to xiaomi identified by xiaomi;

CREATE TABLE XIAOMI.phone
(
    pid NUMBER PRIMARY KEY,
    phone_name VARCHAR2(30),
    description VARCHAR2(100),
    price NUMBER
);

insert into XIAOMI.phone values ('1','小米手机3','岂止至今最快的手机的小米手机', 1999);
insert into XIAOMI.phone values ('2','红米手机','千元双卡双待神器', 699);
insert into XIAOMI.phone values ('3','红米 note','真八核，5.5英寸超大屏', 799);