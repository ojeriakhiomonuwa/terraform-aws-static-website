# just declaring variables here no values
variable "aws_region" {
  description = "The AWS region to create resources in"
}
variable "domain_name" {
  description = "The domain name for the static website (e.g., example.com)"
}
variable "subdomain_name" {
  description = "The subdomain name for the static website (e.g., www, dev)"
}
variable "acm_certificate_arn" {
  description = "The ARN of an ACM certificate for the subdomain_name"
}
variable "local_file_path" {
  description = "The local path to the static website files"
  type        = string
}
variable "index_page" {
  description = "The path to the index page of the static website"
  default     = "index.html"
}
