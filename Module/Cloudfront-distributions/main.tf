resource "aws_cloudfront_distribution" "this" {
  origin {
    domain_name = var.s3_bucket_domain
    origin_id   = "s3-origin"
  }

  enabled             = true
  default_root_object = "index.html"

  default_cache_behavior {
    target_origin_id       = "s3-origin"
    viewer_protocol_policy = "redirect-to-https"
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    compress               = true

#      forwarded_values {
#       query_string = false
#       cookies { forward = "none" }
#     }
#   }
     # The forwarded_values block is deprecated in newer AWS provider versions. 
    # Using managed cache policies is the recommended approach for CloudFront distributions.
    
    cache_policy_id = "4135ea2d-6df8-44a3-9df3-4b5a84be39ad"  # Managed-CachingDisabled
  }

  viewer_certificate {
    acm_certificate_arn = var.acm_certificate_arn
    ssl_support_method  = "sni-only"
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
}
