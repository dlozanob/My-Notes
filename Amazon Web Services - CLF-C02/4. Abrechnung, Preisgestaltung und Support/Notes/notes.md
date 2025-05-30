# Abrechnung, Preisgestaltung und Support

## Abrechnung und Preisgestaltung

![alt text](image.png)

![alt text](image-1.png)

![alt text](image-2.png)

![alt text](image-3.png)

_EC2 type of instances:_

1. On-Demand Instances
   - Description: Pay for compute capacity by the hour or second with no long-term commitment. Mostly by second.
   - Use Case: Unpredictable/irregular workloads, short-term projects, non-interruptable workloads.

2. Reserved Instances
    - Description: Provide a significant discount (up to 72%) compared to On-Demand pricing in exchange for a one- or three-year commitment.
    - Use Case: Long-running workloads and predictable usage.

---

*Standard Reserved Instances*
- Discount: Typically offer the highest discount compared to On-Demand pricing.
- Flexibility: Limited to modifications within the same instance family, such as changing the Availability Zone, scope, networking type, and instance size.
- Marketplace: Can be sold in the Reserved Instance Marketplace.

*Convertible Reserved Instances*
- Discount: Offer a smaller discount than Standard Reserved Instances.
- Flexibility: Can be exchanged for another Convertible Reserved Instance with different attributes, including instance family, operating system, and tenancy. There are no limits to how many times you can perform an exchange, as long as the target Convertible Reserved Instance is of equal or higher value.
- Marketplace: Cannot be sold in the Reserved Instance Marketplace.

Convertible Reserved Instances are useful if you anticipate changes in your workload or need more flexibility in your instance configurations. Standard Reserved Instances are ideal if you want the highest discount and have a stable, predictable workload.

---

3. Spot Instances
    - Description: Allow you to bid on spare Amazon EC2 capacity at a lower price than On-Demand instances (90% discount).
    - Use Case: Cost-sensitive compute workloads. Suitable for flexible workloads, can tolerate interruptions, big data processing, batch jobs, and applications that are fault-tolerant.

4. Dedicated Instances

   - Description: Dedicated Instances are EC2 instances that run on hardware dedicated to a single customer, providing isolation from other customers.
   - Use Case: They are used when you need physical isolation for compliance or regulatory requirements.

5. Savings Plans
    - Description: Flexible pricing model offering lower prices compared to On-Demand in exchange for a commitment to a consistent amount of usage (measured in $/hour) for a one- or three-year term.
    - Use Case: Ideal for users who want to reduce costs with a flexible commitment.
    - EC2 instances are exclusive for Reserved Instances. While in Saving Plans, there are included 2 more services: Fargate and Lambda.

6. Dedicated Hosts
    - Description: Physical servers with EC2 instance capacity fully dedicated to your use.
    - Use Case: Useful for meeting compliance requirements and reducing costs by using existing server-bound software licenses.


![alt text](image-4.png)

![alt text](image-5.png)

