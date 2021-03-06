alter session set "_ORACLE_SCRIPT"=true; 
variable pwd varchar2(20);
CREATE USER "FIAS" IDENTIFIED BY &pwd
DEFAULT TABLESPACE FIAS_TBL
TEMPORARY TABLESPACE TEMP;
ALTER USER FIAS QUOTA UNLIMITED ON FIAS_TBL;
ALTER USER FIAS QUOTA UNLIMITED ON FIAS_IDX;
GRANT CONNECT TO FIAS;
GRANT RESOURCE TO FIAS;
GRANT CREATE PUBLIC SYNONYM TO FIAS;
GRANT CREATE SYNONYM TO FIAS;
GRANT CREATE VIEW TO FIAS;
GRANT ALTER SESSION TO FIAS;
GRANT CREATE JOB TO FIAS;
GRANT CREATE MATERIALIZED VIEW TO FIAS;
GRANT CREATE ROLE TO FIAS;
GRANT DEBUG CONNECT SESSION TO FIAS;
GRANT RESTRICTED SESSION TO FIAS;
GRANT SELECT_CATALOG_ROLE TO FIAS;
GRANT READ ON DIRECTORY XMLDIR TO FIAS;
GRANT CREATE TYPE TO FIAS;
GRANT CREATE TRIGGER TO FIAS;
GRANT JAVAUSERPRIV TO FIAS;
GRANT EXECUTE ON UTL_HTTP TO FIAS;
grant create table to FIAS;
grant DEBUG CONNECT SESSION, DEBUG ANY PROCEDURE to FIAS;
