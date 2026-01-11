resource "azurerm_redis_cache" "redis_caches" {
  for_each = var.redis_caches

  capacity                           = each.value.capacity
  family                             = each.value.family
  location                           = each.value.location
  name                               = each.value.name
  resource_group_name                = each.value.resource_group_name
  sku_name                           = each.value.sku_name
  tags                               = each.value.tags
  subnet_id                          = each.value.subnet_id
  shard_count                        = each.value.shard_count
  replicas_per_primary               = each.value.replicas_per_primary
  replicas_per_master                = each.value.replicas_per_master
  private_static_ip_address          = each.value.private_static_ip_address
  public_network_access_enabled      = each.value.public_network_access_enabled
  tenant_settings                    = each.value.tenant_settings
  non_ssl_port_enabled               = each.value.non_ssl_port_enabled
  minimum_tls_version                = each.value.minimum_tls_version
  access_keys_authentication_enabled = each.value.access_keys_authentication_enabled
  redis_version                      = each.value.redis_version
  zones                              = each.value.zones

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }

  dynamic "patch_schedule" {
    for_each = each.value.patch_schedule != null ? [each.value.patch_schedule] : []
    content {
      day_of_week        = patch_schedule.value.day_of_week
      maintenance_window = patch_schedule.value.maintenance_window
      start_hour_utc     = patch_schedule.value.start_hour_utc
    }
  }

  dynamic "redis_configuration" {
    for_each = each.value.redis_configuration != null ? [each.value.redis_configuration] : []
    content {
      active_directory_authentication_enabled = redis_configuration.value.active_directory_authentication_enabled
      aof_backup_enabled                      = redis_configuration.value.aof_backup_enabled
      aof_storage_connection_string_0         = redis_configuration.value.aof_storage_connection_string_0
      aof_storage_connection_string_1         = redis_configuration.value.aof_storage_connection_string_1
      authentication_enabled                  = redis_configuration.value.authentication_enabled
      data_persistence_authentication_method  = redis_configuration.value.data_persistence_authentication_method
      maxfragmentationmemory_reserved         = redis_configuration.value.maxfragmentationmemory_reserved
      maxmemory_delta                         = redis_configuration.value.maxmemory_delta
      maxmemory_policy                        = redis_configuration.value.maxmemory_policy
      maxmemory_reserved                      = redis_configuration.value.maxmemory_reserved
      notify_keyspace_events                  = redis_configuration.value.notify_keyspace_events
      rdb_backup_enabled                      = redis_configuration.value.rdb_backup_enabled
      rdb_backup_frequency                    = redis_configuration.value.rdb_backup_frequency
      rdb_backup_max_snapshot_count           = redis_configuration.value.rdb_backup_max_snapshot_count
      rdb_storage_connection_string           = redis_configuration.value.rdb_storage_connection_string
      storage_account_subscription_id         = redis_configuration.value.storage_account_subscription_id
    }
  }
}

