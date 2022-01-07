``` r
5. Your IT Security team has notified of suspicious activity in the AWS(Amazon Web Service) account. You need to check and see what API calls were made in the last week. Which of the below service can help fulfil this requirement.


    - AWS Cloudwatch Metrics
    + AWS CloudTrail
    - AWS Cloudwatch Logs
    - AWS VPC Flow Logs


`Cloudwatch` - is monitoring and alerting service.
`CloudTrail` - track user activity and api usage.
VPC Flow Logs - is a feature that enables you to capture information about the IP traffic going to and from network interfaces in you VPS.

If case when we should proccesed suspicious AWS services users activity we should use ClourTrail. If other hand in case we should analyze traffic VPC Flow Logs & CloudWatch is much better tools.
```