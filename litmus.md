# Litmus Email Analytics Data Feeds

Litmus Email Analytics Data Feeds provides you with the raw data behind your Email Analytics campaigns. This is perfect for those who want to integrate Email Analytics data into there customer data hub.

<h2> Table Of Contents </h2>

- [Prerequisites](#prerequisites)
- [Litmus Feeds](#litmus-feeds)
	- [Export Data Definitions](#export-data-definitions)
	- [Organizing Your Deliveries](#organizing-your-deliveries)
	- [File Naming](#file-naming)
	- [Delivery Time](#delivery-time)
	- [Service Guarantees](#service-guarantees)
	- [Litmus Activation](#litmus-activation)
- [References](#references)


## Prerequisites
In order to take advantage of these data feeds you need to configure Litmus to push data to a Litmus Data Pipeline. Openbridge will then automate processing and importing of these files upon receipt.

If you are an Enterprise or Pro customer please contact the Litmus support team via `hello@litmus.com` and provide them with the details of the SFTP server:<ul>
  <li>SFTP Hostname = <code>pipeline.openbridge.io</code>
  <li>SFTP Port = <code>22</code>
	<li>Username = <code>provided separately</code>
	<li>Password = <code>provided separately</code>
 </ul>

If you are on the Litmus Plus or Basic plans, you will need to upgrade to Enterprise or Pro to use export analytics fees to Openbridge.

## Litmus Feeds

### Export Data Definitions
This is a sample of the column headers present in an export:
```
created,email_address,custom_type,mail_client,mail_client_specific,mail_client_friendly_name,rendering_engine,platform,read_seconds,read_category,city,region,country,long,lat,referrer,user_agent,ip_address,campaign_guid
```

You can also download a [sample export file](samples/litmus/sample.csv).

### Organizing Your Deliveries

Please check the documentation on the considerations and best practices for [sending compressed files](pipeline.md#compressed-files) to ensure automated and continuous processing


### File Naming
Litmus will send 1 file per campaign, if you have multiple concurrent campaigns you will receive multiple files.

The file(s) will be named `GUID_YYYY_MM_DD.zip` and will contain a single file name similarly `GUID_YYYY_MM_DD.csv`. The `GUID` is the campaign `GUID` unique to a Litmus campaign.

### Delivery Time
Once per day Litmus will push to an SFTP location that you provide a CSV file containing all the hits for your campaign for the last 24 hours.

Delivery is normally between between 12:00 AM and 05:00 AM EST.

### Service Guarantees
Each file sent by Litmus is a delta – it will only contain new data since the last successful transmission. If the Openbridge server is unavailable when Litmus attempts to transfer the file the next file would contains 48 hours worth of data.

A blank file with only column headers indicates you’ve not received any Email Analytics hits in the past 24 hours for that campaign. Litmus always send a file so that customers who set up automated imports can rely on always having a file with headers even if there is no data for that time period.

### Litmus Activation
Once you supply your server information to Litmus it can take up to 48 to 72 hours to get your data added to our transmission process. Additionally, SFTP will only work for Email Analytics codes created after you’ve submitted your details and going forward. Currently running and past campaigns will not be included.

## References
Full description of data fields is available at:
* https://litmus.com/help/analytics/csv-export-data-fields/

For a description of the export process, check out:
* https://litmus.com/help/analytics/reports-csv-data-export/
