create table member(
       nickName varchar2(100) PRIMARY KEY,
       memID varchar2(100) not null,
       email varchar2(100) not null,
       gender varchar2(100),
       age varchar2(100)
);

drop table member;

-----------------------