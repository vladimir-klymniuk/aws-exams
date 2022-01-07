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
