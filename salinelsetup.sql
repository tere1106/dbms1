set echo on
connect system/salinel;
drop user tere cascade;
create user tere identified by calishandy;
alter user tere default tablespace users temporary tablespace temp account unlock;
grant connect, resource to tere;

connect tere/calishandy;
create table members(username varchar2(20) primary key,
                     password varchar2(20) not null,
                     email varchar2(20) not null,
                     access_level varchar2(20),
                     name varchar2(50),
                     last_name varchar2(50),
                     address varchar2(50),
                     question varchar2(100),
                     answer varchar2(100));
                   
create table products(item_code varchar2(20) primary key,
                     item_name varchar2(20) not null,
                     price varchar2(20) not null,
                     category varchar2(20) not null,
                     description varchar2(50),
                     photos blob,
                     comments varchar2(50));
                     
create table payments(username varchar2(20) primary key,
                     item_code varchar2(20) not null,
                     reference_no varchar2(40) not null,
                     total number(100), not null,
                     quantity number(100) not null);
                     
create table auction(username varchar2(20) primary key,
                     item_code varchar2(20) not null,
                     amount number(100) not null);
                     
insert into members(username,password,email)
values("sunshine", "rose", "shinevaughan@yahoo.com");
commit;
                   
