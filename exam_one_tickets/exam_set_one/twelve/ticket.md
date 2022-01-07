```r

You want to have the ability to distribute content across the world with the least amount of latency. Which of the following service could you use for this requirement.

    + AWS Cloudfront
    - AWS Elastic Load Balancer
    - AWS WAF
    - AWS Shield

AWS Cloudfront - resposible for access in AWS distributed network with own magistrals all over the wold.

AWS Elastic Load Balancer - is internal tool for trafic routing inside that network

AWS WAF - Web Application Firewall that can be deploed on Amazon CLoudFront as part of your CDN solution, the Application Load Balancer that fronts your web servers or origin servers running on EC2, AMazon API Gateway for your REST APIs, or AWS AppSync for yout GraphQL APIs. With AWS WAF, you pay only for what you use and the pricing is based on how many rules you deploy and how many web request your application receivers.

AWS Shield - resposible for ddos protect.
```