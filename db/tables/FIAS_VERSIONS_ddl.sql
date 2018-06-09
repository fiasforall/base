create table FIAS_VERSIONS (
    version_id      integer not null,
    version_txt     varchar2(50 char) not null,
    url_dbf_full    varchar2(200 char),
    url_xml_full    varchar2(200 char),
    url_dbf_upd     varchar2(200 char),
    url_xml_upd     varchar2(200 char),
    url_kladr_arj   varchar2(200 char),
    url_kladr_7z    varchar2(200 char),
    fl_current      number(1) default 0 not null check(fl_current in (0, 1)),
    fl_buffer       number(1) default 0 not null check(fl_buffer in (0, 1)),
    fl_downloaded   number(1) default 0 not null check(fl_downloaded in (0, 1))
)
tablespace fias_tbl;
comment on table FIAS_VERSIONS is 'История версий ФИАС';
comment on column FIAS_VERSIONS.version_id is 'ID версии ФИАС';
comment on column FIAS_VERSIONS.version_txt is 'Наименование версии ФИАС';
comment on column FIAS_VERSIONS.url_dbf_full is 'URL полной ФИАС в формате DBF';
comment on column FIAS_VERSIONS.url_xml_full is 'URL полной ФИАС в формате XML';
comment on column FIAS_VERSIONS.url_dbf_upd is 'URL обновления ФИАС в формате DBF';
comment on column FIAS_VERSIONS.url_xml_upd is 'URL обновления ФИАС в формате XML';
comment on column FIAS_VERSIONS.url_kladr_arj is '';
comment on column FIAS_VERSIONS.url_kladr_7z is '';
comment on column FIAS_VERSIONS.fl_current is 'Признак актуальной версии для данного экземпляра';
comment on column FIAS_VERSIONS.fl_buffer is 'Признак загруженного в буфер обновления';
comment on column FIAS_VERSIONS.fl_downloaded is 'Признак загрузки обнолвения на сервер';

alter table FIAS_VERSIONS add constraint PK_FIAS_VERSIONS primary key (version_id)
    using index tablespace fias_idx;
    
create index IDX_FIAS_VERSION_DATE on FIAS_VERSIONS (regexp_substr(version_txt, '[0-9]{2}.[0-9]{2}.[0-9]{4}'))
    tablespace fias_idx;
