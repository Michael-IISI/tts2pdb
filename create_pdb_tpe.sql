create pluggable database TPE admin user adm identified by adm file_name_convert=('pdbseed', 'tpe');
alter pluggable database TPE open;
alter pluggable database TPE save state;
alter session set container=TPE;

create directory mydir as '/u02/oradata/CDB2/mydir';
grant read, write on directory mydir to system;
create public database link SOURCEDB connect to system identified by oracle using 'FTEX';
