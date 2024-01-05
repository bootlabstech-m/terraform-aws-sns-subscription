variable "region" {
  description = "The region where the bucket is created"
  type        = string
}
variable "role_arn" {
  description = " The ARN of the IAM role"
  type        = string
}
variable "topic_arn" {
  description = "The topic arn of the subscription"
  type        = string
}
variable "protocol" {
  description = "Protocol"
  type        = string
}
variable "endpoint" {
  description = "Endpoint"
  type        = string
}
variable "endpoint_auto_confirms" {
  description = "Endpoint Auto Confirms"
  type        = bool
}
variable "confirmation_timeout_in_minutes" {
  description = "Confirmation Timeout in minutes"
  type        = number
}
variable "subscription_role_arn" {
  description = "subscription_role_arn"
  type        = string
}


