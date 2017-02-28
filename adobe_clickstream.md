# Setting Up Adobe Clickstream Feeds (ACF)
## Overview

### Delivery Endpoints

Adobe defaults delivery to FTP which is insecure. If you want to use SFTP, it will require a special request to the Adobe support team to setup.

Delivery of files to the following:
<ul>
<li>SFTP Hostname = <code>pipeline.openbridge.io</code>
</ul>

The following are the PORT numbers you will need to make sure are used by the system responsible for file delivery:
<ul>
<li>SFTP Port = <code>22</code>
</ul>

### Delivery Directory and Filemasks

Feeds must have specific directories on the Openbridge system that correspond to each reporting suite. For example, the delivery would be sent to the root of the report suite directory like this: `".../(report_suite_id)/..."`

The actual delivery will be zipped would follow this convention for the path and filemask.: `/(report_suite_id)/(report_suite_YYYY-mm-dd).tar.gz`

### Access Credentials
Adobe supports standard username and password credential for SFTP. Openbridge will supply these to you which you will need to supply to Adobe technical support team.

*Adobe will only have access to the specific directory path mentioned previously. They are "locked" there and only have access to deliver files to the target directory.*

### Delivery Frequency
You have the option of requesting Daily Single or Daily Multiple for delivery. We suggest the delivery of a single, consolidated file each day. The clickstream feeds are typically delivered between 1AM and 4AM daily.

## Clickstream Feed Contents

### Hit Data
We have provided public repository of samples of clickstream data feeds on Github:

In addition to reviewing the same data we provided, we suggest you review the Adobe specs here: [Adobe ClickStream Specs](http://microsite.omniture.com/t2/help/en_US/sc/clickstream/index.html#Clickstream_Data)

If you are planning to use the full payload as defined Adobe there are consideration in complexity and storage volumes. This is due to the fact that there are in excess of 500 columns of data, each with varying lengths and data types. Each record will consume a sizable chunk of space.

Take a look at Adobe's recommended subset of that superset of columns here: [Adobe ClickStream Subset Specs](http://microsite.omniture.com/t2/help/en_US/sc/clickstream/index.html#Configuring_Data)


### Lookup/Helper Files
<p>Contents of each zip file would contain the following;

<ol>
<li>column_headers.tsv

<li>browser.tsv

<li>browser_type.tsv

<li>color_depth.tsv

<li>connection_type.tsv

<li>country.tsv

<li>javascript_version.tsv

<li>languages.tsv

<li>operating_systems.tsv

<li>plugins.tsv

<li>resolution.tsv

<li>referrer_type.tsv

<li>search_engines.tsv

<li>event_lookup.tsv
</ol>


Here are some of the sample [Lookup Files](samples/adobe-clickstream/sample-data/lookup-files)

## FAQS

### What considerations should be taken into account when setting up a feed?

#### Setup & Configuration
* You can have over 500+ columns depending on the implementation. The sample shows far fewer. Decide on what is important to you.
* Create and provide a list of all the RSIDs you want Adobe to package for delivery
* Validate we have all of them.
* Define any history cab be retroactively delivered.
* Determine how far back Adobe can provide. Two years might be the limit.
* Define the period of each delivery. A single daily export (vs multiples per day) is desirable. For a year you would have 365 timestamped exports for an RSID. Note: This would be multiplied times the number of years and RSIDs.
* Define the delivery method/location, including security creds. SFTP or S3 are options.
* Define how the delivery should be organized. We suggest everything be grouped by RSID. For example, make sure Adobe delivers each RSID to its own location  `/<rsid>/20160801_hitdata.tar.gz`
* If you have multiple RSIDs cadence the deliveries for RSIDs by priority. For example, start with US based RSIDs first. We can validate everything is as expected and then trigger the remaining RSIDs. Adobe may have some suggestions on how best to cadence the deliveries

#### Testing and Validation
* Run through a set of test deliveries for one RSID. Validate creds, workflow...
* Audit at certain intervals the manifest of delivered files. * One of the areas we have seen with some frequency is either delivery failures OR delivery of the same data more that once. Adobe may have suggestions, but we have found it best to provide an audit and manifest of gaps once every couple of weeks. You send it to customer care and then validate all those gaps have been filled. If you wait until the end of the process then it will take Customer Care longer to respond. * Adobe may have trouble finding the batch job for a given day if you wait to long. It seems like they keep job history around for 30 days. Waiting any longer can slow the effort down.

### Are there any special considerations when processing Adobe Clickstream data?

#### Metric Rules
* Different metrics require different sets of rules to create parity with the reporting UI. Here is how to calculate the visitor metric:

    * Exclude all rows where exclude_hit > 0.
    * Exclude all rows with hit_source = 5,7,8,9. 5, 8, and 9 are summary rows uploaded using data sources. 7 represents transaction ID data source uploads that should not be included in visit and visitor counts. See Hit Source Lookup
    * Combine post_visid_high with post_visid_low. Count unique number of combinations

#### Special Characters
This describes how to handle *some* of the special characters native to clickstream data.

Starting at the beginning of the file, read until you locate a tab, newline, backslash or caret character. Perform an action based on the special character encountered:

  * Tab - insert the string up that point into a data store cell and continue.
  * Newline - complete the data store row.
  * Backslash - read the next character, insert the appropriate string literal, and continue.
  * Caret - read the next character, insert the appropriate string literal, and continue.

#### Review Your Tagging
These are just *some* special characters. An often overlooked quality control issue is poorly or inconsistently implemented tags for an RSID will introduced their own special characters, some times in direct conflict with reserved (delimiter) characters specified by Adobe.

## Support or Contact

Having trouble with something? Contact us at <a href="http://openbridge.zendesk.com">http://openbridge.zendesk.com</a> or contact <a href="mailto:support@openbridge.com">support@openbridge.com</a> and we’ll help you sort it out.
