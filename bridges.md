# Data Bridges


# Integration Overview

* **Authentication**: Integration with source system OAuth mechanisms, including handling expirations, de-authorizations, permissions…
* **User Management**: Manage linkage of user to specific resource authorization. Deliver notifications for failed credentials, renewals in addition to auditing status of user supplied source authorizations
* **Versioning**: Keep up to date on API versioning for the source systems. This may include forking vendor SDKs to resolve bugs/errors. This also includes resolving undocumented features, functionality or workarounds needed to generate desired outputs
* **Requests**: Define, design and manage request to APIs, including any inclusivity/exclusivity rules with requests to an API, how calls are made to APIs, any schema/request definitions…
* **Throttling/Limits**: Manage data source Terms of Service for limits or throttling calls to their APIs
* **Errors**: Handle API unavailability, failure, malformed outputs and other issues
* **Availability**: Know when data becomes available in a source system. Know when the “truth” is settled in the source system
* **Scheduling**: Setting up jobs and triggering calls to an API at specific intervals. Keep track of tasks, requests and outcomes
* **Schemas**: Defining the request schemas (the “payloads”) and the API response output definitions
* **Encoding**: Properly encode data to UTF-8 specifications
* **Processing**: Handle the organizing of response output including appending metadata, aligning output formats, validating outputs meet API specs/schemas…
* **Asynchronous/Synchronous Operations**: Chain multiple source API’s that need to be called, in sequence or parallel, to generate a desired output

# Facebook Page Insights

With direct access to Facebook Page Insights data you can build a deeper understanding of your community and closer relationships with your customers.

## Data Definitions

