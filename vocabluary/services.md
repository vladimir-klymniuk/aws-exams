
`AWS Fargate` is a technology that provides on-demand, right-sized compute capacity for containers. With AWS Fargate, you don't have to provision, configure, or scale groups of virtual machines on your own to run containers. Espesially used for k8s depend on optimised usage of containers sizing and reduse unneeded network work and dns resolutions.



`AWS CloudTrail` - Track user activity and API usage.

`Store` - Deliver events to Amazon S3 and Amazon CloudWatch Logs.

`Monitor` - Detect unusual API activity with CloudTrail Insights or Amazon EventBridge.

`Analyze` - View recent events in the AWS CloudTrail console, or analyze log files with Amazon Athena.


`Amazon CloudWatch` monitors your Amazon Web Services (AWS) resources and the applications you run on AWS in real time. You can use CloudWatch to collect and track metrics, which are variables you can measure for you resources and applications.

You can create alarms that watch metrics and send notifications or automatically make changes to the resources you are monitoring when a threshold is breached. Fox example, you can monitor the CPU usage and disk reads and writes of your AmazonEC2 instances and then use that data to determine wherher you should launch additional instances to handle increased load. You can also use this data to stop under-used instances to save money.


``` r
AWS Personal Health Dashboard - The AWS Personal Health Dashboard organizes issues in three groups: open issues, scheduled changes, and other notifications. You can use Amazon CloudWatch Events to detect and react to changes for AWS Health events. You can monitor specific AWS Health events that occur in your AWS account, and then set up riles so that you get notified or take action when events change. You can use the AWS Health API, the service that powers Personal Health Dashboard, to integrate health data and notifications with your existing in-house or third-party IT management tools.

The Personal Health Dashboard sipports access control so that you can set up permissions based on event metadata. This allows you to grant or deny access to an AWS Identity and Access Management (IAM) user based on attributes, such as event types specific services, or other role-based attributes. You cant restrict access of sensitive events, such as security events, to only the users that need to see them.


Has integration with Partners:
    - PagerDuty
    - splunk>
    - DATADOG

Available for all Support plans
```


`VPN connections` - You can connect your Amazon VPC to remote networks and users using the following VPN connectivity options.
``` r   
    VPN connectivity option:
        AWS Site-to-Site VPN - You can create an IPsec VPN connection between your VPC and your remote network. On the AWS side of the Site-to-Site VPN connection, a virtual private gateway or transit gateway provides two VPN endpoints (tunnels) for automativ failover. You configure your customer gateway device on the remote side of the Site-to-Site VPN connection.


        AWS Client VPN - AWS Client VPN is a managed client-based VPN service that enables you to securely access your AWS resources or your on-premises network. With AWS Client VPN, you configure an endpoint to which your users can connect to establish a secure TLS VPN session.

        AWS VPN CloudHub - If you have more that one remote network (for example, multiple branch offices), you can create multiple AWS Site-to-Site VPN connectopns via your virtual private gateway to enable communication between these networks. 
```





`AWS Cloudfront` - Global Edge Network. Reliable, low latency and high throughput network connectivity. Amazon CloudFront peers with thousands of Tier 1/2/3 telecom carriers globally, is well connected with all major access networks for optimal perfomance, and has hundreds of terabits of deployer capacity. CloudFront Edge locations are connected to the AWS Regions through the AWS network backbone - fully redundant, multuple 100GbE parallel fiber that circles the globe and links with tens of thousands of networks for improved origin fetches and dynamic content acceleration.


`Amazon Virtual Private Cloud features`

Amazon Virtual Private Cloud (VPC) is a service that lets you launch AWS resources in a logically isolated virtual network that you define. You have complete control over your virtual networking environment, including selection of your own IP address range, creation of subnets, and configuration of toure tables and network gateways. Amazon VPC lets you to use multiple layers of security, including security groups and network access control lists, to help control access to Amazon Elastic Compute Cloud (Amazon EC2) instances in each subnet.

```r

`VPC Flow Logs` - is a feature that enables you to capture information about the IP traffic going to and from network interfaces in you VPS. Flow log data can be published to Amazon CloudWatch Logs or Amazon S3. After you create a flow log, you can retrieve and view its data in the chosen destination.

`IP Address Manager (IPAM)

IPAM makes it easier for you to plan, track, and monitor IP addresses for yout AWS workloads. IPAM automates IP address assignments to your Amazon VPC, removing the need to use homegrown or spreadsheet-based planning applications. It also enhances your network observability by showing IP usage across multiple accounts and VPVs in a unified operational view.

`Ingress Routing`

With this feature, you can route all incoming and outgoung traffic flowing to/from an internet gateway or virtual private gateway to a specific Amazon EC2 instances  `elastic network interface`. Configure your virtual private cloud to send all traffic ti a gateway or an Amazon EC2 instance before it reaches your business workloads. 

`Network Access Analyzer` 

Network Access Analyzer helps you verify that your network on AWS confirms to your network security and compliance requirements. You can use Network Acess Analyzer to underestand network access to your resources, helping you identify improvements to your cloud security posture and easily demonstarate compliance.

`Network Access Control List`

A network access control list (network ACL) is an optional layer of security for your VPC that acts as a firewall for controlling traffic in and out of one or more subnets. Yoou might set up network ACLs with rules similar to those of your security groups. 

`Reachability Analyzer` This static configuration analysis tool enables you to analyze and debug network reachabuluty between two resources in your VPC. After you specifu the source and destination resources, Reachability Analyzer produces hop-by-hop details of the virtual path between them when they are reachable, and identifies the blocking component when thery are unreachable.


`Security Groups`

Create security groups to act as firewall for associated Amazon EC2 instances, controlling inbound and outbound traffic at the instaces level. When you launch an instace, you can associate it woth one or more security groups.


`Traffic Mirroring` 

This feature allows you to copy network traffic from an elastic network interface of Amazon EC2 instaces and send it to out-of-band security and monitoring appliances for deep packet inspection. YOu can detect network and security anaomalies, gain operation insights, implement compliance and security controls, and troubleshool issues.
```

`Amazon VPC` can be used with:
    AWS Transit Gateway: Easily connect Amazon VPCs, AWS accounts, and on-premises networks to a single gateway.
`AWS Private Link` Establish private connectivity between VPCs and services hosted on AWS or on-premises, without exposing data to the internet.

`AWS Network Firewall` Deploy network security across your Amazon VPCs with just a few clicks.

`AWS VPN` Extend your on-premises networks to the cloud and securely access them from anywhere.

`Network address translation (NAT) gateway` Allow your VPC private subnet workloads to access the internetn while preventing the internet from iniating a connection with those instances.


``` r
`AWS WAF` - Web Application Firewall. Web application firewall that helps your web applications or APIs against common web exploits and bots that may affect availablity, compromise security, or consi,e excessive resources. AWS WAF gives you control over how traffic reaches your application by enabling you to create security riles that control bot traffic and block common attack patterns, such as SQL injection or cross-site scription. You can also customize rules that filter out specific traffic patterns. You can get started quickly using Managed RIles for AWS WAF, a pre-configured set of rules managed by AWS or AWS Marketplace Sellers to address issues like the OWASP Top 10 security risks and automated bots that consume excess resources, skew metrics, or can cause downtime. These rules are 

You can deploy AWS WAF on Amazon CloudFront as part of your CDN solution, the Application Load Balancer that fronts your web server or origin servers running on EC2, Amazon API Gateway for your REST APIs, or AWS AppSync for your GraphQL APIs. With AWS WAF, you pay only for that you use and the pricing is based on how many rules you deploy and how many web requests your application receives.
```