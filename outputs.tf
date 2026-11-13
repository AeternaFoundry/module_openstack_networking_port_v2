output "networking_port_v2s_id" {
  description = "Map of id values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.id }
}
output "networking_port_v2s_admin_state_up" {
  description = "Map of admin_state_up values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.admin_state_up }
}
output "networking_port_v2s_all_fixed_ips" {
  description = "Map of all_fixed_ips values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.all_fixed_ips }
}
output "networking_port_v2s_all_security_group_ids" {
  description = "Map of all_security_group_ids values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.all_security_group_ids }
}
output "networking_port_v2s_all_tags" {
  description = "Map of all_tags values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.all_tags }
}
output "networking_port_v2s_allowed_address_pairs" {
  description = "Map of allowed_address_pairs values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.allowed_address_pairs }
}
output "networking_port_v2s_binding" {
  description = "Map of binding values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => one(v.binding) }
}
output "networking_port_v2s_description" {
  description = "Map of description values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.description }
}
output "networking_port_v2s_device_id" {
  description = "Map of device_id values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.device_id }
}
output "networking_port_v2s_device_owner" {
  description = "Map of device_owner values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.device_owner }
}
output "networking_port_v2s_dns_assignment" {
  description = "Map of dns_assignment values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.dns_assignment }
}
output "networking_port_v2s_dns_name" {
  description = "Map of dns_name values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.dns_name }
}
output "networking_port_v2s_extra_dhcp_option" {
  description = "Map of extra_dhcp_option values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.extra_dhcp_option }
}
output "networking_port_v2s_fixed_ip" {
  description = "Map of fixed_ip values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.fixed_ip }
}
output "networking_port_v2s_mac_address" {
  description = "Map of mac_address values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.mac_address }
}
output "networking_port_v2s_name" {
  description = "Map of name values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.name }
}
output "networking_port_v2s_network_id" {
  description = "Map of network_id values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.network_id }
}
output "networking_port_v2s_no_fixed_ip" {
  description = "Map of no_fixed_ip values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.no_fixed_ip }
}
output "networking_port_v2s_no_security_groups" {
  description = "Map of no_security_groups values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.no_security_groups }
}
output "networking_port_v2s_port_security_enabled" {
  description = "Map of port_security_enabled values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.port_security_enabled }
}
output "networking_port_v2s_qos_policy_id" {
  description = "Map of qos_policy_id values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.qos_policy_id }
}
output "networking_port_v2s_region" {
  description = "Map of region values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.region }
}
output "networking_port_v2s_security_group_ids" {
  description = "Map of security_group_ids values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.security_group_ids }
}
output "networking_port_v2s_tags" {
  description = "Map of tags values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.tags }
}
output "networking_port_v2s_tenant_id" {
  description = "Map of tenant_id values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.tenant_id }
}
output "networking_port_v2s_value_specs" {
  description = "Map of value_specs values across all networking_port_v2s, keyed the same as var.networking_port_v2s"
  value       = { for k, v in openstack_networking_port_v2.networking_port_v2s : k => v.value_specs }
}

