# SAA-C03

The primary AWS platform includes:
- Compute
- Storage
- Database
- Networking


## Services Overview

### Storage

- *Glacier* is a type of storage used for not frequently access files. It allows a big amount of storage and is the cheapest one.

- *Storage Gateway* allows access to storage in the cloud.

- *FSx (File System x)*: Supports ZFS, which is a Linux-type file system. NTFs from Windows and more. Basically supporting non-usual file storage types

- *AWS Elastic Disaster Recovery*: Allows to create a disaster recovery site in the cloud

### Migration

- Imagine AWS ships you a computer, you load it with a large amount of data, you throw it back to AWS, then AWS import the data locally into your region so it becomes easier loading this data accross the faster connections. That's *snowball*.

### Application Integration

- *Simple Queue Service* allows to handle application processing based on queued requests in order of priority.

- *SNS* pops notifications when running into problems, thresholds are reached, or a certain product is ordered more than a certain amount of time.

### Compute

- *Lambda*: Serverless functions in the cloud which can be called by other applications (APIs in the cloud).

- *Batch*: Batch computing workloads are executed with Batch. They are scalable in EC2 instances.

- *Serverless Application Repository*: Storing and sharing of reusable applications

- *EC2 Image Builder*: Deploy and customize server images

- *AWS App Runner*: Deployment for source code or application container

### Database

- *Amazon QLDB*: Ledger DBs = Immutable DBs. Once created, can't be changed. Good for compliance scenarios. 

- *Amazon DocumentDB*: MongoDB compatible DB in the cloud.

- *Amazon Keyspaces*: Cassandra-compatible DB.

- *Amazon Timestream*: Time series DB for real-time stream type data.

### Migration & Transfer

- *DataSync*: Data synchronization solution between on-premises storage and the cloud or between cloud services.

- *AWS Mainframe Modernization*: Migration modernization and execution of mainframe applications within the cloud

### Networking & Content Delivery

- *AWS App Mesh*: Configure communications and monitor from multiple microservices

- *AWS Cloud Map*: Discovery for cloud resources

- *AWS Private 5G*: AWS provides hardware for implementing private 5G

### Developer Tools

- *CodeArtifact*: Store, publish, and share software packages used in development. Central control of packages versions.

- *CloudShell*: Command line shell interface for management of AWS.

- *AWS FIS*: Fault Injection Simulator. For resilience testing purposes.

### Management & Governance

- *AWS AppConfig*: Deployment of application configurations at runtime rather than manually configure each application each time

- *Control Tower*: Manage all organization accounts through policies

- *AWS License Manager*: Monitoring and managing software license usage

- *AWS Well-Architected Tool*: Review workloads against best practices

- *AWS Chatbot*: Format SNS notifications for improved readibility and understanding

- *Launch Wizard*: Wizard for guided deployment of common enterprise applications

- *Resource Groups & Tag Editor*: Group AWS resources by tags, by region, and more

- *Amazon Grafana*: Data visualization, analysis, alerts

- *Amazon Prometheus*: Same functionality as Grafana but specifically for containers

- *AWS Proton*: Implementation of entire environments through templates

- *AWS Resilience Hub*: Control tower for managing and monitoring the applications resiliency

- *Incident Manager*: Integrated with AWS Chatbot for incident communication with plan providing

### Media Services

- *MediaConnect*: Transport service for live video. Multicast a media stream to subscribers with an n-premises receiver

- *Elemental Appliances & Software*: On-premises video processing and delivery used with MediaConnect

- *Amazon Interactive Video Service*: Managed live streaming solution. Brings the possibility to set your own live streaming server rather than going through YouTube or Facebook

- *Nimble Studio*: Creative workstation for production of visual effects, animation, and videogames. Blender is installed in the default AMI

### Analytics

- *AWS Data Exchange*: Find and use data from 3rd-parties through APIs, tables, or files into S3 for analysis

- *AWS Lake Formation*: Data lakes creation

### Security, Identity, & Compliance

- *Resource Access Manager*: Easily share AWS resources between accounts

- *Security Hub*: Centralized view of all things security related to your AWS resources

- *Detective*: Tool for investigating and analyzing security issues and suspicious activities, discovering the root causes of those

- *AWS Signer*: Code signing service. Signs applications for compliance in order to prevent malware

- *AWS Network Firewall*: On-premises firewall at the edge of your VPCs. Filter the traffic to the VPCs

- *AWS Audit Manager*: Provides continous auditing for risk and compliance. Advanced report generation

