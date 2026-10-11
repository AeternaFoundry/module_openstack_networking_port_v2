resource "openstack_networking_port_v2" "networking_port_v2s" {
  for_each = var.networking_port_v2s

  network_id            = each.value.network_id
  admin_state_up        = each.value.admin_state_up
  description           = each.value.description
  device_id             = each.value.device_id
  device_owner          = each.value.device_owner
  dns_name              = each.value.dns_name
  mac_address           = each.value.mac_address
  name                  = each.value.name
  no_fixed_ip           = each.value.no_fixed_ip
  no_security_groups    = each.value.no_security_groups
  port_security_enabled = each.value.port_security_enabled
  qos_policy_id         = each.value.qos_policy_id
  region                = each.value.region
  security_group_ids    = each.value.security_group_ids
  tags                  = each.value.tags
  tenant_id             = each.value.tenant_id
  value_specs           = each.value.value_specs

  dynamic "allowed_address_pairs" {
    for_each = each.value.allowed_address_pairs != null ? each.value.allowed_address_pairs : []
    content {
      ip_address  = allowed_address_pairs.value.ip_address
      mac_address = allowed_address_pairs.value.mac_address
    }
  }

  dynamic "binding" {
    for_each = each.value.binding != null ? [each.value.binding] : []
    content {
      host_id   = binding.value.host_id
      profile   = binding.value.profile
      vnic_type = binding.value.vnic_type
    }
  }

  dynamic "extra_dhcp_option" {
    for_each = each.value.extra_dhcp_option != null ? each.value.extra_dhcp_option : []
    content {
      ip_version = extra_dhcp_option.value.ip_version
      name       = extra_dhcp_option.value.name
      value      = extra_dhcp_option.value.value
    }
  }

  dynamic "fixed_ip" {
    for_each = each.value.fixed_ip != null ? each.value.fixed_ip : []
    content {
      ip_address = fixed_ip.value.ip_address
      subnet_id  = fixed_ip.value.subnet_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

