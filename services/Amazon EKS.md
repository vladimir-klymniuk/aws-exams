`Amazon EKS` - Amazon Elastic Kubernetes Service.

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