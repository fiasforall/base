create table ACTSTAT (
    actstatid number not null,
    name      varchar2(100 char)
) tablespace fias_tbl;
alter table ACTSTAT add constraint PK_ACTSTAT
    primary key (actstatid) 
    using index tablespace fias_idx;

