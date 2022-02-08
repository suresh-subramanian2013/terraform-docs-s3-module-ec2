# Output variable definitions

output "arn" {
  description = "ARN of the bucket"
  value       = aws_s3_bucket.s3_bucket.arn
}

output "name" {
  description = "Name (id) of the bucket"
  value       = aws_s3_bucket.s3_bucket.id
}

output "domain" {
  description = "Domain name of the bucket"
  value       = aws_s3_bucket.s3_bucket.website_domain
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.myec2[*].id

}
output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.myec2[*].public_ip
}


