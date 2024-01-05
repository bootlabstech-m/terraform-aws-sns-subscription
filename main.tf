resource "aws_sns_topic_subscription" "subscription" {
  topic_arn                       = var.topic_arn
  protocol                        = var.protocol
  endpoint                        = var.endpoint
  subscription_role_arn           = var.protocol == "firehose" ? var.subscription_role_arn : null
  endpoint_auto_confirms          = var.endpoint_auto_confirms
  confirmation_timeout_in_minutes = var.confirmation_timeout_in_minutes
    lifecycle {
    ignore_changes = [delivery_policy,filter_policy,redrive_policy]
  }
}