<h1> Setting Up Kenshoo Data Feeds </h1>

<h2> Table Of Contents </h2>
<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

	- [Overview](#overview)
		- [Delivery Endpoints](#delivery-endpoints)
		- [Delivery Directory and Filemasks](#delivery-directory-and-filemasks)
		- [Loading Kenshoo Data To The Database](#loading-kenshoo-data-to-the-database)
	- [Access Credentials](#access-credentials)
	- [Delivery Frequency](#delivery-frequency)
	- [Support or Contact](#support-or-contact)

<!-- /TOC -->

## Overview
The following guide describes the process of Kenshoo sending paid search data to Openbridge. Exports from Kenshoo will require a special request to the Kenshoo support team to setup.

### Delivery Endpoints

Kenshoo will send data via SFTP. Delivery of files to the following:
<ul>
<li>SFTP Hostname = <code>pipeline.openbridge.io</code>
</ul>

The following are the PORT numbers you will need to make sure are used by the system responsible for file delivery:
<ul>
<li>SFTP Port = <code>22</code>
</ul>

### Delivery Directory and Filemasks

Feeds must have specific directories on the Openbridge system that correspond to each reporting suite. For example, the Kenshoo delivery would be sent to the root of the report type directory like this:
```bash
".../(first 4 letters of comany name)_(report_type)/..."
```

The actual delivery will be zipped would follow this convention for the path and filemask:

```bash
"/(first 4 letters of comany name)_(report_type)/(report_type_YYYY-mm-dd).csv"
```

This would result in a structure like this:

```bash
"/sony_kenshoo_search/kenshoo_search_2015-12-15.csv"
```

A report type might be "search" which reflects the paid search activity feeds. Your Kenshoo account rep will be able to details the currently available report type feeds available from them.

### Loading Kenshoo Data To The Database

Once the directories have been configured and delivery from Kenshoo has commenced feeds will arrive daily. For example, this shows daily files being delivered to a user defined report called `sony_kenshoo_search`;

```bash
"../sony_kenshoo_search/kenshoo_search_2015-12-15.csv"
"../sony_kenshoo_search/kenshoo_search_2015-12-14.csv"
"../sony_kenshoo_search/kenshoo_search_2015-12-13.csv"
"../sony_kenshoo_search/kenshoo_search_2015-12-12.csv"
"../sony_kenshoo_search/kenshoo_search_2015-12-11.csv"
"../sony_kenshoo_search/kenshoo_search_2015-12-10.csv"
```

The system will process each CSV file according to the organizational structure the files are being delivered. For example, based on the above structure a table would be created called `sony_kenshoo_search`. This is based on the report type directory name.

## Access Credentials
Kenshoo supports standard username and password credential for SFTP. Openbridge will supply these to you to supply to Kenshoo technical support team.

*Kenshoo will only have access to the specific directory path mentioned previously. They are "locked" there and only have access to deliver files to the target directory.*

## Delivery Frequency
Delivery frequency can be established with your Kenshoo account rep. We suggest daily delivery between 1AM and 6AM for the prior days data.

## Support or Contact

Having trouble with something? Contact us at <a href="http://openbridge.zendesk.com">http://openbridge.zendesk.com</a> or contact <a href="mailto:support@openbridge.com">support@github.com</a> and we’ll help you sort it out.
