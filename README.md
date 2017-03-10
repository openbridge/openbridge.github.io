<h1> Welcome To Openbridge </h1>

This documentation is intended to get you the basics of running Openbridge applications. We’ll cover everything you need to know, from authentication, to data delivery, to systems setup. All code examples will be stored and documented in our public repositories. Feel free to fork, clone, and improve the sample code and guides.

<h2> Table Of Contents </h2>

- [Platform Overview: Philosophy and Architecture](#platform-overview-philosophy-and-architecture)
- [How To Use Data Pipelines: Delivering Data To Openbridge](#how-to-use-data-pipelines-delivering-data-to-openbridge)
- [Data Bridges: Integrations With Third Parties](#data-bridges-integrations-with-third-parties)
	- [Data Definitions](#data-definitions)
- [Data Warehouses: Where And How Data Is Stored](#data-warehouses-where-and-how-data-is-stored)
- [How To Guides](#how-to-guides)
	- [Adobe](#adobe)
		- [[Adobe Clickstream Feeds (ACF)](adobe_clickstream.md)](#adobe-clickstream-feeds-acfadobeclickstreammd)
		- [[Adobe Datawarehouse Feeds (ADF)](adobe_datawarehouse.md)](#adobe-datawarehouse-feeds-adfadobedatawarehousemd)
	- [Kenshoo](#kenshoo)
		- [[Kenshoo Data Feeds (KDF)](kenshoo.md)](#kenshoo-data-feeds-kdfkenshoomd)
- [Expert Services](#expert-services)
- [Contributing](#contributing)
- [Support or Contact](#support-or-contact)


## Platform Overview: Philosophy and Architecture
To get a overview of the concepts we take within our platform see the description of our [approach and architecture](/platform_overview.md).


## How To Use Data Pipelines: Delivering Data To Openbridge
Learn how to push data from external systems to Openbridge for loading into your database: [See docs](/pipeline.md).

## Data Bridges: Integrations With Third Parties

### Data Definitions
See the data definitions for our bridge integrations with third parties: [See docs](/data_definitions.md).

## Data Warehouses: Where And How Data Is Stored
Openbridge Data Warehouse Services support routing your data to fast, fully-managed, petabyte-scale data warehouse services.
[See docs](/storage.md).

## How To Guides
The following are a few guides to help provide context on how to use the Openbridge system.

### Adobe
Adobe Analytics provides one of the leading web analytics solutions on the market. We have detailed two methods of extracting data from Adobe to Openbridge.

* **[Adobe Clickstream Feeds (ACF)](adobe_clickstream.md)**:We provided hints, samples and steps to follow for accepting Adobe Clickstream feeds.

* **[Adobe Datawarehouse Feeds (ADF)](adobe_datawarehouse.md)**:
Documentation of setting up ADF to Openbridge.

### Kenshoo
Kenshoo provides the ability to push feeds directly to Openbridge. Please contact your Kenshoo account rep to request feeds be configured.

* **[Kenshoo Data Feeds (KDF)](kenshoo.md)**:
Notes on delivery of paid media data from Kenshoo to Openbridge.

### Eloqua
Eloqua provides the ability to push feeds directly to Openbridge. You may need your Eloqua admin to assist if your account is not already configured to export data.

* **[Eloqua Data Feeds (EDF)](eloqua.md)**:
Notes on delivery contact activities (like bounces, clickthroughs, sends, opens, etc.),

### Litmus
Litmus provides the ability to push campaign analytics feeds directly to Openbridge. You may need contact Litmus support to assist if your account is not already configured to export data.

* **[Litmus Data Feeds (EDF)](litmus.md)**:
Notes on delivery contact activities (like geolocation, clicks, read time, etc.),

## Expert Services
We also offer expert service for development, consulting or subject matter expertise. See our [expert services offering](expert_services.md) for more details and examples.

## Contributing
You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

## Support or Contact

Having trouble with something? Contact us at <a href="http://openbridge.zendesk.com">http://openbridge.zendesk.com</a> or contact <a href="mailto:support@openbridge.com">support@github.com</a> and we’ll help you sort it out.
