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

- Imagine AWS ships you a computer, you load it with a large amount of data, you throw it back to AWS, then AWS import the data locally into your region so it becomes easier loading this data across the faster connections. That's *snowball*.

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


## Amazon S3

Selecting the storage service:
- *Simple Storage Service (S3)*
- *Glacier:* Not frequently accesed data
- *CloudFront:* Take data to edge-locations
- *Elastic Block Storage (EBS):* Fastest data retrieval
- *Storage Gateway:* Hardware or Software appliance acting as a VPN connection to the Amazon Cloud. Acess storage as it was local
- *Snow family:* Migrate a massive amount of data to the cloud
- *Databases*

Types of storage usages:
- *Block Storage*
  - Local networks
    - iSCSI
    - Fibre Channel
  - Can be used with virtual machines
- *File Storage*
  - Chunk of information
  - Use with NAS devices locally
  - S3 is simmilar bt using objects

Selecting storage:
- Size
- Performance
- Cost

>[!Note]
> *Glacier* got high size but small performance. *EBS* got high performance but storing a large amount of data there would increase the cost

### S3 Storage Overview

- Object Storage
- Distributes across at least three AZs (more AZs -> more expensive). 1A uses only one zone for the minimal cost.
- Supports encryption and automatic classification
- Big Data Analytics directly in the bucket

### Getting Data into S3

- API
- Amazon Direct Connect
- Storage Gateway
- Kinesis Firehouse
  - Get large amount of data
- Transfer Acceleration
  - Particular region using Cloudfront
  - Faster, more expensive
- Snow Family (snowcone not used for S3):
  - *Snowball*
  - *Snowball Edge*
  - *Snowmobile*

![alt text](image-28.png)

*Snowmobile* is a large trailer – a data center on wheels. Each trailer of 100 TB.

Use *Snowball* for small data storage. 

*Snowball Edge* is literally a device you take to your facility, where you can run instances on itself directly. 

### S3 Concepts

- Buckets
  - They're like drives in a local computer
- Regions
- Objects
- Keys
  - Logical name of the object
- Object URLs
  - Each object does have one
- Eventual Consistency
  - Same information in all buckets across AZs

![alt text](image-29.png)

Data modification can occur before all data is synchronized accros buckets. This would end up in inconsistences

>[!Note]
> Objects in S3 buckets have eventual consistency.
> 
>Objects in EBS are consistent

Therefore, S3 works great for static website hosting.


### Common S3 Operations

- Creating and deleting buckets
- Writing/Reading/Deleting objects
- Managing object properties
- Listing keys in buckets
  

  ### REST Interface

![alt text](image-30.png)

### S3 Features

- Prefixes and delimiters
  - There are no folder hierarchies in S3. An object path is made by a series of prefixes separated by delimiters (/market/sales/[object_name]). Look like hierarchy, under the hood is not
- Storage Classes

  ![alt text](image-31.png)

  - *S3 Standard* ($$$$)
    - Least expensive
    - Most expensive for storage
  - *S3 Infrequent Access* ($$$)
  - *S3 Reduced Redundancy Storage* ($$)
    - Least tolerable to failure 
    - Least available
  - *S3 Glacier* ($)
    - Least expensive for storage
    - Costs can increase by recovering a lot of files

  Lifecycle Managment can reduce costs by changing the storage class over time.

  ![alt text](image-32.png)
- Encryption
  - Server-Side Encryption (SSE) – the encryption is performed after the file arrives to the server
  - Client-Side Encryption (CSE)
    - Transmitting an encrypted file to the server
- Versioning
- MFA Delete
- Multi-part upload
  - Use many streams to upload data which reassembles in the server
- Range GETs
  - Getting portion of information from a large file (e.g. 10kb-20kb)
- Cross-Region Replication
  - Sync accross regions
- Logging
- Event Notifications

![alt text](image-33.png)
![alt text](image-34.png)


## Additional AWS Storage Services

### Glacier Overview

- Archival Data Storage (cold data)
- Fractions of a penny GB/month
- 3 access methods
  - Expedited (3-5 min) - Most expensive
  - Standard (3-5 h)
  - Bulk (5-12 h) - Least expensive
- You define the region for data storage
- 256-bit encryption
- S3 cold data can be automatically moved into Glacier
- Snow devices can be used to import data
- Storage Gateway can connect to Glacier

### Glacier Concepts

