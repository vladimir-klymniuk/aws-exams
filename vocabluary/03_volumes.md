`Amazon EBS volumes`

An `Amazon EBS` volume is a durable, block-level storage device that you can attach to your instances. After you attach a volume to an instance, you can use it as you would use a phusical hard drive. EBS volumes are flexible. For current-generation volumes attached to current-generation instance types, you can dynamically increase size, modify the provisioned IOPS capacity, and change volume type on live production volumes.

You can use EBS volumes as primary storage for data that requires frequent updates, such as the system drive for and instance or storage for a database application. You can also use them for throughput-intensive applications that perform continuous disk scans. EBS volumes persist independently from the running life of an EC2 instance.

You can attach multiple EBS volumes to a single instance. The volume and instance must be in the same Availability Zone. Depending on the volume and instance type, you can use Multi-Attach to mount a volume to multiple instances at the same time.

Amazon EBS provides the following volumes types: General Purpose SSD (gp2 and gp3), Provisioned IOPS SSD (io1 and io2), Throughput Optimized HDD(st1), Cold HDD (sc1), and Magnetic(standard). Thry differ in perfomance characterisics and price, allowing you to tailor your storage perfomance and cost to the needs of your applications.

Benefits of using EBS volumes

```
EBS volumes provide benefits that are not provided by instance store volumes.
```

### Data availability

When you create an EBS volume, it is automatically replicated within its Availability Zone to prevent data loss due failure of any single hardware component. You can attach an EBS volume, it appears as a native block device similar to a hard drive or other physical device. At that point, the instance can interact with the volume just as it would with a local drive. You can connect to the instance and format the EBS volume with a file system, such as ext3, and then install applicatons.

If you attach multiple volumes to a device that you have named, you can stripe data actoss the volumes for increased I/O and throughput perfomance.

### Data persistence

An EBS volume is off-instance storage that can persist independently from the life of an instance. You continue to pay for the volume usage as long as the data persists.

EBS volumes that are attached to a running instanve can automatically detach from the instance with their data intact when the instance is terminated if you incheck the Delete on Termination check box when you configure EBS volumes for your instace on the EC2 console. The volume can then be reattached to a new instance, enabling quick recovery. 

By default, the root EBS volume that is created and attached to an instance at launch is deleted when that instance is terminated. You can modify this behavior by changing the value of the flag `DeleteOnTermination` to `false` when you launch the instance. This modified value causes the volume to persist even after the instance is terminated, and enables you attach the volume to another instance.

By default, additional EBS volumes that are created and attached to an instance at launch are not delted when that instance is terminated. You can modify this behavior by changing the value of the flag `DeleteOnTermination` to `true` when you launch the instance. This modified value caouses the volumes to be deleted when the instance is terminated.

### Data encryption

For simplified data encryption, you can create encrypted EBS volumes with the Amazon EBS feature. All EBS volume types support encryption. 

You can use encrypted EBS volumes to meet a wide range of data-at-rest encryption uses 256-bit Advanced Encryption Standard algorithms (AES-256) and Amazon-managed key infrastructure. The encryption of data-in-transit from the EC2 instance to Amazon EBS storage.

Amazon EBS encryption uses AWS Key Management Service (AWS KMS) master keys when creating encrypted volumes and any snapshots created from your encrypted volumes. The first time you create an encrypted EBS volume in a region, a default master key is created for you automatically. This key is used for Amazon EBS encryption unless you select a customer master key (CMK) that you created separately using AWS KMS. Creating your own CMK gives you more flexibility, including the ability to create, rotate, disable, define access controls, and audit the encryption keys ised to protect your data.

### Snapshots

Amazon EBS provides the ability to create snapshots (backups) of any EBS volume and wirte a copy of the data in the volume to Amazon S3, where it is stored redundantly in multiple Availability Zones. The volume does not need to be attached to a running instance in order to take a snapshot. As you continie to wrote data to a volume, you can periodically create a snapshot of the volume to use a baseline for new volumes. These snapshots can be used to create multiple new EBS volumes or move volumes across Availability Zones. Snapshots of encrypted EBS volumes are automatically encrypted.

When ypu create a new volume from a snapshot, it;s an exact copy of the original volume in that zone. The snapshots can be shared with specific AWS account or made public. When you create snapshots, you incur charges in Amazon S3 based on the volume's total size. For a successive snapshot of the volume, you are only charged for any additional data beyond the volume's origin size.

Snapshots are incremental backups, meaning that only the blocks on the volume that have changed after your most recent snapshot are saved. If you have a volume with 100GiB of data, but only 5GiB of data have changed since your last snapshot, only the 5GiB of modified data is witten to Amazon S3. Event though snapshots are saved incrementally, the snapshot deletion process is desighned so that you need to retain only the most recent snapshot.

### Flexibility

EBS volumes support live configuration changes while in production. You can modify volume type, volume size, and IOPS capacity without service interruptions.

```r
'EBS Volume type':
    'General Purpose SSD'
        General Purpose SSD (gp2 and gp3) volumes offer cost-effective storage that is ideal for a broad range of workloads.
    'Provisioned OPS SSD'
        Provisioned IOPS SSD (io1 and io2) volumes provide low latency and are designed to meet the needs of 
        I/O - intensive workloads. 
        They are best for EBS-optimized instances.
    'Throughput Optimized HDD'
        Throughput Optimized HDD (st1) volumes provide low-cost magnetic storage that is a good fit for large, sequential workloads.
    'Cold HDD'
        Cold HDD (sc1) volumes provide low-cost magnetic storage that offers lower throughput than st1. sc1 is a good fit for large, sequential cold-data workloads that require infrequent access to data.
    'Magenetic'
        Magnetic (standard) volumes are best suited for workloads where data is accessed infrequently.
```