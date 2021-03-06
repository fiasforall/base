CREATE BIGFILE TABLESPACE "FIAS_TBL"
DATAFILE '/u02/FIAS_TBL_dtf.dbf' SIZE 1024M AUTOEXTEND ON NEXT 100M
LOGGING
DEFAULT NOCOMPRESS
ONLINE
EXTENT MANAGEMENT LOCAL AUTOALLOCATE
SEGMENT SPACE MANAGEMENT AUTO;

CREATE BIGFILE TABLESPACE "FIAS_IDX"
DATAFILE '/u02/FIAS_IDX_dtf.dbf' SIZE 1024M AUTOEXTEND ON NEXT 100M
LOGGING
DEFAULT NOCOMPRESS
ONLINE
EXTENT MANAGEMENT LOCAL AUTOALLOCATE
SEGMENT SPACE MANAGEMENT AUTO;

