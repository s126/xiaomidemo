grant dba to xiaomi identified by xiaomi;

CREATE TABLE XIAOMI.phone
(
    pid NUMBER PRIMARY KEY,
    phone_name VARCHAR2(30),
    description VARCHAR2(100),
    price NUMBER
);

insert into XIAOMI.phone values ('1','С���ֻ�3','��ֹ���������ֻ���С���ֻ�', 1999);
insert into XIAOMI.phone values ('2','�����ֻ�','ǧԪ˫��˫������', 699);
insert into XIAOMI.phone values ('3','���� note','��˺ˣ�5.5Ӣ�糬����', 799);