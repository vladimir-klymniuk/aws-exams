```text
1. Which of the following can be enforced for IAM users for securing IAM credentials?

    `-  Enable IAM Groups`
    `+  Enable MFA`
    `+  Use password expiry`
    `-  Enable IAM Users`
```text
 
Why not IAM Groups or IAM Users? Question was about securing existing accounts and not about enabling.

```text
Take a look at AWS as a incapsulated platform which help your buisness to start and grow.
Every single detail and service give your buisnees ability to atomatative the processes inside or
space for hosting and deploying your app.


So, what is basicaly means this IAM account configuration?


That is global security rules-variables setup for `your platform` accounts which 
should be managed and created with tool that we gonna overview next.

Here is example of automatisation global rules for your account with HashiCorp terraform tool.
link: https://github.com/vladimir-klymniuk/aws-practitioner-exam/tree/master/terraform/iam
```

```txt
2. Which of the following service can be used to create a self-hosted database?
    - AWS DynamoDB
    + AWS EC2 Instance
    - AWS RDS
    - AWS Aurora


Why, so? Let's get the short overview of following  services examples.

`AWS DynamoDB` - that is fully managed NoSQL database, that supports key-value paradigm for data and documents. She proposed as one of Amazon Web Services. Supplies two tarefication modes based on RPS or traffic size throughout.

`AWS EC2 Instance` - Amazon Elastic Compute Cloud(Amazon EC2) - web service, `EC2` provides ability to users to rent servers which hosts at the amazone cloud. `EC2` service includes in Amazon Web Services infrastructure. Userfriendly web interface allows to get access to instance resources and manage connection interfaces around it and inside.

`AWS RDS` - (Amazon Relational Database Service) is managed relational database service for MySQL, PostgreSQL, MariadDB, Oravle BYOL, or SQL Server.

`AWS Aurora` - is a relational database with MySQL and PostgreSQL compability. Aurora automatically allocates database storage space in 10-gigabyte increments, as needed, up to a maximum of 128 terabytes. Aurora offers automatic, six-way replication of those chunks across three Availability Zones for availability and fault-tolerance. Aurora MultiMaster allows creation of multiple read-write instances in an Aurora database across multiple Availability Zones, which enables uptime-sensitive applications to achive continuous write availability through instance failure.


Сonclusion - Only AWS EC2 Instance is open for installation database inside.
```


```txt
3. Which of the followinf service can be used to host a
MariaDB database on the AWS Cloud
    - AWS DynamoDB
    - AWS S3
    + AWS RDS
    - AWS Aurora
```

To answer for this question we should answer what is `MariaDB`? 


MariaDB is fork of MySQL from 5.2 version with her cutsom database engines which extends and overload MyISAM to Aria and InnoDB to XtraDB. 

Aria improved relability and consistency of data, also operation log supports ability to restore database from any point in bulk operactions (includes CREATE / DROP / RENAME / TRUNCATE).

XtraDB was merged with newest version of InnoDB. 

Sphinx - storage for search queries. Mounted Sphinx-client allow MariadDB to exchange data with searchd, execute search queries and accept results.
```

Сonclusion - due our previous question we know that: Aurora - supports only original MySQL and PosgreSQL, S3 - is a file storage, DynamoDB - key-value memory storage and RDS is a wrapper around SQL based databases. 


```txt
4. You are planning on developing an application that will make use of AWS(Amazon Web Service) services. You need to carry out optimization for your application and see ways for improvement. Which of the below service can help in this regard.
    
    + AWS X-Ray
    - AWS CodeInspector (No such service)
    - AWS CodeDeploy
    - AWS CodeCommit    (No such service)


Let's get overview of that services and their differens.

`AWS X-Ray` helps developers analyze and debug production, distributed applications, such as those build using a microservices architecture. With X-Ray, you can understand how your application and it's underlying services are performing to identify and troubleshoot the root cause as they travel through you application, and shows a map of your apllications's underlying components. You can use X-Ray to analyze both applications in development and in production, from simple three-tier applications to complex microservices applications consisting of thousands of services.

`AWS X-Ray` works with `Amazon EC2`, `Amazon EC2 Container Service(Amazon ECS)`, `AWS Lambda`, `Amazon SNS` and `AWS Elastic Beanstalk`. You can use X-Ray with applications written in Java, Node.js and .NET that are deployed on these services. 

A trace repsesents a request to your application and may include multiple data points, such as for calls to other services and database access. The maximum siz of a trace is 500KB. Trace data is retained for 30 days from the time it is recorded at no additional cost.

`AWS CodeDeploy` | TODO: Deploy several types of nodejs applications that uses api (kust graphql), daemon applications (twitch bot).


Integrated and automates software deployments to a variety of compute services such as Amazon EC2, AWS Fargate, AWS Lambda, and your on-premises servers.

Interesting thing about pricing

For CodeDeploy on EC2, Lambda, ECS: There is no additional charge for code deployments to Amazon EC2, AWS Lambda or Amazon ECS through AWS CodeDeploy.

For CodeDeploy On-Premises: You pay $0.02 per on-premises instance update using AWS CodeDeploy. For example, a deployment to three instances equals three instance updats. You will only be charged if CodeDeploy performs an update to an instance. You will not be charged for any instances skipped during the deployment and S3 buckets resources.

```

From that 4 options, two aren't exists and X-Ray service responsible for workability optimisation and profiling deployed services. CodeDeploy is tool for application deployments.


```txt
5. Your IT Security team has notified of suspicious activity in the AWS(Amazon Web Service) account. You need to check and see what API calls were made in the last week. Which of the below service can help fulfil this requirement.


    - AWS Cloudwatch Metrics
    + AWS CloudTrail
    - AWS Cloudwatch Logs
    - AWS VPC Flow Logs


Cloudwatch - is monitoring and alerting service.
CloudTrail - track user activity and api usage.
VPC Flow Logs - is a feature that enables you to capture information about the IP traffic going to and from network interfaces in you VPS.

If case when we should proccesed suspicious AWS services users activity we should use ClourTrail. If other hand in case we should analyze traffic VPC Flow Logs & CloudWatch is much better tools.
```

```txt
6. Which of the following is an advantage of moving from on-premise to AWS(Amazon Web Service) when it comes to costing.

    + Lower capex costs + Variable opex costs
    - Higher capex costs + Variable opex costs
    - Lower capex costs + Fixed opex costs
    - Higher capex costs + Fixed opex costs


`OPEX costs` - is an ongoing cost for running a product, business, or system. 

`CAPEX costs` - is the money an organization or corporate entity spends to buy, maintain, or improve its fixed assets, such as buildings, vehicles, equipment, or land.

On-premise infustructure is a CAPEX, couse we own that physical servers and maximum available usage is fixed. Moving to cloud gaves us ability to pay on-demand services and have variable bills depends on real usage with ability to scale our inrastructure on request.
```


```txt
7. Which of the following is available across all AWS(Amazon Web Service) support plans? Choose 2 answers from the options given below.

    - Access to all checks in the Trusted Advisor
    - 24x7 access to Cloud Support forums
    - AWS support forums
    - Personal Health Dashboard


AWS Personal Health Dashboard - 
```