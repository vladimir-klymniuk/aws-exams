## Storage Gateway

### Terminology

NFS (Network File System) - протокол сетевого доступа к файловым системам,
первоначально разработан Sun Microsystems в 1984 году. За основу взят протокол
вызова удалённых процедур. Позволяет монтировать удаленные файловые системы через cеть NFS абстрагирован от типов файловых систем как сервера, так и клиента.

iSCSI (Internet Small Computer System Interface) - протокол, который бащируется на TCP/IP и разработан для установления взаимодействия и управления системами хранения данных, серверами и клиентами. (two way binding, RPC)

пП  <- storage gateway
What is Storage Gateway?

AWS Storage Gateway is a service that connects an
on-premises software appliance with cloud-based storage
to provide seamless and secure integration between an
organization's on-premises IT envirinment and AWS's storage
infrastructure. The secive enables you to securely store data
to the AWS cloud for scalable and cost-effective storage.

  _______________            __________
 /                \         /           \
|                  |       |             |
|                  пП  =>  |             |
| Your Data Centre |       |     AWS     |
 \_________________/        \___________/

Storage gateway is virtual or physical device that gonna 
repilcate your data in AWS. It always used to be a virtual device but they have real hardware applience as now, so you can get a physical storage gateway.

                        пП 
AWS Storage Gateway's software appliance is available for download as a virtual machine (VM) image that you install on a host in your datacenter. Storage Gateway supports either VMware ESXi or Microsoft Hyper-V (hypervisor is that what's run your virtual machines on. Once you've installed your gateway and associated it with your AWS account through the activation process, you can use the AWS Management Console to create the storage gateway option that is right for you.

`The three different types of Storage`

`Gateway` are as follows;

 - `File Gateway` (NFS & SMB) is the way of storing files on S3    пП
                                                                 ____     _____ 
 - `Volume Gateway` (iSCSI) is the of storing hard disk drives  |     |  |cache|
    - `Stored Volumes`                                          |__-__|  |__-__|
    - `Cached Volumes`

-  `Tape Gateway` (VTL)


### File Gateway
Files are stored as objects in your S3 buckets, accessed through a Network
File System (NFS), mount point. Ownership, permissions, and timestamps
are durably stored in S3 in the user-metadata of the object associated with the file. Once objects are transderred to S3, they can be managed as native S3 objects, and bucket policies suck as versioning, lifecycle management, and cross-region replication apply directly to objects stored in your bucket.

   ___________________________                                              (AWS) ___________________________________________
 / Customer Premises           \               /                 \        /                                                  \
|                               |             |       ----        |       |                                                   |
|    ------                     |             |        ||         |       |             __             __            __       |
|   | ---- |                    |             |       ----        |       |           _|  |_         _|  |_        _|  |_     |
|   | ---- |      NFS           |             |        ||         |       |          |      |       |      |      |      |    |
|   | ---- | ------- пП-----------------------|       ----        |-------|----------|      |-------|      |------|      |    |
|   |      |   Storage Gateway  |             |   Direct Connect  |       |          |      |       |      |      |      |    |
|   |______|                    |             |                   |       |          |_    _|       |_    _|      |_    _|    |
|  Application                  |             |    (Internet)     |       |            |__|           |__|          |__|      |
|    Server                     |             |                   |       |           Amazon         Amazon        Amazon     |
 \______________________________/             |        пП         |       |             S3            S3-IA        Glacier    |
                                              |     Amazon VPC    |       |                                                   |
                                               \                  /        \_________________________________________________/

                        пП
## `Volume Gateway` 
(Think about volume gateway how about way of storing a hard disk drives in a cloud)

The volume interface presents your applications with disk volumes using the iSCSI block protocol.

Data written to these volumes can be asynchronously backed up as point-in-time snapshots of your volumes, and stored in the cloud as Amazon EBS snapshots.

Snapshots are incremental backups that capture only changed blocks. 
All snapshot storage is also compressed to minimize your storage charges.

### `Volume Gateway` - `Stored Volumes`
               -----------
              |           |
              |           |
              |           |
              |    ___    |
              |___|   |___|

