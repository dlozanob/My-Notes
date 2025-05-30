# Cloud-Technologie und -Services

[AWS Dienste](https://aws.amazon.com/de/products/?aws-products-all.sort-by=item.additionalFields.productNameLowercase&aws-products-all.sort-order=asc&awsf.re%3AInvent=*all&awsf.Free%20Tier%20Type=*all&awsf.tech-category=*all)


## Bereitstellung und Betrieb der AWS-Cloud

Benutzer können die Ressourcen verwalten, bei der Benutzung aus drei Platformen.

![alt text](image.png)

![alt text](image-1.png)

![alt text](image-2.png)

![alt text](image-3.png)

![alt text](image-4.png)

Die VPC ist eine Netzwerk, die für die Verbindung vielzahle Geräts verfügbar ist.

![alt text](image-5.png)

*Virtual private gateway:* A virtual private gateway is the Amazon VPC side of a VPN connection. It acts as the
termination point for VPN connections.

*Customer gateway:* A customer gateway is the on-premises side of a VPN connection. It is a physical or
software appliance that is connected to your on-premises network and is responsible for establishing the VPN
connection to your VPC.

![alt text](image-6.png)

![alt text](image-7.png)

![alt text](image-8.png)

![alt text](image-10.png)

![alt text](image-11.png)

![alt text](image-12.png)

![alt text](image-13.png)

>[!Note]
> The more loosely coupled the application components are, the better they will scale

>[!Note]
> A monolithic design refers to an architectural style where an application is built as a single, unified unit.
> 1. *Single Codebase:* All components of the application are part of one large codebase.
> 2. *Tightly Coupled:* Components are highly interdependent, making changes or scaling more challenging.
> 3. *Single Deployment:* The entire application is deployed as one unit, which can complicate updates and maintenance.
> 4. *Scalability Issues:* Scaling a monolithic application often requires scaling the entire application, rather than individual components.

![alt text](image-14.png)

![alt text](image-15.png)

An Availability Zone (AZ) is a component of the AWS global infrastructure that is made up of one or more discrete
data centers that have redundant power, networking, and connectivity. Each AZ is physically separated from Other
AZs within a region, and is designed to be fault-tolerant and provide low-latency networking.

![alt text](image-16.png)

![alt text](image-17.png)

![alt text](image-18.png)

![alt text](image-19.png)

![alt text](image-21.png)


## Compute-Services

![alt text](image-24.png)

![alt text](image-25.png)

![alt text](image-27.png)

>[!Note]
> *AWS Auto Scaling* monitors your applications and automatically adjusts capacity to mantain steady, predictable performance at the lowest possible cost. Using AWS Auto Scaling, it's easy to setup application scaling for multiple resources across multiple services in minutes

>[!Note]
> Amazon Machine Images (AMIs): An AMI is a pre-configured virtual machine image that contains the operating system,
> application software, and any Other required components needed to launch an instance. AMIs can be used to create new
> instances in the same or a different region, which can be useful for disaster recovery purposes.

![alt text](image-28.png)

Um detalierte Informationen über *Kubernetes* zu erfahren, clicken Sie hierzu:

[Kubernets](https://kuberntes.io)

![alt text](image-29.png)

![alt text](image-30.png)

![alt text](image-32.png)

![alt text](image-33.png)

With Elastic Beanstalk, you can quickly deploy and manage applications in the AWS Cloud without
having to learn about the infrastructure that runs those applications. Elastic Beanstalk reduces
management complexity without restricting choice or control. You simply upload your application,
and Elastic Beanstalk automatically handles the details of capacity provisioning, load balancing,
scaling, and application health monitoring.

![alt text](image-34.png)

![alt text](image-35.png)

![alt text](image-37.png)

![alt text](image-38.png)


## Speicher-Services

![alt text](image-39.png)

![alt text](image-40.png)

![alt text](image-41.png)

Amazon EFS is a fully managed service providing NFS shared file system storage for Linux workloads.
Amazon EFS makes it quick and efficient to create and configure file systems. You needn't worry about managing
file servers or storage, updating hardware, configuring software, or performing backups. In seconds, create a fully
managed file system using the AWS Management Console, the AWS Command Line Interface (CLI), or an AWS SDK.

![alt text](image-42.png)

![alt text](image-43.png)

![alt text](image-44.png)

![alt text](image-45.png)

![alt text](image-46.png)

![alt text](image-47.png)

![alt text](image-48.png)

[Speicherklassen](https://aws.amazon.com/de/s3/storage-classes/)

![alt text](image-49.png)

![alt text](image-50.png)

![alt text](image-51.png)

![alt text](image-52.png)

![alt text](image-53.png)

![alt text](image-54.png)

![alt text](image-55.png)

_AWS Storage Gateway_ connects on-premises data storage to the AWS Cloud.

![alt text](image-56.png)

![alt text](image-58.png)

![alt text](image-59.png)

![alt text](image-60.png)

![alt text](image-61.png)

>[!Note]
> In the *AWS Marketplace* it's possible to:
> - Sell solutions to other AWS users
> - Buy third-party software that runs on AWS 

## Datenbank-Services

![alt text](image-62.png)

In-Memory-Datenbanken sind Datenbankmanagementsysteme, die den Arbeitsspeicher (RAM) eines Computers als primären Datenspeicher nutzen. Im Gegensatz zu herkömmlichen Datenbanken,
die Festplattenlaufwerke verwenden, speichern In-Memory-Datenbanken alle Daten im RAM, was zu deutlich schnelleren Zugriffszeiten und einer höheren Verarbeitungsgeschwindigkeit führt.

![alt text](image-63.png)

![alt text](image-64.png)

![alt text](image-65.png)

![alt text](image-74.png)

![alt text](image-66.png)

![alt text](image-67.png)

![alt text](image-68.png)

*Amazon DynamoDB* is a fully managed NoSQL database service that provides fast and predictable performance with seamless scalability.

![alt text](image-70.png)

>[!Note]
> _Amazon Neptune_ is a fast, reliable, fully managed graph database service that makes it easy to build and run applications

![alt text](image-71.png)

![alt text](image-72.png)


## Netzwerk-Services

![alt text](image-75.png)

A VPC can span all Availability Zones within an AWS Region.

>[!Note]
> *VPC peering* is useful for establishing a connection between 2 VPCs in different AWS regions

>[!Note]
> _AWS Transit Gateway_ acts as a highly scalable cloud router. It conects your Amazon Virtual Private Clouds (VPCs) and on-premises networks through a central hub.

>[!Note]
> In order to capture inbound and outbound traffic through a VPC, the AWS tool *VPC Flow Logs* can be used

![alt text](image-76.png)

![alt text](image-77.png)

A *Content Delivery Network (CDN)* is a system of geographically distributed servers that work together to deliver web content quickly and efficiently to users. Here are some key points about CDNs:

- *Speed and Performance:* CDNs cache content close to end users, reducing latency and improving load times for websites.
- *Reliability:* By distributing content across multiple servers, CDNs can handle high traffic volumes and mitigate the impact of hardware failures.
- *Cost Efficiency:* CDNs reduce bandwidth costs by caching content, which decreases the load on the origin server.
- *Security:* CDNs offer protection against Distributed Denial of Service (DDoS) attacks and other security threats.

Popular CDN providers include Akamai Technologies, Cloudflare, Amazon CloudFront, Fastly, and Google Cloud CDN.

![alt text](image-78.png)

![alt text](image-79.png)

![alt text](image-80.png)

![alt text](image-81.png)

![alt text](image-82.png)

![alt text](image-83.png)

>[!Note]
> AWS Global Accelerator and Amazon CloudFront are separate services that use the AWS
> global network and its edge locations around the world.

![alt text](image-84.png)

![alt text](image-86.png)

![alt text](image-87.png)


## Kunstliche Intelligenz, Machine Learning und Analytic Services
### KI/ML-Services


![alt text](image-88.png)

![alt text](image-89.png)

![alt text](image-90.png)

### Datenanalyse-Services

![alt text](image-92.png)

![alt text](image-93.png)

![alt text](image-94.png)


## Verwaltungstools

![alt text](image-95.png)

Use _AWS CloudFormation_ templates: AWS CloudFormation is a service that helps you
model and set up your Amazon Web Services resources, making it easier to manage and
automate your infrastructure. With CloudFormation, you can define your infrastructure as
code using templates written in JSON or YAML.

![alt text](image-96.png)

![alt text](image-97.png)

![alt text](image-98.png)

![alt text](image-100.png)

![alt text](image-101.png)

AWS CloudTrail allows AWS customers to record API calls, sending log files to Amazon
S3 buckets for storage.

![alt text](image-102.png)

![alt text](image-103.png)

>[!Note]
>
> Serverless applications:
> - AWS Lambda
> - AWS Fargate
> - AWS Step Functions
> - Amazon DynamoDB
> - Amazon SNS
> - Amazon EventBridge


## Andere Services

![alt text](image-104.png)

![alt text](image-105.png)

![alt text](image-106.png)

![alt text](image-107.png)

_AWS CodeDeploy_ is a fully managed deployment service that automates software deployments to
various compute services, such as Amazon Elastic Compute Cloud (EC2), Amazon Elastic Container
Service (ECS), AWS Lambda, and your on-premises servers. Use CodeDepioy to automate software
deployments, eliminating the need for error-prone manual operations.

*AWS software development kits (SDKs)* allow users to connect with and deploy AWS services
programmatically. AWS provides SDKs for several popular programming languages, including Java, Python,
JavaScript, and C++.

![alt text](image-108.png)

![alt text](image-109.png)

_AWS Elastic Transcoder_ converts video and audio files that are stored in Amazon S3 into a format that is playable on smartphones, tablets, web browsers,
and connected televisions.

![alt text](image-110.png)

>[!Note]
>
> *AWS Service Catalog* allows organizations to create and manage catalogs of IT services that are approved
> for use on AWS. These IT services can include everything from virtual machine images, servers, software,
> and databases to complete multi-tier application architectures.
>
> *AWS Service Catalog* can limit employees' access to a portfolio of predefined AWS resources

>[!Note]
>
> _AWS IAM Access Analyzer_ helps to identify the resources in your organization and accounts, such as Amazon S3 buckets or IAM roles, shared with an external entity.
> This lets you identify unintended access to your resources and data, which is a security task.
>
> IAM Access Analyzer generates a finding for each instance of a resource-based policy that grants access to a
> resource within your zone of trust to a principal that is not within your zone of trust.
> IAM Access Analyzer reports a security warning when your policy grants access to pass any role to any
> service, which is overly permissive. The security warning includes a recommendation that you scope down
> the permissions to pass specific role(s) instead.

_Quick Starts_ are built by AWS solutions architects and partners to help you deploy popular
technologies on AWS, based on AWS best practices for security and high availability.

These accelerators reduce hundreds of manual procedures into just a few steps, so you can build your
production environment quickly and start using it immediately.

_AWS Outposts_ is designed to provide the same APIs, control plane, and hardware as the AWS cloud, but with the ability to run workloads on-premises. This can be useful for applications that require low latency or local system interdependencies, as it allows you to keep your data and applications close to your users and processes.

*Amazon Cognito* is a service that provides user identity and authentication for mobile and web applications, allowing users to sign up, sign in, and access AWS resources with different identity providers.

*AWS CloudHSM* provides dedicated hardware security modules (HSMs) that enable customers to create, control, and manage their own cryptographic keys in the AWS cloud.

*VPC Flow Logs* are an AWS service or feature that capture information about inbound and outbound network traffic from an Amazon EC2 instance. VPC Flow Logs are a feature that enables customers to capture information about the IP traffic going to and from network interfaces in their VPCs. VPC Flow Logs can help customers monitor and troubleshoot connectivity issues, such as traffic that is not reaching an instance or traffic that is being rejected by a security group.

*AWS Step Functions* is a service that allows you to coordinate multiple AWS services into serverless workflows that can be triggered by events.

*AWS Compute Optimizer* provides recommendations to help users get right-sized Amazon EC2 instances based on the workload's historical usage data.

*AWS Cloud9* is an AWS service that enables users to run their existing custom and non-production workloads on the AWS Cloud quickly and cost-effectively. AWS Cloud9 is a cloud-based integrated development environment (IDE) that lets users write, run, and debug code from a web browser. AWS Cloud9 supports multiple programming languages, such as Python, Java, Node.js, and more. AWS Cloud9 also provides users with a terminal that can access AWS services and resources, such as Amazon EC2 instances, AWS Lambda functions, and AWS CloudFormation stacks.

You can use *AWS IAM Identity Center (AWS Single Sign-On)* to enable your users to sign in to a user portal with their corporate credentials and access all their assigned AWS accounts and applications from one place.

*Amazon EventBridge* is a serverless solution that makes it easy to connect application data from multiple sources without requiring additional code.

An *IAM credential report* is a feature of AWS Identity and Access Management (IAM) that allows you to view and download a report that lists all the IAM users in your account and the status of their various credentials, such as passwords, access keys, and MFA devices.

*AWS Directory Service for Microsoft Active Directory* allows the company to utilize a managed service for Active Directory in AWS, making it easier to integrate and manage users and security resources for the new mobile application.

*Amazon Textract* is capable of extracting text and data from scanned documents, ideal for reading values on invoices.

*AWS Device Farm* is an AWS service that allows customers to test their mobile and web applications on real devices in the AWS cloud.

*AWS Ground Station* is an AWS service that allows customers to communicate with satellites and download data from orbit.

*CodeCommit* is a service that provides a fully managed source control service that hosts secure Git repositories.


---

*Infrastructure as a Service (IaaS)*
- Description: Provides virtualized computing resources over the internet. Users can rent infrastructure like servers, storage, and networking on a pay-as-you-go basis.
- Examples: Amazon EC2, Microsoft Azure.
- Use Cases: Ideal for businesses needing scalable and flexible computing resources without investing in physical hardware.

*Platform as a Service (PaaS)*
- Description: Offers a platform allowing developers to build, deploy, and manage applications without worrying about the underlying infrastructure.
- Examples: Google App Engine, Heroku.
- Use Cases: Suitable for developers looking to streamline application development and deployment processes.

*Software as a Service (SaaS)*
- Description: Delivers software applications over the internet, typically on a subscription basis. Users access the software via a web browser.
- Examples: Salesforce, Microsoft Office 365.
- Use Cases: Perfect for businesses needing ready-to-use applications without managing the underlying infrastructure.

*Desktop as a Service (DaaS)*
- Description: Provides virtual desktops hosted in the cloud, allowing users to access their desktop environment from anywhere.
- Examples: Windows 365, Amazon WorkSpaces.
- Use Cases: Ideal for remote work scenarios, offering flexibility and centralized management of desktop environments.

---

*AWS OpsWorks* is a configuration management service that helps you configure and operate applications in a cloud environment using Chef or Puppet.
*AWS OpsWorks for Chef Automate:* Provides a fully managed Chef server that includes Chef Automate features for configuration management, compliance, and security.
*AWS OpsWorks for Puppet Enterprise:* Offers a fully managed Puppet master server, allowing you to use Puppet for infrastructure and application management.
*AWS OpsWorks Stacks:* An application and server management service that models your application as a stack containing different layers.




## Zusammenfassung

![alt text](image-111.png)

![alt text](image-112.png)

![alt text](image-113.png)

![alt text](image-116.png)

![alt text](image-117.png)

![alt text](image-118.png)

![alt text](image-119.png)

![alt text](image-120.png)

![alt text](image-121.png)

![alt text](image-122.png)

![alt text](image-123.png)

![alt text](image-124.png)

![alt text](image-125.png)

![alt text](image-126.png)

![alt text](image-127.png)

![alt text](image-128.png)

![alt text](image-129.png)

![alt text](image-130.png)

![alt text](image-131.png)

![alt text](image-133.png)
