# Data Bridges

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
