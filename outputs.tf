output "redis_caches_id" {
  description = "Map of id values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.id if v.id != null && length(v.id) > 0 }
}
output "redis_caches_access_keys_authentication_enabled" {
  description = "Map of access_keys_authentication_enabled values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.access_keys_authentication_enabled if v.access_keys_authentication_enabled != null }
}
output "redis_caches_capacity" {
  description = "Map of capacity values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.capacity if v.capacity != null }
}
output "redis_caches_family" {
  description = "Map of family values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.family if v.family != null && length(v.family) > 0 }
}
output "redis_caches_hostname" {
  description = "Map of hostname values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.hostname if v.hostname != null && length(v.hostname) > 0 }
}
output "redis_caches_identity" {
  description = "Map of identity values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "redis_caches_location" {
  description = "Map of location values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.location if v.location != null && length(v.location) > 0 }
}
output "redis_caches_minimum_tls_version" {
  description = "Map of minimum_tls_version values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.minimum_tls_version if v.minimum_tls_version != null && length(v.minimum_tls_version) > 0 }
}
output "redis_caches_name" {
  description = "Map of name values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.name if v.name != null && length(v.name) > 0 }
}
output "redis_caches_non_ssl_port_enabled" {
  description = "Map of non_ssl_port_enabled values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.non_ssl_port_enabled if v.non_ssl_port_enabled != null }
}
output "redis_caches_patch_schedule" {
  description = "Map of patch_schedule values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.patch_schedule if v.patch_schedule != null && length(v.patch_schedule) > 0 }
}
output "redis_caches_port" {
  description = "Map of port values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.port if v.port != null }
}
output "redis_caches_primary_access_key" {
  description = "Map of primary_access_key values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.primary_access_key if v.primary_access_key != null && length(v.primary_access_key) > 0 }
  sensitive   = true
}
output "redis_caches_primary_connection_string" {
  description = "Map of primary_connection_string values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.primary_connection_string if v.primary_connection_string != null && length(v.primary_connection_string) > 0 }
  sensitive   = true
}
output "redis_caches_private_static_ip_address" {
  description = "Map of private_static_ip_address values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.private_static_ip_address if v.private_static_ip_address != null && length(v.private_static_ip_address) > 0 }
}
output "redis_caches_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "redis_caches_redis_configuration" {
  description = "Map of redis_configuration values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.redis_configuration if v.redis_configuration != null && length(v.redis_configuration) > 0 }
  sensitive   = true
}
output "redis_caches_redis_version" {
  description = "Map of redis_version values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.redis_version if v.redis_version != null && length(v.redis_version) > 0 }
}
output "redis_caches_replicas_per_master" {
  description = "Map of replicas_per_master values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.replicas_per_master if v.replicas_per_master != null }
}
output "redis_caches_replicas_per_primary" {
  description = "Map of replicas_per_primary values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.replicas_per_primary if v.replicas_per_primary != null }
}
output "redis_caches_resource_group_name" {
  description = "Map of resource_group_name values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "redis_caches_secondary_access_key" {
  description = "Map of secondary_access_key values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.secondary_access_key if v.secondary_access_key != null && length(v.secondary_access_key) > 0 }
  sensitive   = true
}
output "redis_caches_secondary_connection_string" {
  description = "Map of secondary_connection_string values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.secondary_connection_string if v.secondary_connection_string != null && length(v.secondary_connection_string) > 0 }
  sensitive   = true
}
output "redis_caches_shard_count" {
  description = "Map of shard_count values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.shard_count if v.shard_count != null }
}
output "redis_caches_sku_name" {
  description = "Map of sku_name values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "redis_caches_ssl_port" {
  description = "Map of ssl_port values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.ssl_port if v.ssl_port != null }
}
output "redis_caches_subnet_id" {
  description = "Map of subnet_id values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "redis_caches_tags" {
  description = "Map of tags values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "redis_caches_tenant_settings" {
  description = "Map of tenant_settings values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.tenant_settings if v.tenant_settings != null && length(v.tenant_settings) > 0 }
}
output "redis_caches_zones" {
  description = "Map of zones values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.zones if v.zones != null && length(v.zones) > 0 }
}

