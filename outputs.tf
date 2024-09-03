output "cloudfront_distribution_domain_name" {
  value = aws_cloudfront_distribution.static_website.domain_name
}