variable "region" {
  description = "The region where the bucket is created"
  type        = string
}
variable "role_arn" {
  description = " The ARN of the IAM role"
  type = string
}
variable "subscription_details" {
  description = "The region where the bucket is created"
  type        = list(any)
}
