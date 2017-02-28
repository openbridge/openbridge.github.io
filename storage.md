# Openbridge Data Warehouse Services


## Overview

Openbridge Data Warehouse Services support fast, fully-managed, petabyte-scale data warehouse services. This covers the infrastructure and database software licenses as well as the administrative tasks associated with setup, configuring and monitoring your data warehouse. This includes verification of your cluster health and taking backups to applying patches and upgrades. Backups are both incremental and automatic. In addition to backups, we also support restores in the event that is ever needed.

## Technology
Openbridge employs databases designed for processing, analytic and reporting workloads against very large data sets. As a result there are specific implementation details that may differ from traditional RDBMS.

### Columnar Data Storage
Instead of storing data as a series of rows,  Openbridge Database Services organizes the data by column. Unlike row-based systems, which are ideal for transaction processing, column-based systems are ideal for data warehousing and analytics, where queries often involve aggregates performed over large data sets. Since only the columns involved in the queries are processed and columnar data is stored sequentially on the storage media, column-based systems require far fewer I/Os, greatly improving query performance.

### Advanced Compression
Columnar data stores can be compressed much more than row-based data stores because similar data is stored sequentially on disk.  We employ multiple compression techniques and can often achieve significant compression relative to traditional relational data stores. In addition, we do not require indexes or materialized views and so uses less space than traditional relational database systems. When loading data into an empty table, we automatically samples your data and selects the most appropriate compression scheme.
Massively Parallel Processing (MPP):  We automatically distributes data and query load across all nodes. Nodes can be quickly added to your existing cluster and enables you to query performance as the system demands grow. (See instance types below)

### Security
Openbridge defaults to all data be encrypted data at rest and in transit using hardware-accelerated AES-256 and SSL. The underlying technology also meets SOC1, SOC2, SOC3 and PCI DSS Level 1 requirements. The Openbridge Data Warehouse is a  massively parallel processing (MPP) architecture and parallelizing SQL data warehouse.  All customers are provided access through industry standard ODBC and JDBC connections and PostgreSQL drivers.

## Access
It is your data. You will always have access to any data stored Openbridge databases via industry-standard SQL using standard JDBC and ODBC drivers.

## Backups

By default, we retains backup for 7 days. You can request this to be as long as 90+ days to meet data retention policies. There may be incremental storage costs based on your requirements.

## Notes
If exporting data out of the database, please consider the additional storage capacity needed from uncompressed data. For example, a 100MB of data resident in the database may require 500MB to 1TB of storage space extracted and uncompressed.
