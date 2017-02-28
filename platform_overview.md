# Openbridge Platform

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Openbridge Platform](#openbridge-platform)
	- [Overview](#overview)
		- [Data Sources](#data-sources)
		- [Data Consumers](#data-consumers)
	- [Challenges Connecting Sources To Consumers](#challenges-connecting-sources-to-consumers)
	- [Openbridge Architecture](#openbridge-architecture)
		- [Data Bridges](#data-bridges)
		- [Data Pipelines*](#data-pipelines)
		- [Data Warehouse](#data-warehouse)

<!-- /TOC -->


## Overview

An important concept about our platform is the premise of the problem we are solving. It can be boiled down to a simple truth that there are two basic mechanics with most data endeavors; there are data sources and those who need to consume that data.

### Data Sources
Data sources may be internal and external to the team that needs to consume the data. This is what the “data consumers” need to have access to

### Data Consumers
Data consumers are those who need access to the data. They want to connect via open, standards based protocols with tools of choice. No lock-in. They want complete freedom to use the data for analytics, modeling, user experiences, communication, support or visualizations

This creates a challenge between the due to the complexity of the logistics in that consumers often do not have access to the source data.

## Challenges Connecting Sources To Consumers
If you are an non-technical or are technical but lack the time, skills or resources, accessing data in remote systems can be challenging. If a data source provides the best SDK's and API to access you data it does not solve your access challenges given those constraints:

<img src="./images/data-gap.png" width="580" height="230">

You objective is to close the gap, ensuring that the data is delivered to those who need to consume it. Openbridge is focused on solving those access gaps

<img src="./images/data-access.png" width="580" height="235">

Our goal is to ensure that users who want to use data for reporting, visualizations, optimization or enhancing customer experiences can access it in a timely and efficient manner.

## Openbridge Architecture

The diagram describes the conceptual architecture of Openbridge, which acts as a bridge between data sources and those who need/want to consume the data

<img src="./images/architecture.png" width="580" height="332">

The Openbridge Platform is comprised of three specific concepts to solve the logistics of connecting data sources to data consumers:

### Data Bridges
Data Bridges are considered “outbound” or "inbound" data services. They are the connective layer that facilitate the flow of data between systems. There are two types:
  - **Outbound Bridge**: This involves "pulling" or "fetching” from a third party data source locally to Openbridge.
  - **Inbound Bridge**: This involves a third party "pushing" or "sending” data from to Openbridge.


### Data Pipelines*
Data Bridges are considered “outbound” data services. They are adapters that are built for “fetching”  (connecting, processing and storing data) from a third party data source.
  - **Routing**: Processing Service is a distributed real-time computation system for processing fast, large (and small) streams of data
  - **Processing**: Processing Service is a distributed real-time of data as it flows through the system. Data is modeled, joined and aggregated  into usable data sets. This produces a collection of organized and accessible tables for simple consumption the data with preferred tools.

### Data Warehouse
Warehouse Services is a fast, fully-managed, petabyte-scale data warehouse service.
