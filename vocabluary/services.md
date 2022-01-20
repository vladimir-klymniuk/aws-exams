`Amazon EKS` - Amazon Elastic Kubernetes Service.

`AWS Fargate` is a technology that provides on-demand, right-sized compute capacity for containers. With AWS Fargate, you don't have to provision, configure, or scale groups of virtual machines on your own to run containers. Espesially used for k8s depend on optimised usage of containers sizing and reduse unneeded network work and dns resolutions.

`Amazon EKS` integrates Kubernetes with AWS Fargate by using controllers that are built by AWS using the upstream, extensible model provided by Kubernetes.

Here are some things to consider about using Fargate on Amazon EKS.

```r
    - AWS Fargate with Amazon EKS is available in all Amazon EKS Regions except China (Beijing),China (Ningxia), AWS GovCloud(US-East), and AWS GovCloud(US-West).

    - Each pod that runs on Fargate has its own isolation boundary. The don't share the underlying kernel, CPU resources, memory resources, or elastic network interface with another pod.

    - Network Load Balancers and Application Load Balancers (ALBs) can be used with Fargate with IP targets only. 
    
    - Pods running on Fargate can't specify HostPort or HostNetwork in the pod manifest.

    - The default nofile and nproc soft limit is 1024 and the hard limit is 65535 for Fargate pods.

    - GPUs aren't currently available on Fargate.

    - Amazon EKS Fargate adds defence-in-depth for Kubernetes applications by isolating each Pod within a Virtual Machine (VM). This VM boundary prevents access to host-based resources used by other Pods in the event of a container escape, which is a common method of attacking containerized applications and gain access to resources outside of the container.

    @see: https://docs.aws.amazon.com/eks/latest/userguide/fargate.html

Integrations - you `can't` deploy Fargate pods to AWS Outposts, AWS Wavelength or AWS Local Zones.
```

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


`AWS Trusted Advisor` - Access to core Trusted Advisor checks and guidance to provisions your resources following best practives to increase perfomance and improve security. Prepered audit of your usage of AWS resources with recomendation and action plan for resuing security or costs leaks.


```r
    The AWS Direct Connect cloud service is the shortest path to your AWS resources. While in transit, your network traffic remains on the AWS global network and never touches the public internet. This reduces the chance of hitting bottlenecks or unexpected increases in latency. When creating a new connection, you can choose a hosted connection provided by an AWS Direct Connect Delivery Partner, or choose a dedicated connection from AWS - and deploy at over 100 AWS Direct Connect Locations around the globe. With AWS Direct Connect SiteLink, you can send data between AWS Direct Connect locations to create private network connections between the offices and data centers in your gloval network.


    `Use cases`

        Build hybrid networks - link your AWS and on-remises networks to build application that span environments without compromising perfomance.

        Extend your existing network - Once you link your network to AWS Direct Connect, you can use SiteLink to send data between your locations. When using SiteLink, data travels over the shortest path between locations.

        Manage large datasets - Ensure smooth and reliable data transfers at massive scale for real-time analysis, rapid data backup, or broadcast media processing.
```


`VPN connections` - You can connect your Amazon VPC to remote networks and users using the following VPN connectivity options.
``` r   
    VPN connectivity option:
        AWS Site-to-Site VPN - You can create an IPsec VPN connection between your VPC and your remote network. On the AWS side of the Site-to-Site VPN connection, a virtual private gateway or transit gateway provides two VPN endpoints (tunnels) for automativ failover. You configure your customer gateway device on the remote side of the Site-to-Site VPN connection.


        AWS Client VPN - AWS Client VPN is a managed client-based VPN service that enables you to securely access your AWS resources or your on-premises network. With AWS Client VPN, you configure an endpoint to which your users can connect to establish a secure TLS VPN session.

        AWS VPN CloudHub - If you have more that one remote network (for example, multiple branch offices), you can create multiple AWS Site-to-Site VPN connectopns via your virtual private gateway to enable communication between these networks. 
```

`Elastic Load Balancer (ELB)` - Distribute network traffic to improve application scalability.

``` r

    ELB - automatically distributes incoming application fraffic across miltiple targets and virtual appliances in one or more Availability Zones (AZs).


    Modes:
        Application Load Balancer: User Auth, Rich Metrics / Loggin, Redirects, Fixes / Response.

        Gateway Load Balancer: Health Checks

        Network Load Balancer: Layer 4 TCP/UDP Connection Based, Source IP Preservation, Low Latency.

    Use cases:
        Modernize applications with serverless and containers. Scale modern applications to meet demand without complex configurations or API gateways.

        Improve hybrid cloud network scalability. Load balance across AWS and on-premises resources using a single load balancer.

        Retain your existing network appliances. Deploy network appliances from your preferred vendor while taking advantage of the scale and flexibility of the cloud.
```

`AWS Shield` is a managed Distributed Denial of Service (DDoS) protection service that safeguards applications running on AWS. AWS Shield provides always-on detection and automatic inline mitigations that minimize application downtime and latency, so there is no need to engage AWS Support to benefir from DDoS protection. There are two tirews of AWS Shield - Standatd and Advanced.

All AWS customers benefit from the automatic protections of AWS Shield Standard, at no additional charge. AWS Shield Standard defends against most common, frequently occurring netwirk and transport layer DDoS attacks that target your web site or applications. When you use AWS Shield Standard with Amazon CloudFront and Amazon Route 53, you receive comprehensive availability protection against all know infrastructure (Layer 3 and 4) attaks. 

AWS Shield Advanced is available glovally on all Amazon CloudFront, AWS Global Accelerator, and Amazon Route 53 edge locations. You can protect your web application hosted anywhere in the world by deploying Amazon CloudFront in front of your application. Your origin servers can be Amazon S3, Amazon Elastic Compute CLoud (EC2), Elastic Load Balancing (ELB), or a custom server outside of AWS. YOu can also enable AWS Shield Advanced directly on an Elastic IP or Elastic Load Balancing (ELB) on some AWS regions.

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