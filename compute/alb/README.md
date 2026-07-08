# Application Load Balancer (ALB)

## Purpose

Creates an internet-facing or internal Application Load Balancer with a Target Group, Listener, optional Listener Rule, and optional Target Group Attachment.

## AWS Resources

- aws_lb
- aws_lb_target_group
- aws_lb_listener
- aws_lb_listener_rule (Optional)
- aws_lb_target_group_attachment (Optional)

## Use Cases

- Web Applications
- Microservices
- Auto Scaling Groups
- ECS Services
- Blue/Green Deployments
- Path-Based Routing
- Host-Based Routing

## Architecture Flow

Internet
     │
     ▼
Application Load Balancer
     │
     ▼
Listener (80 / 443)
     │
     ▼
Listener Rule (Optional)
     │
     ▼
Target Group
     │
     ▼
EC2 Instances / Auto Scaling Group / ECS Tasks

## Important Concepts

- Internet Facing vs Internal ALB
- Listener
- Listener Rule
- Target Group
- Health Checks
- Path-Based Routing
- Host-Based Routing

## Commands

```bash
terraform init
terraform plan
terraform apply
```

## Notes

- An ALB requires at least two subnets in different Availability Zones.
- Use Security Groups to control inbound traffic.
- Configure health checks that match your application's health endpoint.
- Use HTTPS with an ACM certificate for production.
- Skip Target Group Attachment when using an Auto Scaling Group.