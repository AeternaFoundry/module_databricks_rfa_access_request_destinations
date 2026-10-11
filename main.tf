resource "databricks_rfa_access_request_destinations" "rfa_access_request_destinations" {
  for_each = var.rfa_access_request_destinations

  securable       = each.value.securable
  destinations    = each.value.destinations
  provider_config = each.value.provider_config
}

