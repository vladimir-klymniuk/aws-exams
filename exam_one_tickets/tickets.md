

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


```
2. Which of the following service can be used to create a self-hosted database?
    - AWS DynamoDB
    + AWS EC2 Instance
    - AWS RDS
    - AWS Aurora
```

Why, so? Let's get the short overview of following  services examples.

`AWS DynamoDB` - that is fully managed NoSQL database, that supports key-value paradigm for data and documents. She proposed as one of Amazon Web Services. Supplies two tarefication modes based on RPS or traffic size throughout.

`AWS EC2 Instance` - Amazon Elastic Compute Cloud(Amazon EC2) - web service, `EC2` provides ability to users to rent servers which hosts at the amazone cloud. `EC2` service includes in Amazon Web Services infrastructure. Userfriendly web interface allows to get access to instance resources and manage connection interfaces around it and inside.

`AWS RDS` - (Amazon Relational Database Service) is managed relational database service for MySQL, PostgreSQL, MariadDB, Oravle BYOL, or SQL Server.

`AWS Aurora` - is a relational database with MySQL and PostgreSQL compability. Aurora automatically allocates database storage space in 10-gigabyte increments, as needed, up to a maximum of 128 terabytes. Aurora offers automatic, six-way replication of those chunks across three Availability Zones for availability and fault-tolerance. Aurora MultiMaster allows creation of multiple read-write instances in an Aurora database across multiple Availability Zones, which enables uptime-sensitive applications to achive continuous write availability through instance failure.

```
Сonclusion - Only AWS EC2 Instance is open for installation database inside.
```


```
3. Which of the followinf service can be used to host a
MariaDB database on the AWS Cloud
    - AWS DynamoDB
    - AWS S3
    + AWS RDS
    - AWS Aurora
```

To answer for this question we should answer what is `MariaDB`? 

```
MariaDB is fork of MySQL from 5.2 version with her cutsom database engines which extends and overload MyISAM to Aria and InnoDB to XtraDB. 

Aria improved relability and consistency of data, also operation log supports ability to restore database from any point in bulk operactions (includes CREATE / DROP / RENAME / TRUNCATE).

XtraDB was merged with newest version of InnoDB. 

Sphinx - storage for search queries. Mounted Sphinx-client allow MariadDB to exchange data with searchd, execute search queries and accept results.
```

Сonclusion - due our previous question we know that: Aurora - supports only original MySQL and PosgreSQL, S3 - is a file storage, DynamoDB - key-value memory storage and RDS is a wrapper around SQL based databases. 


```
4. You are planning on developing an application that will make use of AWS(Amazon Web Service) services. You need to carry out optimization for your application and see ways for improvement. Which of the below service can help in this regard.
    
    - AWS X-Ray
    - AWS CodeInspector
    - AWS CodeDeploy
    - AWS CodeCommit
```

