```r
Your company is planning on hosting a mission critical application on the AWS(Amazon Web Service) platform. The application would e hosted on EC2 Instances. The company wants to add `the highest level of fault tolerance to the application`. Which of the following desing patter could be used when it comes to hte application infrastructue?

    - EC2 Instances in a single. Availability zone in a single region.
    
    - EC2 Instances in a multiple Availability zones in a single region

    +/- EC2 Instances in a single Availability zone in 2 regions

    +/- EC2 Instances in multiple Availability zones in 2 regions
```

Why so? The correct answer.. it depend on

<!-- 1 - We don't know anything about other infrastructure configurations around the instances that's why add autoscalling rules to current instance would be a normal desion.  -->

3 - 4 To reduce pressure on databases located in same location. Each Region contain several availablity zone and each availability zone can contain databse instance.

A source DB instance can have cross-Region read replicas in multiple AWS Regions.

https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.XRgn.html#USER_ReadRepl.XRgn.Cnsdr