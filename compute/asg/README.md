# Auto Scaling Group (ASG)

## Purpose

Creates an Auto Scaling Group using a Launch Template and automatically scales EC2 instances based on a Target Tracking Scaling Policy.

## AWS Resources

- aws_autoscaling_group
- aws_autoscaling_policy

## Use Cases

- Highly Available Web Applications
- Self-Healing Infrastructure
- Dynamic Scaling
- Cost Optimization
- Production Workloads

## Architecture Flow

Launch Template
       │
       ▼
Auto Scaling Group
       │
       ▼
Target Tracking Policy
       │
       ▼
Automatic Scaling

## Important Concepts

- Launch Template
- Desired Capacity
- Minimum Capacity
- Maximum Capacity
- Target Tracking Scaling
- Health Checks
- Target Groups

## Commands

```bash
terraform init
terraform plan
terraform apply
```

## Notes

- Auto Scaling Groups require a Launch Template.
- Use Target Tracking Scaling for most workloads.
- Register the Auto Scaling Group with a Target Group to receive traffic from an ALB.
- Place instances in multiple Availability Zones for High Availability.
- Configure Health Check Type as `ELB` when using an Application Load Balancer.