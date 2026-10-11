resource "datadog_integration_slack_channel" "integration_slack_channels" {
  for_each = var.integration_slack_channels

  account_name = each.value.account_name
  channel_name = each.value.channel_name

  display {
    message      = each.value.display.message
    mute_buttons = each.value.display.mute_buttons
    notified     = each.value.display.notified
    snapshot     = each.value.display.snapshot
    tags         = each.value.display.tags
  }
}

