
SET SERVEROUT ON
SET PAGESIZE 1000
SET LONG 2000000
SET LINESIZE 400
SET FEEDBACK OFF

DECLARE

  begin_id   number;
  end_id     number;

BEGIN

SELECT min(snap_id)
INTO begin_id
FROM dba_hist_snapshot
WHERE to_char(begin_interval_time,'DD-MON-YY') = to_char(sysdate,'DD-MON-YY');

SELECT max(snap_id)
INTO end_id
FROM dba_hist_snapshot
WHERE to_char(begin_interval_time,'DD-MON-YY') = to_char(sysdate,'DD-MON-YY');

DBMS_OUTPUT.PUT_LINE('AWR Snapshots created today: ' || begin_id || ' ==> ' || end_id );

END;
/

