# Partitioning Performance Report

## Objective
To optimize query performance on the large `Booking` table by partitioning it based on the `start_date` column.

## Approach
1. The original `Booking` table was renamed.
2. A new `Booking` table was created with `RANGE` partitioning on the `start_date` column.
3. Four partitions were created, each covering a single year.
4. Data from the original table was inserted into the new partitioned table.
5. Query performance was tested using `EXPLAIN ANALYZE` on a date range query.

## Observations
- **Before Partitioning**: The query scanned the entire `Booking` table (sequential scan).
- **After Partitioning**: The query accessed only the relevant partition (e.g., `Booking_2023`) based on the date filter.
- **Result**: Significant reduction in query execution time for date-specific queries due to partition pruning.

## Conclusion
Partitioning by `start_date` improved query performance for date-range filtering and made the dataset easier to manage. This technique is particularly useful when working with time-series data or large historical datasets.
