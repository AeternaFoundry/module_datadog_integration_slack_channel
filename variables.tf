variable "integration_slack_channels" {
  description = <<EOT
Map of integration_slack_channels, attributes below
Required:
    - account_name
    - channel_name
    - display (block):
        - message (optional)
        - mute_buttons (optional)
        - notified (optional)
        - snapshot (optional)
        - tags (optional)
EOT

  type = map(object({
    account_name = string
    channel_name = string
    display = object({
      message      = optional(bool)
      mute_buttons = optional(bool)
      notified     = optional(bool)
      snapshot     = optional(bool)
      tags         = optional(bool)
    })
  }))
}