Take a look at our [data definition docs](https://docs.google.com/spreadsheets/d/1nM1s8wjTjAHqGu3YPIysMc8pRgbnh7zCYUKmq97y5T0/edit?usp=sharing) for Facebook Page Insights layout and elements.

## Delivery Time

We collect data from Facebook Page Insights API once a day. This ensures we are within the limits Facebook places on API calls.

## Developer Docs

Check out [Facebook Developer docs](https://developers.facebook.com/docs/platforminsights/page) for more details about Facebook Page Insights API.

# YouTube Channel Insights

Discover what drives your video content use on your channel. Identify how your subscribers react to new and existing content. Discover patterns or trends that inform content optimization and performance.

## Data Definitions

Take a look at our [data definition docs](https://docs.google.com/spreadsheets/d/1IZxhbTsTFGqiHvOu0PaNxcCq2AXfoNXV0qfpcf2LpXE/edit?usp=sharing) for YouTube Channel Insights layout and elements.

## Delivery Time

We collect data from YouTube Analytics API once a day. This ensures we are within the limits YouTube places on API calls.

## Developer Docs

Check out [YouTube Developer docs](https://developers.google.com/youtube/) for more details about YouTube Analytics and Reporting APIs.

# Google Analytics 360

Get deeper understanding of your user activity through simple, direct access to a fully automated pipeline of Google Analytics 360 sessions data direct to Amazon Redshift. Let the data drive decisions on how to optimize ongoing customer engagement and performance.

## Data Definitions

Take a look at our [data definition docs](https://docs.google.com/spreadsheets/d/1IVXLMSFt3hLoFni2iR3BtQ5VLzQPynY0QNh1hV6uIeU/edit?usp=sharing) for Google Analytics 360 layout and elements.

## Delivery Time

We collect data once a day. For example, a request to Google Analytics 360 on July 3rd would return data for July 2nd. This ensures you have completed daily views for each reporting period. The data is typically loaded into your Openbridge account within minutes of arriving.

## Developer Docs

Check out [Google Developer docs](https://support.google.com/analytics/answer/3437618?hl=en) for more details.

# Instagram Community IQ

The Instagram Community IQ data bridge allows you to discover what drives your interactions within your Instagram community. Identify your best media and understand how it is being engaged with.

## Data Definitions

Take a look at our [data definition docs](https://docs.google.com/spreadsheets/d/14LZJW5v3p3El37lRMEbU-TFyVm9g2F5oPygUawQwjIQ/edit?usp=sharing) for Instagram Community IQ layout and elements.

## Delivery Time

We collect data from Instagram API once a day. This ensures we are within the limits Instagram places on API calls.

## Developer Docs

Check out [Instagram Developer docs](https://www.instagram.com/developer/) for more details about Instagram APIs.

# YouTube Video IQ

Track your competitors’ video performance data to see if their content drives engagement and adjust your YouTube strategies to stand out from the competition.

## Data Definitions

Take a look at our [data definition docs](https://docs.google.com/spreadsheets/d/1rplLAO3_U8BZp3JaE9mPHASG-3TvwtPMrFPta97PsXE/edit?usp=sharing) for YouTube Video IQ layout and elements.

## Delivery Time

We collect data from YouTube Data API once a day. This ensures we are within the limits YouTube places on API calls.

## Developer Docs

Check out [YouTube Developer docs](https://developers.google.com/youtube/) for more details about YouTube API.

# Google Adwords

Get deeper understanding of your paid search efforts through simple, direct access to paid advertising data from Google Adwords. Let the data drive decisions on how to optimize ongoing search campaign and keyword performance.

## Data Definitions

Take a look at our [data definition docs](https://docs.google.com/spreadsheets/d/1OCRe7yummNkmr3PIvoauwJTX3cIVbP81TVURUyeXDS8/edit?usp=sharing) for Google Adwords layout and elements.

## Delivery Time

We collect data once a day. For example, a request to Google Search Reporting API on July 3rd would return data for July 2nd. This ensures you have completed daily views for each reporting period. The data is typically loaded into your Openbridge account within minutes of arriving.

## Developer Docs

Check out [Google Developer docs](https://developers.google.com/adwords/api/docs/guides/start?hl=en)for more details.

# Salesforce Email Studio

Get complete access to subscriber, campaign and performance data and let it drive decisions on how to optimize ongoing prospect and customer engagement.

## Data Definitions

Take a look at our [data definition docs](https://docs.google.com/spreadsheets/d/1loiJDq7xxKET7vTeS7E_eOf3R_FiV4S9pxbdDuCdBDI/edit?usp=sharing) for Salesforce Email Studio layout and elements.

## Delivery Time

We collect data based on your scheduling preferences in the Salesforce Marketing Cloud console. For example, you schedule a job in Exacttarget which runs at 2AM EST to deliver all “click” data for the prior day. This means on data delivered at 2AM on July 10th will contain all the click data for July 9th.

## Developer Docs

Check out [Salesforce Marketing Cloud Developer docs](https://help.marketingcloud.com/en-US/technical_library/web_service_guide/getting_started_developers_and_the_exacttarget_api/) for more details.

# Google DoubleClick Search

Empower your brand to find new pathways to make smarter, more informed decisions. Optimize ongoing search campaign and keyword performance with the data from DoubleClick Search

## Data Definitions

Take a look at our [data definition docs](https://docs.google.com/spreadsheets/d/1MJgLmMfEQxVP90L2DyZJQTTR8tsWxatn0qayfxjfhIA/edit?usp=sharing) for DoubleClick Search layout and elements.

## Delivery Time

We collect data once a day. For example, a request to DoubleClick Search API on July 3rd would return data for July 2nd. This ensures you have completed daily views for each reporting period. The data is typically loaded into your Openbridge account within minutes of arriving.

## Developer Docs

Check out [Google Developer docs](https://developers.google.com/doubleclick-search/?hl=en) for more details.

# Salesforce Advertising Studio

Unlock Advertising Studio data to understand customer, spend, and social advertising performance. Assess, model, explore and drive customer engagement and maximize your investments in paid social advertising.

## Data Definitions

Take a look at our [data definition docs](https://docs.google.com/spreadsheets/d/1mzw2uwvXUaDgyCZZtaMPHvKJRYCdk2wGIBdCyCze480/edit?usp=sharing) for Salesforce Advertising Studio layout and elements.

## Delivery Time

Delivery time is between 2AM and 6AM EST. The typical approach is to deliver data for the prior day activity. This means on data delivered at 2AM on July 10th will contain all the Advertising Studio data for July 9th. The data is typically loaded into your Openbridge account within minutes of arriving.

## Developer Docs

Check out [Salesforce Marketing Cloud Developer docs](https://help.marketingcloud.com/en-US/technical_library/web_service_guide/getting_started_developers_and_the_exacttarget_api/) for more details.

# YouTube Competitor

Track your competitors’ channel data to get insight about how you perform and adjust your video content strategies to stand out from the competition.

## Data Definitions

Take a look at our [data definition docs](https://docs.google.com/spreadsheets/d/1HU8Yb0iCLl4TUinUlfL5oZZVnKalT45LoqH4mu62hKw/edit?usp=sharing) for YouTube Competitor layout and elements.

## Delivery Time

We collect data from the YouTube Analytics API once a day. This ensures we are within the limits YouTube places on API calls.

## Developer Docs

Check out the [YouTube Developer docs](https://developers.google.com/youtube/) for more details about YouTube API.

# Example: From Data Bridge to Pipeline

## Adobe
- **[Adobe Analytics](http://www.adobe.com/solutions/digital-analytics.html)** : Adobe Analytics provides one of the leading web analytics solutions on the market. We have detailed two methods of extracting data from Adobe to Openbridge.

 - **Adobe Clickstream Feeds (ACF)**: We provided hints, considerations, samples and steps to follow for accepting Adobe Clickstream feeds.

 - **Adobe Datawarehouse Feeds (ADF)**: Documentation of setting up ADF to Openbridge.


## Kenshoo
- **[Kenshoo](http://kenshoo.com)**: Kenshoo provides the ability to push feeds directly to Openbridge. Please contact your Kenshoo account rep to request feeds be configured.

 - **Kensoo Feeds**: Notes on delivery of paid social data from Kenshoo to Openbridge.
