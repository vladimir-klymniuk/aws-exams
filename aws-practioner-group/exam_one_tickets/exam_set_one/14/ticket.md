```r
You need to create a snapshot of an EBS volume in another geographic location. Where would you store the snapshot.

    - In another Data Centre
    - In another Availability Zone
    - In another Edge Location
    - In another Region
```
Edge Location -> Region -> Availability Zone.

Think about availability zone as independent Data Center.

In context of this question not every Data Center uses AWS, but each availabilit zone has other geographic location. And each region has multiple Data Center that can be located in similar refion.

EBS Create or Copy ability gave us only region location option with details customization.