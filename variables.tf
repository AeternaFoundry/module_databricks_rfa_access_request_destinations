variable "rfa_access_request_destinations" {
  description = <<EOT
Map of rfa_access_request_destinations, attributes below
Required:
    - securable
Optional:
    - destinations
    - provider_config
EOT

  type = map(object({
    securable = object({
      full_name      = optional(string)
      provider_share = optional(string)
      type           = optional(string)
    })
    destinations = optional(set(object({
      destination_id      = optional(string)
      destination_type    = optional(string)
      special_destination = optional(string)
    })))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

