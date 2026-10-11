output "integration_slack_channels_id" {
  description = "Map of id values across all integration_slack_channels, keyed the same as var.integration_slack_channels except keys with no id are omitted"
  value       = { for k, v in datadog_integration_slack_channel.integration_slack_channels : k => v.id if v.id != null && length(v.id) > 0 }
}
output "integration_slack_channels_account_name" {
  description = "Map of account_name values across all integration_slack_channels, keyed the same as var.integration_slack_channels except keys with no account_name are omitted"
  value       = { for k, v in datadog_integration_slack_channel.integration_slack_channels : k => v.account_name if v.account_name != null && length(v.account_name) > 0 }
}
output "integration_slack_channels_channel_name" {
  description = "Map of channel_name values across all integration_slack_channels, keyed the same as var.integration_slack_channels except keys with no channel_name are omitted"
  value       = { for k, v in datadog_integration_slack_channel.integration_slack_channels : k => v.channel_name if v.channel_name != null && length(v.channel_name) > 0 }
}
output "integration_slack_channels_display" {
  description = "Map of display values across all integration_slack_channels, keyed the same as var.integration_slack_channels except keys with no display are omitted"
  value       = { for k, v in datadog_integration_slack_channel.integration_slack_channels : k => one(v.display) if v.display != null && length(v.display) > 0 }
}

