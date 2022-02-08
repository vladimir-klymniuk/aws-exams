```t
    Which of the following can help in the disaster recovery for the RDS service?

    + RDS Snapshots
    + RDS Cross Region Read Replicas\'s
    - RDS Multi-AZ Deployments
    - DB Subnets Groups
```


```
    RDS Snapshots - By default, Amazon RDS creates and saves automated backups of your DB instance securely in Amazon S3 for a user-specidied retention period. In addition, you can create snapshots, which are user-initiated backups of your instance that are kept until you explicitly delete them.

    You can create a new instance from a database snapshots whenever you desire. Although database snapshots server operationally as full backups, you are billed only for incremental storage use.
```

```
    Amazon RDS Read Replicas - Amazon RDS Read Replicas provide enhanced performance and durability for RDS database(DB) instances. They make it easy to elastically scale out beyond the capacity constraints of a single DB instance for read-heavy database workloads.
```

```
    RDS Multi-Availability Zone (Multi-AZ) deployments for Amazon Relational Database Service (Amazon RDS). This new deployment option provides enhanced availability and data durability by automatically replication database ipdates between multiple Availability Zones. Availability Zones are physically serparate locations with independent infrastructure engineered to be insulated from failure in other Availability Zones. When you create or modify your DB Instance to run as a Multi-AZ deployment, Amazon RDS will automatically provision and maintain a synchronous "standby" replica in a different AZ.
```

``` 
    RDS Cross Region Read Replicas - This feature builds upon our existsing support for read replication that reside within the same region as the source database 
```

TODO: read itentively ->
https://aws.amazon.com/blogs/aws/cross-region-read-replicas-for-amazon-rds-for-mysql/