resource "aws_cloudfront_origin_access_control" "static_website_oac" {
  name                              = "s3-cloudfront-oac"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

resource "aws_cloudfront_distribution" "static_website" {
  enabled         = true
  is_ipv6_enabled = true
  # aliases             = [var.domain]      # For custom domain name
  default_root_object = "index.html"
  wait_for_deployment = true

  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD", "OPTIONS"]
    cached_methods         = ["GET", "HEAD", "OPTIONS"]
    cache_policy_id        = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    target_origin_id       = aws_s3_bucket.server_bucket.bucket
    viewer_protocol_policy = "redirect-to-https"
  }

  origin {
    domain_name              = aws_s3_bucket.server_bucket.bucket_regional_domain_name
    origin_id                = aws_s3_bucket.server_bucket.bucket
    origin_access_control_id = aws_cloudfront_origin_access_control.static_website_oac.id
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  ### For custom ACM Certificate
  # viewer_certificate {
  #   acm_certificate_arn      = var.certificate_arn
  #   minimum_protocol_version = "TLSv1.2"
  #   ssl_support_method       = "sni-only"
  # }

  price_class = "PriceClass_200"

  tags = {
    Name = "cloudfront-static-website-distribution"
  }

}