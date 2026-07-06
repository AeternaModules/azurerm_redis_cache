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
  validation {
    condition = alltrue([
      for k, v in var.redis_caches : (
        v.zones == null || (length(v.zones) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.redis_caches : (
        v.redis_configuration == null || (v.redis_configuration.data_persistence_authentication_method == null || (contains(["SAS", "ManagedIdentity"], v.redis_configuration.data_persistence_authentication_method)))
      )
    ])
    error_message = "must be one of: SAS, ManagedIdentity"
  }
  validation {
    condition = alltrue([
      for k, v in var.redis_caches : (
        v.redis_configuration == null || (v.redis_configuration.storage_account_subscription_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.redis_configuration.storage_account_subscription_id))))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.redis_caches : (
        v.patch_schedule == null || (v.patch_schedule.start_hour_utc == null || (v.patch_schedule.start_hour_utc >= 0 && v.patch_schedule.start_hour_utc <= 23))
      )
    ])
    error_message = "must be between 0 and 23"
  }
  validation {
    condition = alltrue([
      for k, v in var.redis_caches : (
        v.replicas_per_master == null || (v.replicas_per_master >= 1 && v.replicas_per_master <= 3)
      )
    ])
    error_message = "must be between 1 and 3"
  }
  validation {
    condition = alltrue([
      for k, v in var.redis_caches : (
        v.replicas_per_primary == null || (v.replicas_per_primary >= 1 && v.replicas_per_primary <= 3)
      )
    ])
    error_message = "must be between 1 and 3"
  }
  validation {
    condition = alltrue([
      for k, v in var.redis_caches : (
        v.redis_version == null || (contains(["4", "6"], v.redis_version))
      )
    ])
    error_message = "must be one of: 4, 6"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_redis_cache's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: family
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: sku_name
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: minimum_tls_version
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
  # path: redis_configuration.maxmemory_policy
  #   source:    validate.MaxMemoryPolicy: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: redis_configuration.rdb_backup_frequency
  #   source:    [from validate.CacheBackupFrequency] !families[value]
  # path: patch_schedule.day_of_week
  #   source:    validation.IsDayOfTheWeek(...) - no translation rule yet, add one
  # path: patch_schedule.maintenance_window
  #   source:    [from azValidate.ISO8601Duration] !ok
  # path: patch_schedule.maintenance_window
  #   source:    [from azValidate.ISO8601Duration] err != nil
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

