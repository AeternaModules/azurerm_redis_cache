variable "redis_caches" {
  description = <<EOT
Map of redis_caches, attributes below
Required:
    - capacity
    - family
    - location
    - name
    - resource_group_name
    - sku_name
Optional:
    - access_keys_authentication_enabled
    - minimum_tls_version
    - non_ssl_port_enabled
    - private_static_ip_address
    - public_network_access_enabled
    - redis_version
    - replicas_per_master
    - replicas_per_primary
    - shard_count
    - subnet_id
    - tags
    - tenant_settings
    - zones
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - patch_schedule (block):
        - day_of_week (required)
        - maintenance_window (optional)
        - start_hour_utc (optional)
    - redis_configuration (block):
        - active_directory_authentication_enabled (optional)
        - aof_backup_enabled (optional)
        - aof_storage_connection_string_0 (optional)
        - aof_storage_connection_string_1 (optional)
        - authentication_enabled (optional)
        - data_persistence_authentication_method (optional)
        - maxfragmentationmemory_reserved (optional)
        - maxmemory_delta (optional)
        - maxmemory_policy (optional)
        - maxmemory_reserved (optional)
        - notify_keyspace_events (optional)
        - rdb_backup_enabled (optional)
        - rdb_backup_frequency (optional)
        - rdb_backup_max_snapshot_count (optional)
        - rdb_storage_connection_string (optional)
        - storage_account_subscription_id (optional)
EOT

  type = map(object({
    capacity                           = number
    family                             = string
    location                           = string
    name                               = string
    resource_group_name                = string
    sku_name                           = string
    tags                               = optional(map(string))
    subnet_id                          = optional(string)
    shard_count                        = optional(number)
    replicas_per_primary               = optional(number)
    replicas_per_master                = optional(number)
    private_static_ip_address          = optional(string)
    public_network_access_enabled      = optional(bool) # Default: true
    tenant_settings                    = optional(map(string))
    non_ssl_port_enabled               = optional(bool)   # Default: false
    minimum_tls_version                = optional(string) # Default: "1.2"
    access_keys_authentication_enabled = optional(bool)   # Default: true
    redis_version                      = optional(string) # Default: "6"
    zones                              = optional(set(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    patch_schedule = optional(object({
      day_of_week        = string
      maintenance_window = optional(string) # Default: "PT5H"
      start_hour_utc     = optional(number)
    }))
    redis_configuration = optional(object({
      active_directory_authentication_enabled = optional(bool)
      aof_backup_enabled                      = optional(bool)
      aof_storage_connection_string_0         = optional(string)
      aof_storage_connection_string_1         = optional(string)
      authentication_enabled                  = optional(bool) # Default: true
      data_persistence_authentication_method  = optional(string)
      maxfragmentationmemory_reserved         = optional(number)
      maxmemory_delta                         = optional(number)
      maxmemory_policy                        = optional(string) # Default: "volatile-lru"
      maxmemory_reserved                      = optional(number)
      notify_keyspace_events                  = optional(string)
      rdb_backup_enabled                      = optional(bool)
      rdb_backup_frequency                    = optional(number)
      rdb_backup_max_snapshot_count           = optional(number)
      rdb_storage_connection_string           = optional(string)
      storage_account_subscription_id         = optional(string)
    }))
  }))
}

