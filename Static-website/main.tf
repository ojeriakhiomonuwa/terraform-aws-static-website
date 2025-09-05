module "s3_bucket" {
  source      = "../Module/S3-buckets"
  bucket_name = "${var.subdomain_name}.${var.domain_name}"
}
module "cloudfront_distribution" {
  source              = "../Module/Cloudfront-distributions"
  domain_name         = "${var.subdomain_name}.${var.domain_name}"
  acm_certificate_arn = var.acm_certificate_arn
  s3_bucket_domain    = module.s3_bucket.regional_domain_name
}
module "route53_record" {
  source            = "../Module/Route53-records"
  domain_name       = var.domain_name
  cf_domain         = module.cloudfront_distribution.cf_domain_name
  cf_hosted_zone_id = module.cloudfront_distribution.cf_hosted_zone_id
}
