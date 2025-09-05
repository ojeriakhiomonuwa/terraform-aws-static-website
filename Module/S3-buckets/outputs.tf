output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.this.id
}
output "regional_domain_name" {
  description = "The regional domain name of the S3 bucket"
  value       = aws_s3_bucket.this.bucket_regional_domain_name
}




# The code above defines outputs to display useful information about the S3 bucket.

# output "bucket_name" {
#   description = "The name of the S3 bucket."
#   # This will show the main bucket ID (name) after 'terraform apply'.
#   value = aws_s3_bucket.this.id
# }

# output "regional_domain_name" {
#   description = "The regional domain name of the S3 bucket. 
#This is useful for static website hosting and regional data access."
#   # This will show the regional domain name after 'terraform apply'.
#   value = aws_s3_bucket.this.bucket_regional_domain_name
# }
