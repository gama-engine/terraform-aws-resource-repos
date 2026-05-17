output "bucket_name" {
  description = "S3 bucket for uploading images (SOURCE)"
  value       = 
}

output "upload_command_example" {
  description = "Example command to upload an image"
  value       = "aws s3 cp your-image.jpg s3://${}/"
}