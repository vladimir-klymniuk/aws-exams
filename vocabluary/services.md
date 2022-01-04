`Amazon EKS` - Amazon Elastic Kubernetes Service.

`AWS Fargate` is a technology that provides on-demand, right-sized compute capacity for containers. With AWS Fargate, you don't have to provision, configure, or scale groups of virtual machines on your own to run containers. Espesially used for k8s depend on optimised usage of containers sizing and reduse unneeded network work and dns resolutions.

`Amazon EKS` integrates Kubernetes with AWS Fargate by using controllers that are built by AWS using the upstream, extensible model provided by Kubernetes.

Here are some things to consider about using Fargate on Amazon EKS.
```
    - AWS Fargate with Amazon EKS is available in all Amazon EKS Regions except China (Beijing),China (Ningxia), AWS GovCloud(US-East), and AWS GovCloud(US-West).

    - Each pod that runs on Fargate has its own isolation boundary. The don't share the underlying kernel, CPU resources, memory resources, or elastic network interface with another pod.

    - Network Load Balancers and Application Load Balancers (ALBs) can be used with Fargate with IP targets only. 
    
    - Pods running on Fargate can't specify HostPort or HostNetwork in the pod manifest.

    - The default nofile and nproc soft limit is 1024 and the hard limit is 65535 for Fargate pods.

    - GPUs aren't currently available on Fargate.

    - Amazon EKS Fargate adds defence-in-depth for Kubernetes applications by isolating each Pod within a Virtual Machine (VM). This VM boundary prevents access to host-based resources used by other Pods in the event of a container escape, which is a common method of attacking containerized applications and gain access to resources outside of the container.

    @see: https://docs.aws.amazon.com/eks/latest/userguide/fargate.html
```
Integrations - you `can't` deploy Fargate pods to AWS Outposts, AWS Wavelength or AWS Local Zones.



```bash
`AWS CloudTrail` - Track user activity and API usage.

`Store` - Deliver events to Amazon S3 and Amazon CloudWatch Logs.

`Monitor` - Detect unusual API activity with CloudTrail Insights or Amazon EventBridge.

`Analyze` - View recent events in the AWS CloudTrail console, or analyze log files with Amazon Athena.
```


```bash
`Amazon CloudWatch` monitors your Amazon Web Services (AWS) resources and the applications you run on AWS in real time. You can use CloudWatch to collect and track metrics, which are variables you can measure for you resources and applications.

You can create alarms that watch metrics and send notifications or automatically make changes to the resources you are monitoring when a threshold is breached. Fox example, you can monitor the CPU usage and disk reads and writes of your AmazonEC2 instances and then use that data to determine wherher you should launch additional instances to handle increased load. You can also use this data to stop under-used instances to save money.
```


```bash

`VPC Flow Logs` - is a feature that enables you to capture information about the IP traffic going to and from network interfaces in you VPS. Flow log data can be published to Amazon CloudWatch Logs or Amazon S3. After you create a flow log, you can retrieve and view its data in the chosen destination.

```

```txt
AWS Personal Health Dashboard - The AWS Personal Health Dashboard organizes issues in three groups: open issues, scheduled changes, and other notifications. You can use Amazon CloudWatch Events to detect and react to changes for AWS Health events. You can monitor specific AWS Health events that occur in your AWS account, and then set up riles so that you get notified or take action when events change. You can use the AWS Health API, the service that powers Personal Health Dashboard, to integrate health data and notifications with your existing in-house or third-party IT management tools.

The Personal Health Dashboard sipports access control so that you can set up permissions based on event metadata. This allows you to grant or deny access to an AWS Identity and Access Management (IAM) user based on attributes, such as event types specific services, or other role-based attributes. You cant restrict access of sensitive events, such as security events, to only the users that need to see them.


Has integration with Partners:
    - PagerDuty
    - splunk>
    - DATADOG

Available for all Support plans
```

```txt
`AWS Trusted Advisor` - Access to core Trusted Advisor checks and guidance to provisions your resources following best practives to increase perfomance and improve security. Prepered audit of your usage of AWS resources with recomendation and action plan for resuing security or costs leaks.

```

```txt
    The AWS Direct Connect cloud service is the shortest path to your AWS resources. While in transit, your network traffic remains on the AWS global network and never touches the public internet. This reduces the chance of hitting bottlenecks or unexpected increases in latency. When creating a new connection, you can choose a hosted connection provided by an AWS Direct Connect Delivery Partner, or choose a dedicated connection from AWS - and deploy at over 100 AWS Direct Connect Locations around the globe. With AWS Direct Connect SiteLink, you can send data between AWS Direct Connect locations to create private network connections between the offices and data centers in your gloval network.


    `Use cases`

        Build hybrid networks - link your AWS and on-remises networks to build application that span environments without compromising perfomance.

        Extend your existing network - Once you link your network to AWS Direct Connect, you can use SiteLink to send data between your locations. When using SiteLink, data travels over the shortest path between locations.

        Manage large datasets - Ensure smooth and reliable data transfers at massive scale for real-time analysis, rapid data backup, or broadcast media processing.
```


```
    `VPN connections` - You can connect your Amazon VPC to remote networks and users using the following VPN connectivity options.
    
    VPN connectivity option:
        AWS Site-to-Site VPN - You can create an IPsec VPN connection between your VPC and your remote network. On the AWS side of the Site-to-Site VPN connection, a virtual private gateway or transit gateway provides two VPN endpoints (tunnels) for automativ failover. You configure your customer gateway device on the remote side of the Site-to-Site VPN connection.


        AWS Client VPN - AWS Client VPN is a managed client-based VPN service that enables you to securely access your AWS resources or your on-premises network. With AWS Client VPN, you configure an endpoint to which your users can connect to establish a secure TLS VPN session.

        AWS VPN CloudHub - If you have more that one remote network (for example, multiple branch offices), you can create multiple AWS Site-to-Site VPN connectopns via your virtual private gateway to enable communication between these networks. 
```