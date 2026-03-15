variable "aws_region" {
  description = "The AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "upload_bucket_name" {
  description = "The name of the S3 bucket for file uploads"
  type        = string
}

variable "frontend_bucket_name" {
  description = "The name of the S3 bucket for frontend hosting"
  type        = string
}

variable "cloudfront_price_class" {
  description = "The price class for the CloudFront distribution (e.g., PriceClass_100, PriceClass_All)"
  type        = string
  default     = "PriceClass_100"
}

variable "notification_email" {
  description = "The email address to receive SNS notifications for file uploads"
  type        = string
}
