-- Must set for ClickBench hits_partitioned dataset. See https://github.com/apache/datafusion/issues/16591
-- set datafusion.execution.parquet.binary_as_string = true

SELECT "WatchID", "ClientIP", COUNT(*) AS c, SUM("IsRefresh"), AVG("ResolutionWidth") FROM hits GROUP BY "WatchID", "ClientIP" ORDER BY c DESC LIMIT 10;
