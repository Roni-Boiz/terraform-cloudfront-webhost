### For custom domain name
# resource "aws_route53_record" "name" {
#   name = var.domain
#   type = "A"
#   zone_id = var.hosted_zone_id

#   alias {
#     evaluate_target_health = false
#     name = aws_cloudfront_distribution.static_website.domain_name
#     zone_id = aws_cloudfront_distribution.static_website.hosted_zone_id
#   }
# }