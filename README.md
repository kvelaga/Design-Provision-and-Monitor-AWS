# Design Provision and Monitor AWS

Provisioned and configured AWS services in a global configuration using Terraform.

### Reduced costs changes

Changes:

- Used smaller RDS instances
- Used smaller EC2 instances
- Without paying up front, used reserved instances booked in for a year

Reasoning:

- Using smaller RDS instances allows for significant cost saving but would reduce database performance.
- Using smaller EC2 instances allows for more granular autoscaling though could reduce performance.
- Using reserved instances will significantly reduce costs but will lock the platform into using the selected infrastructure for the next year. This shouldn't be an issue but would either limit re-architecting the application or waste money.

### Increased costs changes

Changes:

- Larger RDS instances
- More EC2 instances for scaling
- Third availability zone set up in us-east-2
  - VPC NAT Gateway
  - CloudFront
  - S3 Bucket
  - Elastic Load Balancing
  - EC2 Auto Scaling (web and application server)
  - RDS read replica

Reasoning:

- Third availability zone in a second region allows for failover if the whole of the `us-east-1` region goes down. This is unlikely to happen but could be worthwhile were something to happen.
- Larger RDS instances improve database performance and prepare for growth of the platform over time.
- More EC2 instances improve application performance and prepare for growth of the platform over time.
