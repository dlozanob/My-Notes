# Sicherheit und Compliance

![alt text](imagec2.png)

![alt text](image-1c2.png)

The customer is responsible for the following:

![alt text](image-2c2.png)
![alt text](image-45c2.png)

Summary of customer's responsabilities:
1. Data: Including encryption options and data classification.
2. Applications: Any application software or utilities installed on AWS services.
3. Guest Operating System: Updates, security patches, and configuration.
4. Identity and Access Management (IAM): Applying appropriate permissions and managing user access.
5. Network Security: Configuring security groups and network access control lists (NACLs).

AWS' responsibilities: 
- Handling the security of the cloud infrastructure, while customers are responsible for security in the cloud.
- Installing patches in the cloud.

Shared responsibilities:
- Patch management: AWS is responsible for patching and fixing flaws within the infrastructure, but customers are responsible for patching their guest OS and applications
- Configuration Management
- Awareness & Training

However, installing patches is a shared responsibility, it depends on which patches we are talking about.
- Installing security patches for the Xen and KVM hypervisors (AWS)
- Installing operating system patches for Amazon DynamoDB (AWS)
- Installing operating system security patches for Amazon RDS database instances (AWS)
- Installing operating system security patches for Amazon EC2 database instances (Customer)

![alt text](image-3c2.png)

![alt text](image-5c2.png)

![alt text](image-6c2.png)

![alt text](image-7c2.png)

![alt text](image-8c2.png)

Security Groups and Network Access Control Lists (NACLs) are both critical components for managing security within AWS, but they serve different purposes and operate at different levels.

*Security Groups:*
- Instance-Level Firewall: Security groups act as virtual firewalls for EC2 instances, controlling inbound and outbound traffic.
- Stateful: If you allow inbound traffic, the corresponding outbound traffic is automatically allowed.
- Rules: Security groups only support "allow" rules. By default, all inbound traffic is denied, and you must explicitly allow desired traffic.
- Rule processing: They evaluate all rules before allowing traffic

*Network Access Control Lists (NACLs):*
- Subnet-Level Firewall: NACLs act as firewalls for subnets within your VPC, controlling traffic to and from the subnet.
- Stateless: You must create rules for both inbound and outbound traffic separately.
- Rules: NACLs support both "allow" and "deny" rules. By default, they allow all inbound and outbound traffic for IPv4.
- Rule processing: They process rules in order, starting with the lowest numbered rule, when deciding whether to allow traffic


*Key Differences:*
- Level of Operation: Security groups operate at the instance level, while NACLs operate at the subnet level.
- Statefulness: Security groups are stateful, whereas NACLs are stateless.
- Rule Types: Security groups only allow rules, while NACLs can both allow and deny rules.

Using both security groups and NACLs together can provide a robust, layered security approach for your AWS environment.

![alt text](image-9c2.png)

>[!Note]
> A *Security Group* is a virtual firewall that controls inbound and outbound traffic for an Amazon EC2 instance

![alt text](image-10c2.png)

- *IAM:* Identity Access Management

![alt text](image-12c2.png)

![alt text](image-13c2.png)

![alt text](image-14c2.png)

>[!Note]
> Service Control Policies (SCPs) are IAM-like policies to manage permissions in AWS Organizations.
> SCPs restrict the actions allowed for accounts within the organization making each one of them
> compliant with your guidelines.

![alt text](image-15c2.png)

![alt text](image-16c2.png)

![alt text](image-17c2.png)

![alt text](image-18c2.png)

![alt text](image-19c2.png)

![alt text](image-20c2.png)

There are only a few tasks that require you to use the root user:
- Change your account settings. This includes the account name, email address, root user
password, and root user access keys
- View certain tax invoices
- Close your AWS account.
- Restore IAM user permissions
- Change your AWS Support plan or Cancel your AWS Support plan.

![alt text](image-21c2.png)

![alt text](image-22c2.png)

![alt text](image-23c2.png)

![alt text](image-24c2.png)

![alt text](image-26c2.png)

![alt text](image-27c2.png)

![alt text](image-28c2.png)

![alt text](image-29c2.png)

![alt text](image-30c2.png)

![alt text](image-31c2.png)

**5 Kategorien:**
- Kostenoptimierung
- Leistung
- Sicherheit
- Fehlertoleranz
- Dienstleistungsgrenzen

![alt text](image-44c2.png)

![alt text](image-32c2.png)

![alt text](image-33c2.png)

![alt text](image-35c2.png)

![alt text](image-36c2.png)

![alt text](image-37c2.png)

![alt text](image-38c2.png)

![alt text](image-39c2.png)

>[!Note]
> AWS Artifact provides on-demand downloads of AWS security and compliance documents, such as AWS
> ISO certifications, Payment Card Industry (PCI), and Service Organization Control (SOC) reports.

**Governance und Compliance Services:** Sie bei der Governance und Compliance in der AWS-Infrastruktur helfen können.

Dies sind:
- Amazon CloudWatch
- AWS CloudTrail
- AWS Audit Manager
- AWS Config

![alt text](image-40c2.png)

![alt text](image-41c2.png)

![alt text](image-42c2.png)

>[!Note]
> *Amazon Macie* uses machine learning to help discover, monitor, and protect sensitive data that is stored in Amazon S3 buckets.

![alt text](image-43c2.png)

Um Sicherheitsinformationen zu holen, clicken Sie hier unten:

[AWS Knowledge Center](https://repost.aws/knowledge-center)

The AWS Trust & Safety team can assist you when AWS resources are used to engage in the following types of abusive behavior:

- Spam
- Port scanning
- Denial-of-service (DOS) attacks
- Intrusion attempts
- Hosting prohibited content
- Distributing malware

![image](https://github.com/user-attachments/assets/1ec3c1bb-6bb8-4bc7-9d0b-22378efa2629)


