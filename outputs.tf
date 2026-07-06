output "redis_caches" {
  description = "All redis_cache resources"
  value       = azurerm_redis_cache.redis_caches
  sensitive   = true
}
output "redis_caches_access_keys_authentication_enabled" {
  description = "List of access_keys_authentication_enabled values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.access_keys_authentication_enabled]
}
output "redis_caches_capacity" {
  description = "List of capacity values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.capacity]
}
output "redis_caches_family" {
  description = "List of family values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.family]
}
output "redis_caches_hostname" {
  description = "List of hostname values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.hostname]
}
output "redis_caches_identity" {
  description = "List of identity values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.identity]
}
output "redis_caches_location" {
  description = "List of location values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.location]
}
output "redis_caches_minimum_tls_version" {
  description = "List of minimum_tls_version values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.minimum_tls_version]
}
output "redis_caches_name" {
  description = "List of name values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.name]
}
output "redis_caches_non_ssl_port_enabled" {
  description = "List of non_ssl_port_enabled values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.non_ssl_port_enabled]
}
output "redis_caches_patch_schedule" {
  description = "List of patch_schedule values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.patch_schedule]
}
output "redis_caches_port" {
  description = "List of port values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.port]
}
output "redis_caches_primary_access_key" {
  description = "List of primary_access_key values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.primary_access_key]
  sensitive   = true
}
output "redis_caches_primary_connection_string" {
  description = "List of primary_connection_string values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.primary_connection_string]
  sensitive   = true
}
output "redis_caches_private_static_ip_address" {
  description = "List of private_static_ip_address values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.private_static_ip_address]
}
output "redis_caches_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.public_network_access_enabled]
}
output "redis_caches_redis_configuration" {
  description = "List of redis_configuration values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.redis_configuration]
  sensitive   = true
}
output "redis_caches_redis_version" {
  description = "List of redis_version values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.redis_version]
}
output "redis_caches_replicas_per_master" {
  description = "List of replicas_per_master values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.replicas_per_master]
}
output "redis_caches_replicas_per_primary" {
  description = "List of replicas_per_primary values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.replicas_per_primary]
}
output "redis_caches_resource_group_name" {
  description = "List of resource_group_name values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.resource_group_name]
}
output "redis_caches_secondary_access_key" {
  description = "List of secondary_access_key values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.secondary_access_key]
  sensitive   = true
}
output "redis_caches_secondary_connection_string" {
  description = "List of secondary_connection_string values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.secondary_connection_string]
  sensitive   = true
}
output "redis_caches_shard_count" {
  description = "List of shard_count values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.shard_count]
}
output "redis_caches_sku_name" {
  description = "List of sku_name values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.sku_name]
}
output "redis_caches_ssl_port" {
  description = "List of ssl_port values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.ssl_port]
}
output "redis_caches_subnet_id" {
  description = "List of subnet_id values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.subnet_id]
}
output "redis_caches_tags" {
  description = "List of tags values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.tags]
}
output "redis_caches_tenant_settings" {
  description = "List of tenant_settings values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.tenant_settings]
}
output "redis_caches_zones" {
  description = "List of zones values across all redis_caches"
  value       = [for k, v in azurerm_redis_cache.redis_caches : v.zones]
}