[Amazon Kostenlose Angebote](https://aws.amazon.com/de/free)

![alt text](image-6.png)


## Budget- und Kostenmanagement

![alt text](image-7.png)

![alt text](image-8.png)

![alt text](image-9.png)

>[!Note]
> You can now use Service Quotas in AWS GovCloud (US) Regions to View and manage your service
> quotas at scale as your AWS workloads grow. Used to request and track service limit increases

![alt text](image-10.png)

*AWS Cost Explorer:* Is a graphical cost analysis tool available from the Billing and Cost Management console's menu. It uses the data from each month's spending for up to the last thirteen months and can forecast a spend pattern for the next three months. The spend graphs can be tailored for certain time periods as well.

![alt text](image-11.png)

![alt text](image-12.png)

![alt text](image-13.png)

![alt text](image-14.png)

![alt text](image-15.png)

![alt text](image-16.png)

![alt text](image-17.png)

![alt text](image-19.png)

_Consolidated billing_ has the following benefits:

- One bill: You get one bill for multiple accounts.
- Easy tracking: You can track the charges across multiple accounts and download the combined
cost and usage data.
- Combined usage: You can combine the usage across all accounts in the organization to share the
volume pricing discounts, Reserved Instance discounts, and Savings Plans. This can result in a lower
charge for your project, department, or company than with individual standalone accounts.
- No extra fee: Consolidated billing is offered at no additional cost


_AWS Organizations_ provides you with the capability to centrally manage and govern your cloud environment.
You can manage and organize your accounts under a single bill, set central policies and configuration
requirements for your entire organization, create custom permissions or capabilities within the organization,
and delegate responsibilities to other accounts so they can manage on behalf of the organization.
In addition, _AWS Organizations_ is integrated with other AWS services so you can define central configurations,
security mechanisms, audit requirements, and resource sharing across accounts in your organization.

>[!Note]
> You can use tags to organize your resources, and cost allocation tags to track your AWS costs on a detailed
> level. After you activate cost allocation tags, AWS uses the cost allocation tags to organize your resource
> costs on your cost allocation report, to make it easier for you to categorize and track your AWS costs.

## Ressourcen für Support und Abrechnung

![alt text](image-20.png)

![alt text](image-22.png)

![alt text](image-23.png)

![alt text](image-24.png)

AWS re:Post is a community-driven platform where you can find expert-verified answers to AWS technical questions. It provides access to a wealth of curated knowledge, including solutions from AWS experts, official AWS Knowledge Center articles, and troubleshooting guidance.

You can ask questions, connect with AWS partners and employees, and follow popular topics to stay updated on the latest AWS developments. It's a great resource for anyone looking to deepen their understanding of AWS services and solve cloud computing challenges.

![alt text](image-25.png)

Es bietet auch an, die Möglichkeit Support-tickets zu eröffnen.

![alt text](image-26.png)

![alt text](image-27.png)

>[!Note]
> AWS Basic Support and AWS Developer Support customers can access just the core security checks of AWS Trusted Advisor.

![alt text](image-28.png)

![alt text](image-29.png)

![alt text](image-32.png)

![alt text](image-33.png)

![alt text](image-34.png)

The *AWS Health API* is available for the Business Support Plan. It provides programmatic access to AWS Health information that is presented in the AWS Personal Health Dashboard. It can help users get timely and personalized information about events that can affect the availability and performance of their AWS resources.

![alt text](image-36.png)

![alt text](image-37.png)

![alt text](image-38.png)

![alt text](image-39.png)

![alt text](image-40.png)

![alt text](image-41.png)

![alt text](image-42.png)

![alt text](image-43.png)

>[!Note]
>
> Additionally, AWS Enterprise Support brings support of 3rd-party software integration to AWS

[Weitere Informationen über Supportpläne](http://aws.amazon.com/de/premiumsupport/plans)

![alt text](image-44.png)

![alt text](image-45.png)

If you have an account or billing related question, do the
following:

1. Sign in to your AWS account.
2. Open the AWS Support Center.
3. Choose Create case.
4. Select Account and billing support.
5. Enter the required information in the Case details section.

---

**Concierge Support Team**

The Concierge Support Team provides a high level of personalized service, often referred to as "white-glove" support. Their main functionalities include:

- Tailored Solutions: Offering customized assistance based on individual client needs.
- Proactive Problem Solving: Anticipating issues and addressing them before they become problems.
- Enhanced Customer Experience: Providing unexpected perks and personalized recommendations to enhance the overall experience.


**Professional Services**

Professional Services teams offer specialized expertise to help businesses navigate complex challenges. Their functionalities include:

- Consulting: Providing expert advice in areas such as management, IT, and legal services.
- Implementation: Assisting with the deployment and integration of new systems or processes.
- Training and Support: Offering training sessions and ongoing support to ensure successful adoption of new solutions.


**Enterprise Support**

Enterprise Support teams provide comprehensive support to large organizations, ensuring their IT systems run smoothly. Their functionalities include:

- 24/7 Expert Assistance: Offering round-the-clock support for critical issues.
- Proactive Planning: Helping organizations plan and optimize their IT infrastructure.
- Advisory Services: Providing strategic advice to improve performance, security, and cost-efficiency.

**Technical Account Manager (TAM)**

The TAM plays a crucial role in Enterprise Support by:

- Personalized Guidance: Working closely with clients to understand their specific needs and goals.
- Proactive Engagement: Regularly engaging with clients to provide strategic advice and ensure optimal use of services.
- Issue Resolution: Coordinating with support teams to resolve issues efficiently and effectively.
- Strategic Planning: Assisting in the development of long-term IT strategies to support business objectives.

![alt text](image-46.png)

**APN Consulting Partners**
- Role: Professional services firms that help customers design, architect, build, migrate, and manage their workloads and applications on AWS.
- Types: Includes System Integrators, Strategic Consultancies, Agencies, Managed Service Providers, and Value-Added Resellers.
- Services: They provide expertise in various areas such as cloud strategy, migration, implementation, and managed services to ensure customers can effectively leverage AWS technologies.

**APN Technology Partners**
- Role: Companies that provide software solutions which are either hosted on, or integrated with, the AWS platform.
- Types: Includes Independent Software Vendors (ISVs), SaaS, PaaS, Developer Tools, Management, and Security Vendors.
- Services: They offer a range of solutions that enhance AWS capabilities, including software for security, monitoring, development, and management.


---

## Datenklassifizierung

Die Datenklassifizierung umfasst die folgenden Schritte:

- *Identifizierung der Daten (Discovery):* Alle Datenbestände einer Organisation werden erfasst, einschließlich strukturierter und unstrukturierter Daten.

Discovery ist der Prozess des Auffindens von Daten, die analysiert und für Sicherheitskontrollen klassifiziert
werden müssen.
- *Bewertung der Sensibilität und des Wertes (Klassifizierung):* Daten werden basierend auf ihrer Sensibilität und ihrem Wert bewertet. Sensible Daten sind solche, die besonders geschützt werden müssen, um unbefugten Zugriff, Änderungen oder Offenlegung zu verhindern.

Bei der Klassifizierung werden Daten genommen und ihr Risiko, ihr Wert und ihre Empfindlichkeit bewertet,
um zu bestimmen, welche Sicherheitskontrollen erforderlich sind.
- *Kategorisierung der Daten (Kennzeichnung Labeling):* Daten werden in verschiedene Klassifizierungsstufen eingeteilt, wie z.B. öffentlich, intern, vertraulich und streng vertraulich.

Die Kennzeichnung wird in der Regel verwendet, um Daten nach Typ oder Gruppe für die
Analyse Oder Berichterstattung zu kategorisieren.

- *Anwendung von Sicherheitskontrollen:* Basierend auf der Klassifizierung werden geeignete Sicherheitskontrollen und Zugriffsrichtlinien implementiert, um die Daten zu schützen 


>[!Note]
> Beim Hashing wird ein Datenobjekt mit einem Wert fester Länge versehen, der für Integritätsprüfungen verwendet wird.

>[!Note]
> Anonymisierung ist der Prozess, bei dem persdnliche Daten aus Datensätzen entfernt und durch andere Werte ersetzt werden, um die Privatsphäre der Benutzer:innen zu schützen.

>[!Note]
> Verschleierung (Obfuscation) ist der Prozess des Ersetzens sensibler Daten durch andere Werte, um die wirklichen Daten nicht preiszugeben, typischerweise verwendet in Testdatensätzen.

---

