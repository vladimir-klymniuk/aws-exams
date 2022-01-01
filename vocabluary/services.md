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