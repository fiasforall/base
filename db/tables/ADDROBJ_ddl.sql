create table ADDROBJ (
    aoguid      varchar2(36) not null,
    formalname  varchar2(120 char) not null,
    regioncode  varchar2(2),
    autocode    varchar2(1),
    areacode    varchar2(3),
    citycode    varchar2(3),
    ctarcode    varchar2(3),
    placecode   varchar2(3),
    plancode    varchar2(4),
    streetcode  varchar2(4),
    extrcode    varchar2(4),
    sextcode    varchar2(3),
    offname     varchar2(120 char),
    postalcode  varchar2(6),
    ifnsfl      varchar2(4),
    terrifnsfl  varchar2(4),
    ifnsul      varchar2(4),
    terrifnsul  varchar2(4),
    okato       varchar2(11),
    oktmo       varchar2(11),
    updatedate  date,
    shortname   varchar2(10 char),
    aolevel     number(10),
    parentguid  varchar2(36),
    aoid        varchar2(36) not null,
    previd      varchar2(36),
    nextid      varchar2(36),
    code        varchar2(17),
    plaincode   varchar2(15),
    actstatus   number(10),
    centstatus  number(10),
    operstatus  number(10),
    currstatus  number(10),
    startdate   date,
    enddate     date,
    normdoc     varchar2(36),
    livestatus  number(1),
    cadnum      varchar2(100),
    divtype     number(1)
)
tablespace fias_tbl;

alter table ADDROBJ add constraint PK_ADDROBJ 
    primary key (aoid)
    using index tablespace fias_idx;
    
create bitmap index IDXBM_ADDROBJ_REGIONCODE on ADDROBJ(regioncode)
    tablespace fias_idx;
    
create index IDX_ADDROBJ_AOGUID on ADDROBJ(aoguid)
    tablespace fias_idx;
    
create index IDX_ADDROBJ_PARENTGUID on ADDROBJ(parentguid, actstatus, nextid, currstatus)
    tablespace fias_idx;

comment on table ADDROBJ is 'Реестр образующих элементов';
comment on column ADDROBJ.AOGUID is 'Глобальный уникальный идентификатор адресного объекта';
comment on column ADDROBJ.FORMALNAME is 'Формализованное наименование';
comment on column ADDROBJ.REGIONCODE is 'Код региона';
comment on column ADDROBJ.AUTOCODE is 'Код автономии';
comment on column ADDROBJ.AREACODE is 'Код района';
comment on column ADDROBJ.CITYCODE is 'Код города';
comment on column ADDROBJ.CTARCODE is 'Код внутригородского района';
comment on column ADDROBJ.PLACECODE is 'Код населенного пункта';
comment on column ADDROBJ.PLANCODE is 'Код элемента планировочной структуры';
comment on column ADDROBJ.STREETCODE is 'Код улицы';
comment on column ADDROBJ.EXTRCODE is 'Код дополнительного адресообразующего элемента';
comment on column ADDROBJ.SEXTCODE is 'Код подчиненного дополнительного адресообразующего элемента';
comment on column ADDROBJ.OFFNAME is 'Официальное наименование';
comment on column ADDROBJ.POSTALCODE is 'Почтовый индекс';
comment on column ADDROBJ.IFNSFL is 'Код ИФНС ФЛ';
comment on column ADDROBJ.TERRIFNSFL is 'Код территориального участка ИФНС ФЛ';
comment on column ADDROBJ.IFNSUL is 'Код ИФНС ЮЛ';
comment on column ADDROBJ.TERRIFNSUL is 'Код территориального участка ИФНС ЮЛ';
comment on column ADDROBJ.OKATO is 'ОКАТО';
comment on column ADDROBJ.OKTMO is 'ОКТМО';
comment on column ADDROBJ.UPDATEDATE is 'Дата  внесения (обновления) записи';
comment on column ADDROBJ.SHORTNAME is 'Краткое наименование типа объекта';
comment on column ADDROBJ.AOLEVEL is 'Уровень адресного объекта ';
comment on column ADDROBJ.PARENTGUID is 'Идентификатор объекта родительского объекта';
comment on column ADDROBJ.AOID is 'Уникальный идентификатор записи. Ключевое поле';
comment on column ADDROBJ.PREVID is 'Идентификатор записи связывания с предыдушей исторической записью';
comment on column ADDROBJ.NEXTID is 'Идентификатор записи  связывания с последующей исторической записью';
comment on column ADDROBJ.CODE is 'Код адресного элемента одной строкой с признаком актуальности из классификационного кода';
comment on column ADDROBJ.PLAINCODE is 'Код адресного элемента одной строкой без признака актуальности (последних двух цифр)';
comment on column ADDROBJ.ACTSTATUS is 'Статус последней исторической записи в жизненном цикле адресного объекта: 0 – Не последняя; 1 - Последняя;';
comment on column ADDROBJ.LIVESTATUS is 'Статус актуальности адресного объекта ФИАС на текущую дату: 0 – Не актуальный; 1 - Актуальный;';
comment on column ADDROBJ.CENTSTATUS is 'Статус центра';
comment on column ADDROBJ.OPERSTATUS is 'Статус действия над записью – причина появления записи';
comment on column ADDROBJ.CURRSTATUS is 'Статус актуальности КЛАДР 4 (последние две цифры в коде)';
comment on column ADDROBJ.STARTDATE is 'Начало действия записи';
comment on column ADDROBJ.ENDDATE is 'Окончание действия записи';
comment on column ADDROBJ.NORMDOC is 'Внешний ключ на нормативный документ';
comment on column ADDROBJ.CADNUM is 'Кадастровый номер';
comment on column ADDROBJ.DIVTYPE is 'Тип деления: 0 – не определено; 1 – муниципальное; 2 – административное;';

