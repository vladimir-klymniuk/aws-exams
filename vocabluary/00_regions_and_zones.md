# Regions and Zones

```
    Amazon EC2 is hosted in multipe locations world-wide. These locations are composed of Regions, Availability Zones, Local Zones, AWS Outposts, and Wavelenght Zones. Each Region is a separate geographic area.
```

``` r
    - 'Availability Zones' are multiple, isolated locations within each Regions.

    - 'Local Zones' provide you the ability to place resources, such as compute and storage, in multiple location close to your end users.

    - 'AWS Outposts' brings native AWS services, infrastructure, and operating models to virtually any data center, co-location space, or on-premises facility.

    - 'Wavelength Zones' allow developers to build applications that deliver ultra-low latencies to 5G devices and end users. Wavelength deploys standard AWS compute and storage services to the edge of telecommunication carriers'5G networks.
```

```
    AWS operates state-of-the-art, highly available data centers. Although rare, failures can occur that affect the availability of instances that are in the same location. If you host all of your instances in a sinble location that is affected by a failure, none of your instances would be available.
```

## Regions 

```
    Each Amazon EC2 Region is designed to be isolated from the other Amazon EC2 Regions. This achieves the greatest possible fault tolerance and stability.

    When you view your resources, you see only the resources that are tied to the Region that you specified. This is because Regions are isolated from each other, and we don't automatically replicate resources across Regions.

    When you launch an instance, you must select an AMI that's in the same Region. If the AMI is in another Region, you can copy the AMI to the Region you're using. 
```

## Available Regions 

Your account determines the Regions that are available to you. 

```
    - An AWS account provides multiple Regions so that you can launch Amazon EC2 instances in locations that meet your requirements. For example, you might want to launch instances in Europe to be closer to your European customers or to meet legal requirements.

    - An AWS GovCLoud (US-West) account provides access to the AWS GovCLoud(US-West) Region and the AWS GovCLoud(US-East) Region. 

    - An Amazon AWS(China) account provides access to the Beijing and Ningxia Regions only.
```

## Availability Zones

```
    Each Region has multiple, isolated locations know as `Availability Zones`. When you lauch an instance, you can select an Availability Zone or let us choose one for you. If you distribute your instances across multiple Availability Zones and one instance fails, you can design you application so that an instance in another Availabilit Zone canhandle requests.

    The following diagram illustrate multiple Availability Zones in an AWS Region.

    You can also use Elastic IP addresses to mask the failure of an instance in one Availability Zone by rapidly remapping the address to an instance in another Availability Zone.

    An Availability Zone is represented by a Region code followed by a letter identifier; for example, `us-east-1a`. To ensure that resources are distributed across the Availability Zones for a Region, we independently map Availability Zones to names for each AWS account.
```