- Archives
- Vaults
- Vault locks
  - Securing vaults
- Data retrieval
  - Up to 5% retrieved at no charge each month, no rollover
  - Vault can be configured to limit costs

![alt text](image-35.png)


### S3 and Tape Gateway

![alt text](image-36.png)

![alt text](image-37.png)

![alt text](image-38.png)


### Elastic Block Store (EBS)

- Used for durable storage in EC2 instances
- Block-level storage from one AWS service to another

**Volume Types:**

- Magnetic (HDD)
- SSD
  - General purpose
  - Provisioned IOPS (more performance)
    - PIOPS (provisioned input/output operations per second)
  - EBS-optimized instance (full performance)


**Protecting EBS Data:**
- Snapshots
- Volume recovery
  - Attaching volumes from one instance to another
- Encryption methods

![alt text](image-39.png)

### Elastic File System (EFS)

- Shareable
  - Multiple instances at the same time accessing to the same content
- Hierarchical
  - Actual folder hierarchy
- Can be accessed using the NFSv4 (Network File System version 4)
  - EBS volumes are dedicated to an instance. As EFS is free to be accessed to many different instances
- EC2 instances can use EFS instances
- EFS is not supported on Windows instances. Only Linux instances
- Instead of buckets uses *File Systems*


### Storage Comparison

![alt text](image-40.png)

---

![alt text](image-41.png)

![alt text](image-42.png)

### EFS and PrivateLink

![alt text](image-43.png)

### Amazon FSx

Allows to create Windows server shares. It's basically a data center server where files are shared accross systems. 

Uses the SMB (Server Message Block) network file sharing protocol. Which allows applications and users to read/write files on remote servers. 

Offers the advantage to provide a server with the minimum requiremens to act as a file-sharing system instead of an edge-performance machine.

![alt text](image-44.png)

![alt text](image-45.png)

### On-premises Storage

- AWS Storage Gateway
  - Software appliance creates the gateway
  - Storage solutions
    - File-based
      - Uses NFS (Network File System)
      - Cost-effective
    - Volume-based
      - Internet SCSI (Small Computer System Interface) protocol
      - ISCSI is used across the IP protocol
      - Block level storage instead of file-based
      - Options:
        - Cached volumes
          - Portion of recently accessed data stored in cache on-premises for low-latency access
        - Stored volumes
          - All data stored on-premises. Low latency to the entire dataset
          - Snapshots
    - Tape-based
      - Backups
      - Long-term

![alt text](image-46.png)

![alt text](image-47.png)


### Storage Performance

EBS Volume Types:

![alt text](image-48.png)

![alt text](image-49.png)


Amazon S3 Standard is designed for 99.99999999% durability. That means 1 of 10,000 objects stored in a S3 bucket is expected to fail in 10 million years.
It got 99.99% durability. When a user tries to access a file it'll be there 99.99% of the times.

![alt text](image-50.png)


## Amazon VPC Applications

### VPC Overview

- Virtually private
- Personal data center in the cloud
- VPN connections can be made to the VPC
- Applications run on the VPC or on-premises
- Subnets can be created in the VPC
  - Public
  - Private
- Direct Connect can provide VPN connections
- Multiple VPCs can be interconneted via VPC peering
- VPC endpoints connect to resources

![alt text](image-51.png)

Types of VPC:
- Default
  - One in each region
  - Amazon does not recommend deleting it
  - Features:
    - Dynamic public IP
    - Dynamic private IP
    - AWS-provisioned DNS names
    - Private DNS names
    - Public DNS names
- Dedicated
  - More expensive
  - Dedicated resources

![alt text](image-52.png)

VPC Dashboard:

![alt text](image-53.png)

Amazon Direct Connect Architecture:

![alt text](image-54.png)

![alt text](image-55.png)

### Setting up DHCP

![alt text](image-56.png)

![alt text](image-57.png)

### Elastic IP Addresses (EIPs)

- Public IPs from the VPC region
- They are elastic because they can change from one instance to another
- Permanently allocated to your account until released
- Account is charged until release
- Network interfaces consume EIPs
- EIPs can be moved between instances in the same region

![alt text](image-58.png)

### Elastic Network Interfaces (ENIs)

- Virtual network interface attached to an instance
- Only available within a VPC
- Associated with a subnet
- Allows dual-homing
  - A router is a dual-homed device: Allows connection to the internet and to your private netowork