Stored volumes let you store your primary data localy, while asynchronously
backing up that data to AWS. Stored volumes provide your on-premises
application with low-latency access to their entire datasets, while providing
durable, off-site backups. You can create storage volumes and mount them 
as iSCSI devices from your on-premises application servers. Data written to your
stored volumes is stored on your on-premises storage hardware. This
data is asynchronously backed up to Amazon Simple Storage Service
(Amazon S3) in the form of Amazon Elastic Block Store (Amazon EBS) snapshots.
1 GB - 16 TB in size for Stored Volumes.

                    Your Data Center                                                                              AWS
                  ___________________________________________________________________________________             ___________________________________
                /                                     ______________________________________         \          /                       Amazon S3    \
                |                                    /                                      \  |      |         |                                     |
                |                                   |                                       |  |      |         |                                     |
                |                                   |    __        Gateway VM               |  |      |         |                                     |
    users       |                      __           |   |  |                                |  |      |         |                                     |
      ^         |                     |  |          |   |  |                                |  |      |         |                                     |
      |         |                     |  | <----------->|  |<---------------------------------------------------------------------->  Snapshots       |
      v         |                     |  |  iSCSI   |   |  |     |              |           |  |      |         |                                     |
    Client <-----------> Application  |  |          |   |__|     v              v           |  |      |         |                                     |
     (PC)       |           Server    |  |          |          (____)         (____)        |  |      |         |                                     |
                |                     |__|          |          |    |____)    |    |        |  |      |         |                                     |
                |                                   |          |____|    |    |____|        |  |      |         |                                     |
                |                               |   |               |____|    Upload        |  |      |         |                                     |
                |                               |   |           Volume        Buffer        |  |      |         |                                     |
                |                               |   |          Storage                      |  |      |         |                                     |
                |                               |   |             Hypervisor                |  |      |          \____________________________________/
                |                               |    \_____________________________________/   |      |
                |                               |                                              |      |
                |                                \                  Host                       |      |
                |                                 \___________________________________________/       |
                |                                                     ^                               |
                |                                                     |                               |
                |                                                     v                               |
                |                                                __________                           |
                |                                               (___________)                         |
                |                                               | Storage's |                         |
                |                                               \___________/                         |
                |                                         Storage Area Network Network                |
                |                                         Attached, or Direct AttachedStorage         |
                |                                                                                     |
                |_____________________________________________________________________________________|


###  `Volume Gateway` - `Cached Volumes`

Cached volumes let you use Amazon Simple Storage Service (Amazon S3)
as your primary data storage while retaining frequently accessed data locally in your storage gateway. Cached volumes monimize the need to scale
your on-premises storage infrastructure, while still providing you applications with low-latency access to their frequently accessed data. You
can create storage volumes up to 32TiB in size and attach to them aas iSCSI devices from your on-premises application servers. Your 
gateway stores adata that you write to these volumes in Amazon S3 and retains recantly read data in your on-premises storage gateway's gateway's cache and upload
buffer storage. 1GB - 32 TB in size for Cached Volumes.


## `Volume Gateway` - `Tape Gateway`

Tape Gateway offers a durable, cost-effective solution to archive your data in the AWS Cloud. The VTL interface it provides lets you leverage (использовать) your
existsting tape-based backup application infrastructure to store data on virtual tape catridges that you create on your tape gateway. Each tape gateway is preconfigured with a media
changer and tape drives, which are available to your existing client backup applications as iSCSI devices. You add tape catridges as you need to archive your data.
Supported by NetBackup, Backup Exec, Veem etc.

Examp Tips
----------------------

`File Gateway`
  - `File Gateway` - For flat files, stored directly on S3.

`Volume Gateway` (iSCSI)
  - `Stored Volumes` - Entire (полный) Dataset is stored on site and is asynchronously backed up to S3.
  - `Cached Volumes` - Entire Dataset is stored on S3 and the most frequently  access (часто доступный) accessed data is cached on site.

`Gateway Virtual Tape Library`

Thats all are virtual machinces and you can't get physical appliens as well now.