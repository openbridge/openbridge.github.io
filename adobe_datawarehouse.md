<h1> Setting Up Adobe Data Warehouse Feeds (AWF) </h1>

<h2> Table Of Contents </h2>

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Setting Up Adobe Data Warehouse Feeds (AWF)](#setting-up-adobe-data-warehouse-feeds-awf)
	- [Table Of Contents](#table-of-contents)
	- [Overview](#overview)
	- [Setup](#setup)
		- [Delivery Endpoints](#delivery-endpoints)
	- [Organizing Your Adobe Warehouse Exports](#organizing-your-adobe-warehouse-exports)
		- [Report Types](#report-types)
		- [Example](#example)
		- [Structure Your Report Delivery](#structure-your-report-delivery)
		- [Adobe Data Warehouse File Contents Cleanup](#adobe-data-warehouse-file-contents-cleanup)
		- [Loading Adobe Warehouse Data To The Database](#loading-adobe-warehouse-data-to-the-database)
		- [Access Credentials](#access-credentials)
	- [Delivery Frequency](#delivery-frequency)
	- [Support or Contact](#support-or-contact)

<!-- /TOC -->

## Overview

The Adobe data warehouse extract process enables Adobe customers a mechanism to export data from their account to an external location.

## Setup
The process of defining the extracts and scheduling delivery occurs within the Adobe website. You can generate ad hoc data reports for your historical reporting data, which are delivered as CSV files via SFTP. You build a query to filter your data and isolate specific feeds. The vast majority of requests take less than a day to process, but depending on the complexity of your query and the amount of data it can take longer to process.

The process outlined in this document described how to configure Openbridge to automate reception of those feeds, processing them and load them into a database.

Please consult the Adobe website for the latest steps to configure feeds: [see Adobe Warehouse Docs](https://marketing.adobe.com/developer/documentation/data-warehouse/c-data-warehouse-api)

Also, see the [data pipeline](/pipeline.md) for additional context on the Adobe Data Warehouse Feed process. The document describes the additional considerations and requirements for delivery of data feeds into Openbridge.

### Delivery Endpoints

Adobe defaults delivery to FTP. If you want to use SFTP, it will require a special request to the Adobe support team to setup.


Delivery of files to the following:
<ul>
<li>SFTP Hostname = <code>pipeline.openbridge.io</code>
</ul>

The following are the PORT numbers you will need to make sure are used by the system responsible for file delivery:
<ul>
<li>SFTP Port = <code>22</code>
</ul>

## Organizing Your Adobe Warehouse Exports

### Report Types
A report type is a user defined export. It defines the structure and data that was configured in the Adobe system for export. For example, it might be a `bounces` export or it may be related to `channels`, `products` or `visits`. You have the flexibility to define these exports in Adobe.

### Example
The following shows a collection of user defined report exports each has data that was delivered by Adobe to Openbridge. For example;

```bash
../my-suite-id/adob_channel/adob_channel_20150101.csv
../my-suite-id/adob_pages/adob_pages_20150101.csv
../my-suite-id/adob_products/adob_products_20150101.csv
../my-suite-id/adob_site_totals/adob_site_totals_20150101.csv
../my-suite-id/adob_video/adob_video_20150101.csv
../my-suite-id/adob_visits/adob_visits_20150101.csv
```

### Structure Your Report Delivery
Feeds must have specific directories on the Openbridge system that correspond to a reporting suite. The output from Adobe should be delivered to a unique destination and use a filemask that corresponds to the report suite and report type being sent. For example: `"../(report_suite_id)/(report_type)/(report_type_YYYY-mm-dd).csv"`

This would result in a unique destination and filemask would like this: `"../my-suite-id/adob_site_totals/adob_site_totals_20150101.csv"`


### Adobe Data Warehouse File Contents Cleanup

The delivery format from Adobe will be uncompressed CSV files. The raw CSV files from Adobe will have headers that look like this:

```bash
| Date  | Visits | Unique Visitors | Something (23) (event23) |
```

The headers as supplied are technically not valid for import into a database like Redshift. In above example there are mixed case, special characters and spacing used for column names. Our system will automatically standardize the headers supplied by Adobe to ensure that downstream databases can properly import the data.

Our cleanaup process will generate a resulting header and table that look like this:

```bash
| date  | visits | unique_visitors | something_23_event23 |
```

The a sample row of values associated with the header should follow typical CSV conventions:

```bash
"January 1, 2015",111292,12513,8139
```

### Loading Adobe Warehouse Data To The Database

Once the directories have been configured and delivery from Adobe has commenced feeds will arrive daily. For example, this shows daily files being delivered to a user defined report called `adob_site_totals`;

```bash
"../my-suite-id/adob_site_totals/adob_site_totals_20150101.csv"
"../my-suite-id/adob_site_totals/adob_site_totals_20150102.csv"
"../my-suite-id/adob_site_totals/adob_site_totals_20150103.csv"
```

The system will process each CSV file according to the organizational structure the files are being delivered. For example, based on the above structure a table would be created called `adob_site_totals`. This is based on the report type directory name.

Based on the CSV header residing in the report type folder `adob_site_totals` columns are created which align with the schema of the file. In this example, the CSV contained the header:

```bash
date, visits, unique_visitors, something_23_event23
```

The CSV file will have values that would align to those headers. In this example the CSV file has following row values:
```
"January 8, 2015",111292,12513,8139
```
associated with each header item

```bash
date, visits, unique_visitors, something_23_event23
```


With each subsequent file delivery of for the `adob_site_totals` report suite the same process would occur.This would result in new rows being added to `adob_site_totals`:

```
date,visits,unique_visitors,something_23_event23
"January 1, 2015",111292,3256,2243
"January 2, 2015",171540,12385,5654
"January 3, 2015",131791,23423,8453
"January 4, 2015",81292,4513,1296
```

### Access Credentials
Adobe supports standard username and password credential for SFTP. Openbridge will supply these to you to supply to Adobe technical support team.

*Adobe will only have access to the specific directory path mentioned previously. They are "locked" there and only have access to deliver files to the target directory.*

## Delivery Frequency
You have the option of scheduling the frequency of your data warehouse with the Adobe website. We suggest that the feeds are scheduled daily, delivered between 3AM and 6AM daily.

## Support or Contact

<p>Having trouble with something? Contact us at <a href="http://openbridge.zendesk.com">http://openbridge.zendesk.com</a> or contact <a href="mailto:support@openbridge.com">support@openbridge.com</a> and we’ll help you sort it out.</p>