- One public address and multiple private addresses

![alt text](image-59.png)

### Endpoints

- AWS endpoints connect VPCs to AWS services
- Can enforce policies on different endpoints
- It's a connection point, not a device

Creating an endpoint:
- Specify the Amazon VPC
- Specify the service
  - com.amazonaws.<region>.<service>
- Specify the policy
- Specify route tables

![alt text](image-60.png)

> [!Note]
> To generate policies use: [Policy Generator](https://www.awspolicygen.s3.amazonaws.com/policygen.html).
> 
> Policies are written in JSON format.
> 
> ![alt text](image-61.png)

![alt text](image-62.png)


## VPC Peering

- Connects one VPC to another
- Possible scenarios
  - Management VPC  > Production VPC
  - Development VPC > Production VPC
  - Corporate VPC > Partner VPC
- Not transitive
  - Sales > VPC 2 > Marketing doesn't imply Sales > Marketing
  ![alt text](image-63.png)

Creating VPC Peers:
- Initiating VPC sends a request to the receiving VPC
  - Owner role required
  - IP CID blocks in each VPC must not overlap
- Receiving VPC accepsts the request
  - Owner role required
- Each VPC needs a defined route to the other VPC
  - May require routing table modifications
- Security group rules
  - May require modification for the VPC peers

![alt text](image-64.png)

### Lab

![alt text](image-65.png)

![alt text](image-66.png)

![alt text](image-67.png)

![alt text](image-68.png)

Creating routes:

![alt text](image-69.png)

![alt text](image-70.png)

![alt text](image-71.png)

![alt text](image-72.png)

![alt text](image-73.png)


## Amazon VPC Security

### Security Groups Overview

- Acts like a firewall
  - Assigned to an instance in a VPC
  - Applied to instances not to subnets
- Defines allowed traffic flows
  - Ingress (entrance)
  - Egress (exit)
- Supports only allow rules - deny is implicit
- Stateful processing is used
  - Not necessary to define access rules to each instance out of the instance. Rules defined applies to every machine

Network Access Control Lists (NACLs):
- Applied on subnets
- Staless processing
  - Not worrying about states. Allowing or disallowing things
- Supports both allow and deny rules
- Rule number defines precedence
  - Lowest numbered rules first
  - First match applies

![alt text](image-74.png)

### Network Address Translation (NAT)

![alt text](image-75.png)

![alt text](image-76.png)

![alt text](image-77.png)

![alt text](image-78.png)

![alt text](image-79.png)

![alt text](image-80.png)

### Gateways (VPGs and CGWs)

Virtual Private Gateway (VPG):
- Connects local networks to the VPC
- VPG is the VPN concentrator
  - Concentrates all VPN connections into an access location

Customer Gateway (CGW):
- Physical device or software application
- Anchor on the customer side
  - Connects to the VPG
  - We have a VPG in the VPC and we connect to that with the CGW. This produces a VPN

VPG is on the AWS side. 
The CGW is on the customer side. 
The 2 of these together form a VPN.

Alternative Connections:
- AWS hardware VPN
  - Acts like a CGW
  - Acts as a VPN connector from your location into the VPG at Amazon or into a hardware VPN concentrator at AWS data centers
- AWS Direct Connect
- VPN CloudHub
- Software VPN
  - Protocols
    - L2TP: Layer 2 Tunneling Protocol
    - IPSec (gives security authentication and encryption within the L2TP tunnel)

### Lab

![alt text](image-81.png)

Setting up the CGW:

![alt text](image-83.png)

Setting up the VPG:

![alt text](image-84.png)

Setting up the VPN:

![alt text](image-82.png)

![alt text](image-85.png)

![alt text](image-86.png)


### VPN Configuration Options

*Split tunnel:*
- All outgoing traffic going through the VPN tunnel
- If traffic going to the internet, it's going directly to the internet without passing through the tunnel

*Certificates for authenticaton:*
- Instead of using passphrases or tokens we use certificates for authentication to VPN connections

### Direct Connect Overview

![alt text](image-87.png)

![alt text](image-88.png)

![alt text](image-89.png)

---

![alt text](image-90.png)


## Compute Services Design

### EC2 Overview

- Virtual Machine in the cloud
- Pay as you go
- Integrates with storage, networking, and security
- Fast deployment
- Supported OS
  - Windows 2003 R2 through 2016
  - Amazon Linux
  - Debian
  - SUSE
  - CentOS
  - Red Hat Ebterprise Linux
  - Ubuntu

![alt text](image-91.png)

![alt text](image-92.png)

### EC2 Instance Types

Determines the kind of compute, storage, networking capabilities.

- *General Purpose*
  - Classes:
    - T2
      - Burst performance
        - Credits accrue during idle times
        - Then uses accrued credits to burst performance
    - M5, M4, M3
      - No burst option
      - Good for development, staging, etc
  - Provides a balance of memory and network resources

> [!Note]
> M classes for initial development and testing (not a lot of user accessing it). Then switching to T classes for customer usage

- *Compute Optimized*
  - Classes:
    - C5, C4, and C3
  - CPU-intensive applications
    - Media coding
    - Intense batch jobs
    - Many concurrent users
    - Gaming servers
    - Anything compute-intensive

- *Memory Optimized*
  - Classes:
    - X1e, X1, R4, and R3
  - Useful for high memory requirements
    - Processing large data sets
    - In-memory databases
    - Big data processing

- *Storage Optimized*
  - Classes
    - H1, I3, and D2
  - Useful for high sequential read/writes to local storage
    - Relational databases
    - Data warehousing
    - Image storage and processing

> [!Note]
> If memory optimization and storage optimization are both needed, it's possible to go with memory optimization and picking the right EBS volume for storage optimization

- *Advanced Computing*
  - Classes 
    - P3, P2, G3, and F1
  - Useful for specialty hardware compute requirements
    - Graphic Processing Unit (GPU)
    - Field-Programmable Gate Array (FPGA)

> [!Note]
> Switching EC2 classes is possible

![alt text](image-93.png)

### EC2 pricing

Pricing categories:
- *On-demand*
  - Charged for usage time at a flat rate
  - Billed in 60-second increments rounded up
    - If running for 20 secs, billing a minute
  - Intended to be used only when necessary
- *Reserved*
  - Is reserved when required. Time is reserved
    - Hours
    - Reserve usage minimum 1 year
    - Can be less expensive than on-demand
  - Calculated in advance how much is needed
  ![alt text](image-96.png)
  - Amazon charges more with no up-front because money gets more value over time
- *Spot*
  - Bid on unused computed time (extra compute time that nobody is using)
  - Processes run when this extra compute time is available
    - On sleeping hours
  - Up to a 90% discount over on-demand

![alt text](image-97.png)

### EBS and EC2

EBS:
- Persistent block storage
  - Changes persist even if the instance is turned off. This doesn't happen with S3 when it's shutted down or rebooted
  - Requires an EBS-optimized instance
  - Magnetic or SSD
    - General purpose or PIOPS

![alt text](image-98.png)

### AWS Compute Optimizer

![alt text](image-99.png)

Amazon CloudWatch must be enabled to use Amazon Compute Optimizer.

![alt text](image-100.png)

![alt text](image-101.png)


## Compute Services Implementation

### Launching an EC2 Linux instance Lab

![alt text](image-104.png)

Go to Launch Instance:
![alt text](image-103.png)
![alt text](image-105.png)
![alt text](image-106.png)
![alt text](image-107.png)
![alt text](image-108.png)
![alt text](image-109.png)
![alt text](image-110.png)

Launching the instance:

![alt text](image-111.png)
![alt text](image-112.png)

![alt text](image-113.png)

### Configuring an EC2 Linux instance Lab

Time to connect to the launched machine.

![alt text](image-114.png)

Required software:
![alt text](image-115.png)

EC2-Keypair.pem was downloaded in the previous lab.

puttygen.exe converts the EC2-Keypair.pem into a ppk file, which is supported by PuTTY. 

![alt text](image-116.png)
![alt text](image-117.png)

Import ppk file in *Auth*:

![alt text](image-118.png)

Access:

![alt text](image-119.png)

The default user is *ec2-user*:

![alt text](image-120.png)
![alt text](image-121.png)

### Setting up an EC2 Windows instance Lab

Follow the same initial procedures from the *Launching an EC2 Linux Instance Lab* section.

![alt text](image-122.png)
![alt text](image-123.png)
![alt text](image-124.png)
![alt text](image-125.png)
![alt text](image-126.png)
![alt text](image-127.png)

> [!Note]
> SSH is the defalt protocol for Linux, as RDP is the default protocol for Windows

![alt text](image-128.png)
![alt text](image-129.png)
![alt text](image-131.png)

![alt text](image-132.png)

### Shared Tenancy

Multiple organizations running instances on that same physical machine.

![alt text](image-133.png)
![alt text](image-134.png)

Resources are shared.

- Multiple customers share the time and space on the physical machine.
- This is the default instance behaviour
- Pros
  - Reduced costs
  - Simpler deplyment
- Cons
  - Lower performance
  - Less control

![alt text](image-135.png)

![alt text](image-136.png)

### Dedicated Hosts

You can pick the specific physical server where your instance runs on.

- Physical machines
  - Run the virtual machines
- Used by one customer
- Must be explicitly configured
- Not available in free tier
- Pros
  - More accurate licensing management
  - More detailed reporting
  - Compliance management
  - Determine host placement during instance restarts. In shared tenancy the instance might change after restarting
- Cons
  - Costs more

> [!Note]
> Bring Your Own License (BYOL) for reducing costs

![alt text](image-137.png)

### Dedicated Instances

- Runs on a physical machine
  - Only instance running on that machine
  - On restart, may be moved to another machine. Dedicated hosts remain always there
- Used by one customer
- Must be explicitly configured
- Not available in free tier
- Pros
  - Runs on hardware dedicated to the customer
  - Provides performance advantage of a dedicated host
- Cons
  - Less accurate licensing management than a dedicated host
    - App is not necessarily attached to an specific host
  - Doesn't allow placement determination

> [!Note]
> Is possible to have many dedicated instances running on hardware dedicated to the customer

> [!Note]
> A dedicated host is a dedicated hardware, as a dedicated instance is exactly that. It runs on hardware dedicated to the customer though

![alt text](image-138.png)

![alt text](image-139.png)

### AMI Virtualization

- Blueprint with server configuration details
- Similar to localized imaging solutions
  - But includes additional configuration parameters for the actual instance
  - Acronis True Image is one example
    - Take a snapshot of the computer state
- The term "instance" indicates the use of the AMI
- All instances are created from an AMI

![alt text](image-140.png)

- Sources
  - Amazon (free)
  - AWS Marketplace (free/paid)
  - Community (free)
- Launch permission 
  - Levels
    - Public (anyone)
    - Explicit (specified users)
    - Implicit (owner/creator of the AMI)
  - Defaults to implicit
  - Can be set
- AMI Creation
  - Use existing AWS AMIs
  - Customize existing AMIs
  - Create from scratch
  - Use from other public sources
- Hardware Virtual Machines (HVM)
  - AMIs fully virtualizes the hardware
  - Requires hardware assisted virtualization
- Paravirtual (PV)
  - Run on hosts without specific support for virtualization
  - Doesn't perform as well as HVM AMIs
- Instance Root Volume
  - Contains the boot sector
  - Boot sector initiates the boot loader
  - Boot loader launches the OS
  - Storaging options
    - Instance store-backed AMI
      - Root volume is stored in S3
      - No support for the stop action
      - On failure, data in the instance store is lost
    - EBS-backed AMI
      - Root volume stored in an EBS volume
      - Support for the stop action
      - On failure, data in the EBS volume is not lost

![alt text](image-141.png)


## Compute Services Management

### Instance Management

**Launching Instances:**
- Bootstrapping
  - Providing code to be run on an instance at launch
    - Migth be installation procedures
    - Application deployment
    - Updating libraries
- VM import/export
  - Importing existing virtual machines into EC2

**Instance Metadata:**
- Security groups
- Instance ID
- Instance type
- AMI base of the instance

**Instance Management:**
- Instance tags implementation
- Changing instance type
  1. Stop the instance
  2. Change the type
  3. Start the instance
- Change security groups on the fly
- Activate termination protection

![alt text](image-142.png)

### Connecting to Instances Lab

Using the Windows instance to connect via RDP:

![alt text](image-143.png)
![alt text](image-144.png)

Getting password:

![alt text](image-145.png)

Decrypt password.

![alt text](image-146.png)

> [!Note]
> PEM files are like access keys for the VMs. Hence, they must be protected and secured in the system

![alt text](image-147.png)

Use decrypted password:

![alt text](image-148.png)

![alt text](image-149.png)

Server Manager:

![alt text](image-150.png)

![alt text](image-151.png)


### Working with Security Groups

- Limited to 5 per instance
- Can layer security groups
- Instances receive the default security group for the VPC
  - Default setting
  - Other security group may be attached
  - Default security group may be detached

![alt text](image-152.png)

![alt text](image-153.png)

**Security Group Constraints:**
- Only "allow" rules are permitted
- Separate inbound and outbound rules are used
- Stateful
  - By default, no inbound traffic is allowed without a request
  - Example: Stateful Firewall
    - Browse a webpage in your computer, make a DNS request. The IP is acquired by the computer because it was the one who generated the request
  - By default, all outbound traffic is allowed
- By default, security groups are only bound to the primary network interface
  - Can be bound to other network interfaces, including ENIs

![alt text](image-154.png)

### Working with Security Groups Lab

![alt text](image-155.png)

Create security group:

![alt text](image-156.png)
![alt text](image-157.png)

Viewing security groups assigned to a VPC:

![alt text](image-158.png)

Denying is implicit. Any port which is not included, is obviously not allowed.

> [!Note]
> *Closed to open security system:* By default, all inbound is not allowed.
> 
> You need to open ports for incoming things for them to become available

![alt text](image-159.png)

### Advanced EC2 Management

![alt text](image-160.png)

![alt text](image-161.png)

![alt text](image-162.png)

### AWS Batch

*Batch Computing:* Putting several commands together and run it as a unit

![alt text](image-163.png)

![alt text](image-164.png)

A *job* is a script containing a list of commands.

![alt text](image-165.png)
![alt text](image-166.png)
![alt text](image-167.png)
![alt text](image-168.png)
![alt text](image-169.png)

![alt text](image-170.png)

### Elastic Container Service (ECS)

Implements docker containers within AWS.

> [!Note]
> ✅ Real-world example:
Imagine you build a Python app that needs Python 3.11, Flask, and PostgreSQL client. On your machine, it works fine. But when deploying to a server with Python 3.9, it breaks. With Docker, you package everything into a container image, and it runs identically anywhere.

**ECS Features:**
- No virtual machine builds required
- Uses Amazon Fargate to automatically build environments
- Can use EC2 instances for more control

**Container Usage:**
- Web server
- Application server
- Message queue server
- Each of the backend worker processes

> [!Note]
> **Multi-Tier Applications or N-Tier Applications**: They are applications that have multiple components that perform different roles to make it all work

![alt text](image-171.png)
![alt text](image-172.png)
![alt text](image-173.png)

![alt text](image-174.png)

### Elastic Beanstalk Environment

![alt text](image-175.png)
![alt text](image-176.png)
![alt text](image-177.png)

Beanstalk set ups an entire environment:

![alt text](image-178.png)

- Generated S3 bucket
- Generated security group
- Generated EC2 instance
- Deployed application

> [!Note]
> *Beanstalk* comes from the Jack and the giants story. A stalk rises up to the clouds, it allows achieving great stuff

If going to EC2 and checking instances, there's gonna be the instance automatically created for the deployed environment:

![alt text](image-179.png)

![alt text](image-180.png)


## Identity and Access Management (IAM)

### Overview

- Manage access to AWS
  - Doesn't manage OS services, or applications
- Supports users, groups, and roles
- Free
- AWS services implemented by the users incur charges

**IAM Concepts:**
- Resources
  - Things on which actions can be taken
- Principals
  - Things that can take action
  - Elements
    - Users
    - Groups
    - Roles
- Policies
  - Based on json

![alt text](image-181.png)

![alt text](image-182.png)

### Principals

- Also called identities
- Entity that can perform an action
  - Users
    - Person or service with permissions
      - AWS Management Console
      - AWS API/CLI
      - Command Prompt Interface
    - Credentials
      - Consists of a name and password and up to two access keys
      - Access keys used with the API or CLI
    - Can be group memebers
  - Groups
    - A collection of IAM users
    - Permissions should be managed at the group level
    - Users can be added and removed
    - Groups are not used to log in
  - Roles
    - An identity granted permissions
    - Roles aren't permanently assigned
    - Assumable by any entity with a need for it
    - Compatible with federated users (SSO)
      - Giving the ability to users to do the same in another system

Create roles when:
- Applications need access to an AWS service
- Mobile phone apps make requests of AWS
- Existing company users need federated access

![alt text](image-183.png)

### Root user


