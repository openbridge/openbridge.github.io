<h1>Openbridge Data Warehouse Services</h1>
<h2>Overview</h2>


<p>Openbridge Data Warehouse Services is a fast, fully-managed, petabyte-scale data warehouse service. This covers the infrastructure and database software licenses as well as the administrative tasks associated with setup, configuring and monitoring your data warehouse. This includes verification of your cluster health and taking backups to applying patches and upgrades. Backups are both incremental and automatic. In addition to backups, we also support restores in the event that is ever needed.

<h2>Technology</h2>
<p>Openbridge employs databases designed for processing, analytic and reporting workloads against very large data sets. As a result there are specific implementation details that may differ from traditional RDBMS;
<p><strong>Columnar Data Storage</strong>: Instead of storing data as a series of rows,  Openbridge Database Services organizes the data by column. Unlike row-based systems, which are ideal for transaction processing, column-based systems are ideal for data warehousing and analytics, where queries often involve aggregates performed over large data sets. Since only the columns involved in the queries are processed and columnar data is stored sequentially on the storage media, column-based systems require far fewer I/Os, greatly improving query performance.
<p> <strong>Advanced Compression</strong>: Columnar data stores can be compressed much more than row-based data stores because similar data is stored sequentially on disk.  We employ multiple compression techniques and can often achieve significant compression relative to traditional relational data stores. In addition, we do not require indexes or materialized views and so uses less space than traditional relational database systems. When loading data into an empty table, we automatically samples your data and selects the most appropriate compression scheme.
Massively Parallel Processing (MPP):  We automatically distributes data and query load across all nodes. Nodes can be quickly added to your existing cluster and enables you to query performance as the system demands grow. (See instance types below)

<h2>Security</h2>
<p>Openbridge defaults to all data be encrypted data at rest and in transit using hardware-accelerated AES-256 and SSL. The underlying technology also meets SOC1, SOC2, SOC3 and PCI DSS Level 1 requirements. The Openbridge Data Warehouse is a  massively parallel processing (MPP) architecture and parallelizing SQL data warehouse.  All customers are provided access through industry standard ODBC and JDBC connections and PostgreSQL drivers.

<h2>Access</h2>
<p>It is your data. You will always have access to any data stored Openbridge databases via industry-standard SQL using standard JDBC and ODBC drivers.

<h2>Instance Types</h2>
<p>We offer two instance types, each with different resource allocations.  These CORE  (X & XL) and SSD (X & XL) nodes. CORE nodes allow you to create very large data warehouses using hard disk drives (HDDs). SSD nodes allow you to create very high performance data warehouses using fast CPUs, large amounts of RAM and solid-state disks (SSDs).  The standard deployment for basic customer deployments is one or more SSDX nodes in a clustered configuration based on customer requirements. This is usually sufficient to kickstart efforts and provide a cost effective starting point.


<table width="500" border="0">
<tr>
<td><strong>Type</strong></td>
<td><strong>CPU Cores</strong></td>
<td><strong>Memory<strong></td>
<td><strong>Storage Per Node</strong></td>
<td><strong>I/O</strong></td>
</tr>
<tr>
<td>CORE-X</td>
<td>2</td>
<td>15GB</td>
<td>2TB HDD</td>
<td>0.30 GB/s</td>
</tr>
<tr>
<td>CORE-XL</td>
<td>16</td>
<td>120GB</td>
<td>16TB HDD</td>
<td>2.40 GB/s</td>
</tr>
<tr>
<td>SSD-X</td>
<td>2</td>
<td>15GB</td>
<td>.16TB HDD</td>
<td>0.20 GB/s</td>
</tr>
<tr>
<td>SSD-XL</td>
<td>32</td>
<td>244GB</td>
<td>2.56TB HDD</td>
<td>3.70 GB/s</td>
</tr>
</table>
<ul>
<li>CORE-X scales from 1 node to 32 nodes with up to 64TB of storage, 64 virtual cores and 480GiB of RAM
<li>CORE-XL scales from 1 node to 100 nodes with up to 1600TB of storage, 1600 virtual cores and 12TiB of RAM
<li>SSD-X scales from 1 node to 32 nodes with up to 5TB of SSD storage, 64 virtual cores and 480GiB of RAM
<li>SSD-XL scales from 1 node to 100 nodes with up to 256TB of SSD storage, 3,200 virtual cores and 24TiB of RAM
<li>Core instances use Intel Xeon E5-2650 (Sandy Bridge) and SSD instances use Intel Xeon E5-2670v2 (Ivy Bridge)
</ul>

<p>Pricing is based on the specific system sizing requirements

<h2>Notes</h2>
<p>If exporting data out of the database, please consider the additional storage capacity needed from uncompressed data. For example, a 100MB of data resident in the database may require 500MB to 1TB of storage space extracted and uncompressed.
<p> In the event a customer requirements or preferences dictate use of CORE-X, CORE-XL, SSD-X or SSD-XL we can price them out accordingly.
<p> By default, we retains backup for 7 days. You can request this to be as long as 90+ days to meet data retention policies. There may be incremental storage costs based on your requriements.
