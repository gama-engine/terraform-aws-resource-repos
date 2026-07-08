# Amazon SNS

## Purpose

Creates an Amazon SNS Topic with optional Topic Policy and Subscription.

## AWS Resources

- aws_sns_topic
- aws_sns_topic_subscription
- aws_sns_topic_policy

## Use Cases

- CloudWatch Alarm Notifications
- EventBridge Notifications
- Lambda Notifications
- S3 Event Notifications
- CI/CD Notifications
- Email Alerts
- SMS Alerts
- Fan-out Messaging

## Architecture Flow

Publisher
    │
    ▼
SNS Topic
    │
    ▼
Topic Policy (Optional)
    │
    ▼
Subscription
    │
    ▼
Endpoint

## Important Concepts

- SNS Topic
- Subscription
- Topic Policy
- Publisher
- Subscriber
- Fan-out Messaging

## Commands

```bash
terraform init
terraform plan
terraform apply
```

## Notes

- Email subscriptions require confirmation.
- One topic can have multiple subscribers.
- Topic Policies allow AWS services and IAM principals to publish.
- SNS integrates with CloudWatch, EventBridge, Lambda, S3, CodePipeline, and many other AWS services.