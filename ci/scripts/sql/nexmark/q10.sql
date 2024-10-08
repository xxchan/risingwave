-- noinspection SqlNoDataSourceInspectionForFile
-- noinspection SqlResolveForFile
CREATE SINK nexmark_q10 AS
SELECT auction,
       bidder,
       price,
       date_time,
       TO_CHAR(date_time, 'YYYY-MM-DD') as date,
       TO_CHAR(date_time, 'HH:MI')      as time
FROM bid
WITH ( connector = 'blackhole', type = 'append-only', force_append_only = 'true');
