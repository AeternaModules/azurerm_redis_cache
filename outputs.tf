output "redis_caches_id" {
  description = "Map of id values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.id }
}
output "redis_caches_access_keys_authentication_enabled" {
  description = "Map of access_keys_authentication_enabled values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.access_keys_authentication_enabled }
}
output "redis_caches_capacity" {
  description = "Map of capacity values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.capacity }
}
output "redis_caches_family" {
  description = "Map of family values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.family }
}
output "redis_caches_hostname" {
  description = "Map of hostname values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.hostname }
}
output "redis_caches_identity" {
  description = "Map of identity values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.identity }
}
output "redis_caches_location" {
  description = "Map of location values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.location }
}
output "redis_caches_minimum_tls_version" {
  description = "Map of minimum_tls_version values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.minimum_tls_version }
}
output "redis_caches_name" {
  description = "Map of name values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.name }
}
output "redis_caches_non_ssl_port_enabled" {
  description = "Map of non_ssl_port_enabled values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.non_ssl_port_enabled }
}
output "redis_caches_patch_schedule" {
  description = "Map of patch_schedule values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.patch_schedule }
}
output "redis_caches_port" {
  description = "Map of port values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.port }
}
output "redis_caches_primary_access_key" {
  description = "Map of primary_access_key values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.primary_access_key }
  sensitive   = true
}
output "redis_caches_primary_connection_string" {
  description = "Map of primary_connection_string values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.primary_connection_string }
  sensitive   = true
}
output "redis_caches_private_static_ip_address" {
  description = "Map of private_static_ip_address values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.private_static_ip_address }
}
output "redis_caches_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.public_network_access_enabled }
}
output "redis_caches_redis_configuration" {
  description = "Map of redis_configuration values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.redis_configuration }
  sensitive   = true
}
output "redis_caches_redis_version" {
  description = "Map of redis_version values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.redis_version }
}
output "redis_caches_replicas_per_master" {
  description = "Map of replicas_per_master values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.replicas_per_master }
}
output "redis_caches_replicas_per_primary" {
  description = "Map of replicas_per_primary values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.replicas_per_primary }
}
output "redis_caches_resource_group_name" {
  description = "Map of resource_group_name values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.resource_group_name }
}
output "redis_caches_secondary_access_key" {
  description = "Map of secondary_access_key values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.secondary_access_key }
  sensitive   = true
}
output "redis_caches_secondary_connection_string" {
  description = "Map of secondary_connection_string values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.secondary_connection_string }
  sensitive   = true
}
output "redis_caches_shard_count" {
  description = "Map of shard_count values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.shard_count }
}
output "redis_caches_sku_name" {
  description = "Map of sku_name values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.sku_name }
}
output "redis_caches_ssl_port" {
  description = "Map of ssl_port values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.ssl_port }
}
output "redis_caches_subnet_id" {
  description = "Map of subnet_id values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.subnet_id }
}
output "redis_caches_tags" {
  description = "Map of tags values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.tags }
}
output "redis_caches_tenant_settings" {
  description = "Map of tenant_settings values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.tenant_settings }
}
output "redis_caches_zones" {
  description = "Map of zones values across all redis_caches, keyed the same as var.redis_caches"
  value       = { for k, v in azurerm_redis_cache.redis_caches : k => v.zones }
}

