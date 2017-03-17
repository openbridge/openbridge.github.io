# Oracle Eloqua Data Pipelines
Oracle Eloqua allows you to export contacts, accounts, or activities. These exports are can be sent to your Openbridge data pipeline for loading into your preferred data warehouse.

This guide is meant to kickstart your efforts. As always, please refer to the latest Eloqua docs as they may differ slightly from the process described below.

<h2> Table Of Contents </h2>
<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Oracle Eloqua Data Pipelines](#oracle-eloqua-data-pipelines)
	- [Prerequisites](#prerequisites)
	- [Setting Up Your Exports](#setting-up-your-exports)
		- [Step 1: Export Settings](#step-1-export-settings)
		- [Step 2: Configure Delivery Destination](#step-2-configure-delivery-destination)
		- [Step 3: Schedule Your Export](#step-3-schedule-your-export)
		- [Step 4: Define The Data You Want In Your Export](#step-4-define-the-data-you-want-in-your-export)
		- [Step 5: Run Your Export!](#step-5-run-your-export)

<!-- /TOC -->

## Prerequisites
If you want to export contact activities (like `bounces`, `clickthroughs`, `sends`, `opens`, etc.), your administrator must set up Oracle Eloqua to capture the activity data to an internal queue. This may already be in place. If not, your administrator must configure what activities to capture. To set up the external call to an internal queue, log in to `My Oracle Support` and create a service request. After this configuration is complete, Oracle Eloqua will begin collecting the activity data going forward.

## Setting Up Your Exports

### Step 1: Export Settings

* Navigate to `Audience > Tools`, then click `Data Export and Import`
* Click the `Data Export` tab.
* Click Add An image of the `Add` button.
* On the Export Settings tab, configure the export:
 * To compress the export file, select the `Compress File` (.zip format) check box.
 * To add a date stamp to the export file, click the `Append Date Stamp` check box and select the date format.

Next, we will configure the delivery location

### Step 2: Configure Delivery Destination
To upload the export file to an SFTP server, complete the following steps:
* Click the `Also upload the file to my SFTP` server check box.
* Click the server from the `Server` drop-down list or click `Add` to add the SFTP server information. Complete the information about the server:<ul>
  <li>SFTP Hostname = <code>pipeline.openbridge.io</code>
  <li>SFTP Port = <code>22</code>
	<li>Username = <code>provided separately</code>
	<li>Password = <code>provided separately</code>
 </ul>

* Click `Test Connection` to ensure the information you entered is correct.
* Specify where to store the file export on the SFTP server in the `Path` text box (either a relative path or absolute path).

### Step 3: Schedule Your Export
You have the option to run a one-time export or schedule an ongoing delivery:
* To run the export on demand, click the On demand option.
* To schedule the export to run on a regular basis, click `On these days` and specify the schedule.

### Step 4: Define The Data You Want In Your Export
Click the `Data` tab to configure the data to export.

* Specify what to include in the export, either all records or only records that change.
* Specify whether you are exporting contact, account, or activity data from the `Data type` drop-down list.
* If you selected contact data, configure additional options about the data to export:
 * Specify what contact fields to export: `All contact fields` or only those in a `Specific contact view`.
 * Specify whether to export `All contacts`, a `Contact list`, or contact `Segment members`.
* Click the `Format` tab and configure the format for the exported export file.
 * The default file extension should be `CSV`.
 * The default structure of the file is `<columndata>`,`<columndata>`,`<columndata>`.
* Click `Save`

### Step 5: Run Your Export!
To perform a one-time export click the `Overview` tab and click `Run now`. If you setup a schedule the export will run according to the schedule you specified on the `Export Settings` tab.
