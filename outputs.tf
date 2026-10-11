output "networking_port_v2s_id" {
  description = "Map of id values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no id are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "networking_port_v2s_admin_state_up" {
  description = "Map of admin_state_up values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no admin_state_up are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.admin_state_up if v.admin_state_up != null }
}
output "networking_port_v2s_all_fixed_ips" {
  description = "Map of all_fixed_ips values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no all_fixed_ips are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.all_fixed_ips if v.all_fixed_ips != null && length(v.all_fixed_ips) > 0 }
}
output "networking_port_v2s_all_security_group_ids" {
  description = "Map of all_security_group_ids values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no all_security_group_ids are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.all_security_group_ids if v.all_security_group_ids != null && length(v.all_security_group_ids) > 0 }
}
output "networking_port_v2s_all_tags" {
  description = "Map of all_tags values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no all_tags are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.all_tags if v.all_tags != null && length(v.all_tags) > 0 }
}
output "networking_port_v2s_allowed_address_pairs" {
  description = "Map of allowed_address_pairs values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no allowed_address_pairs are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.allowed_address_pairs if v.allowed_address_pairs != null && length(v.allowed_address_pairs) > 0 }
}
output "networking_port_v2s_binding" {
  description = "Map of binding values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no binding are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => one(v.binding) if v.binding != null && length(v.binding) > 0 }
}
output "networking_port_v2s_description" {
  description = "Map of description values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no description are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.description if v.description != null && length(v.description) > 0 }
}
output "networking_port_v2s_device_id" {
  description = "Map of device_id values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no device_id are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.device_id if v.device_id != null && length(v.device_id) > 0 }
}
output "networking_port_v2s_device_owner" {
  description = "Map of device_owner values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no device_owner are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.device_owner if v.device_owner != null && length(v.device_owner) > 0 }
}
output "networking_port_v2s_dns_assignment" {
  description = "Map of dns_assignment values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no dns_assignment are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.dns_assignment if v.dns_assignment != null && length(v.dns_assignment) > 0 }
}
output "networking_port_v2s_dns_name" {
  description = "Map of dns_name values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no dns_name are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.dns_name if v.dns_name != null && length(v.dns_name) > 0 }
}
output "networking_port_v2s_extra_dhcp_option" {
  description = "Map of extra_dhcp_option values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no extra_dhcp_option are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.extra_dhcp_option if v.extra_dhcp_option != null && length(v.extra_dhcp_option) > 0 }
}
output "networking_port_v2s_fixed_ip" {
  description = "Map of fixed_ip values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no fixed_ip are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.fixed_ip if v.fixed_ip != null && length(v.fixed_ip) > 0 }
}
output "networking_port_v2s_mac_address" {
  description = "Map of mac_address values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no mac_address are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.mac_address if v.mac_address != null && length(v.mac_address) > 0 }
}
output "networking_port_v2s_name" {
  description = "Map of name values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no name are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "networking_port_v2s_network_id" {
  description = "Map of network_id values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no network_id are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.network_id if v.network_id != null && length(v.network_id) > 0 }
}
output "networking_port_v2s_no_fixed_ip" {
  description = "Map of no_fixed_ip values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no no_fixed_ip are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.no_fixed_ip if v.no_fixed_ip != null }
}
output "networking_port_v2s_no_security_groups" {
  description = "Map of no_security_groups values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no no_security_groups are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.no_security_groups if v.no_security_groups != null }
}
output "networking_port_v2s_port_security_enabled" {
  description = "Map of port_security_enabled values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no port_security_enabled are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.port_security_enabled if v.port_security_enabled != null }
}
output "networking_port_v2s_qos_policy_id" {
  description = "Map of qos_policy_id values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no qos_policy_id are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.qos_policy_id if v.qos_policy_id != null && length(v.qos_policy_id) > 0 }
}
output "networking_port_v2s_region" {
  description = "Map of region values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no region are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "networking_port_v2s_security_group_ids" {
  description = "Map of security_group_ids values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no security_group_ids are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.security_group_ids if v.security_group_ids != null && length(v.security_group_ids) > 0 }
}
output "networking_port_v2s_tags" {
  description = "Map of tags values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no tags are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "networking_port_v2s_tenant_id" {
  description = "Map of tenant_id values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no tenant_id are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
}
output "networking_port_v2s_value_specs" {
  description = "Map of value_specs values across all networking_port_v2s, keyed the same as var.networking_port_v2s except keys with no value_specs are omitted"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.value_specs if v.value_specs != null && length(v.value_specs) > 0 }
}

