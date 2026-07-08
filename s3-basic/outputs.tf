output "bucket_name" {
  description = "S3 bucket for uploading images (SOURCE)"
  value       = 
}

output "upload_command_example" {
  description = "Example command to upload an image"
  value       = "aws s3 cp your-image.jpg s3://${}/"
}


output "bucket_id" {
  description = "S3 Bucket ID"
  value       = aws_s3_bucket.main.id
}

output "bucket_arn" {
  description = "S3 Bucket ARN"
  value       = aws_s3_bucket.main.arn
}

output "bucket_name" {
  description = "S3 Bucket Name"
  value       = aws_s3_bucket.main.bucket
}

output "bucket_domain_name" {
  description = "S3 Bucket Domain Name"
  value       = aws_s3_bucket.main.bucket_domain_name
}

output "bucket_regional_domain_name" {
  description = "S3 Regional Domain Name"
  value       = aws_s3_bucket.main.bucket_regional_domain_name
}