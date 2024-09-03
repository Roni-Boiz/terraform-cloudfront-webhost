variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
  default     = "terraforms3cloudfrontstaticwebsite"
}

variable "domain" {
  description = "custom domain name"
  type        = string
  default     = ""
}

variable "hosted_zone_id" {
  description = "hosted zone id"
  type        = string
  default     = ""
}

variable "certificate_arn" {
  description = "SSL certificate"
  type        = string
  default     = ""
}