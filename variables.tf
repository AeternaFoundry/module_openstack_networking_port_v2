variable "networking_port_v2s" {
  description = <<EOT
Map of networking_port_v2s, attributes below
Required:
    - network_id
Optional:
    - admin_state_up
    - description
    - device_id
    - device_owner
    - dns_name
    - mac_address
    - name
    - no_fixed_ip
    - no_security_groups
    - port_security_enabled
    - qos_policy_id
    - region
    - security_group_ids
    - tags
    - tenant_id
    - value_specs
    - allowed_address_pairs (block):
        - ip_address (required)
        - mac_address (optional)
    - binding (block):
        - host_id (optional)
        - profile (optional)
        - vnic_type (optional)
    - extra_dhcp_option (block):
        - ip_version (optional)
        - name (required)
        - value (required)
    - fixed_ip (block):
        - ip_address (optional)
        - subnet_id (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    network_id            = string
    admin_state_up        = optional(bool)
    description           = optional(string)
    device_id             = optional(string)
    device_owner          = optional(string)
    dns_name              = optional(string)
    mac_address           = optional(string)
    name                  = optional(string)
    no_fixed_ip           = optional(bool)
    no_security_groups    = optional(bool)
    port_security_enabled = optional(bool)
    qos_policy_id         = optional(string)
    region                = optional(string)
    security_group_ids    = optional(set(string))
    tags                  = optional(set(string))
    tenant_id             = optional(string)
    value_specs           = optional(map(string))
    allowed_address_pairs = optional(list(object({
      ip_address  = string
      mac_address = optional(string)
    })))
    binding = optional(object({
      host_id   = optional(string)
      profile   = optional(string)
      vnic_type = optional(string)
    }))
    extra_dhcp_option = optional(list(object({
      ip_version = optional(number)
      name       = string
      value      = string
    })))
    fixed_ip = optional(list(object({
      ip_address = optional(string)
      subnet_id  = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.networking_port_v2s : (
        v.binding == null || (v.binding.vnic_type == null || (contains([for v in ["direct", "direct-physical", "macvtap", "normal", "baremetal", "virtio-forwarder", "remote-managed"] : lower(v)], lower(v.binding.vnic_type))))
      )
    ])
    error_message = "must be one of: \"direct\", \"direct-physical\", \"macvtap\", \"normal\", \"baremetal\", \"virtio-forwarder\", \"remote-managed\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

