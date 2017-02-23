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


# Example: From Data Bridge to Pipeline

## Adobe
- **[Adobe Analytics](http://www.adobe.com/solutions/digital-analytics.html)** : Adobe Analytics provides one of the leading web analytics solutions on the market. We have detailed two methods of extracting data from Adobe to Openbridge.

 - **Adobe Clickstream Feeds (ACF)**: We provided hints, considerations, samples and steps to follow for accepting Adobe Clickstream feeds.

 - **Adobe Datawarehouse Feeds (ADF)**: Documentation of setting up ADF to Openbridge.


## Kenshoo
- **[Kenshoo](http://kenshoo.com)**: Kenshoo provides the ability to push feeds directly to Openbridge. Please contact your Kenshoo account rep to request feeds be configured.

 - **Kensoo Feeds**: Notes on delivery of paid social data from Kenshoo to Openbridge.
