resource "aws_sns_topic_subscription" "subscription" {
  for_each               = { for subs in var.subscription_details : subs.topic_arn => subs } 
  topic_arn              = each.value.topic_arn
  protocol               = each.value.protocol
  endpoint               = each.value.endpoint
  endpoint_auto_confirms = each.value.endpoint_auto_confirms
}