# -----------------------------------------------------------------------------
# newenv Enviroment Resources
# -----------------------------------------------------------------------------
locals {
  newenv_environment = {
    enable_tf_state_backup = false
    enable_logging         = true
  }
}

module "newenv_environment" {
  source = "../elz-environment"

  tenancy_ocid   = var.tenancy_ocid
  region         = var.region
  resource_label = var.resource_label

  home_compartment_id        = module.home_compartment.compartment_id
  environment_prefix         = var.newenv_environment_prefix
  enable_tf_state_backup     = local.newenv_environment.enable_tf_state_backup
  enable_logging             = local.newenv_environment.enable_logging
  domain_admin_email         = var.newenv_domain_admin_email
  network_admin_group_name   = var.newenv_network_admin_group_name
  iam_admin_group_name       = var.newenv_iam_admin_group_name
  platform_admin_group_name  = var.newenv_platform_admin_group_name
  ops_admin_group_name       = var.newenv_ops_admin_group_name
  security_admin_group_name  = var.newenv_security_admin_group_name
  workload_compartment_names = var.newenv_workload_compartment_names

  enable_budget                = var.newenv_enable_budget
  budget_amount                = var.newenv_budget_amount
  budget_alert_rule_threshold  = var.newenv_budget_alert_rule_threshold
  budget_alert_rule_message    = var.newenv_budget_alert_rule_message
  budget_alert_rule_recipients = var.newenv_budget_alert_rule_recipients
  enable_cloud_guard           = var.enable_cloud_guard
  is_create_alarms             = var.is_create_alarms
  is_service_connector_limit   = var.is_service_connector_limit
  domain_license_type          = var.domain_license_type

  cloud_guard_target_tenancy        = var.cloud_guard_target_tenancy
  home_compartment_name             = var.home_compartment_name
  enable_vpn_or_fastconnect         = var.enable_vpn_or_fastconnect
  cpe_ip_address                    = var.newenv_cpe_ip_address
  ipsec_connection_static_routes    = var.newenv_ipsec_connection_static_routes
  enable_vpn_on_environment         = var.newenv_enable_vpn
  cpe_display_name                  = var.newenv_cpe_display_name
  ipsec_display_name                = var.newenv_ipsec_display_name
  cpe_vendor                        = var.newenv_cpe_vendor
  routing                           = var.newenv_ipsec_routing_type
  tunnel_a_display_name             = var.newenv_tunnel_a_display_name
  customer_bgp_asn                  = var.newenv_customer_bgp_asn
  bgp_cust_tunnela_ip               = var.newenv_bgp_cust_tunnela_ip
  bgp_oci_tunnela_ip                = var.newenv_bgp_oci_tunnela_ip
  shared_secret                     = var.newenv_shared_secret
  tunnel_b_display_name             = var.newenv_tunnel_b_display_name
  fastconnect_provider              = var.fastconnect_provider
  region_key                        = local.region_key[0]
  virtual_circuit_bandwidth_shape   = format("%s %s", var.virtual_circuit_bandwidth_shape, "Gbps")
  virtual_circuit_display_name      = var.virtual_circuit_display_name
  provider_service_key_name         = var.provider_service_key_name
  fastconnect_routing_policy        = var.fastconnect_routing_policy
  virtual_circuit_type              = var.virtual_circuit_type
  customer_primary_bgp_peering_ip   = var.customer_primary_bgp_peering_ip
  oracle_primary_bgp_peering_ip     = var.oracle_primary_bgp_peering_ip
  customer_secondary_bgp_peering_ip = var.customer_secondary_bgp_peering_ip
  oracle_secondary_bgp_peering_ip   = var.oracle_secondary_bgp_peering_ip
  virtual_circuit_customer_asn      = var.virtual_circuit_customer_asn
  virtual_circuit_is_bfd_enabled    = var.virtual_circuit_is_bfd_enabled
  bgp_md5auth_key                   = var.bgp_md5auth_key
  enable_fastconnect_on_environment = var.newenv_enable_fastconnect
  customer_onprem_ip_cidr           = var.customer_onprem_ip_cidr

  enable_internet_gateway_hub = var.newenv_enable_internet_gateway_hub
  enable_nat_gateway_hub      = var.newenv_enable_nat_gateway_hub
  enable_service_gateway_hub  = var.newenv_enable_service_gateway_hub

  igw_hub_check        = var.newenv_igw_hub_check
  nat_gw_hub_check     = var.newenv_nat_gw_hub_check
  service_gw_hub_check = var.newenv_service_gw_hub_check

  vcn_cidr_block            = var.newenv_hub_vcn_cidr_block
  public_subnet_cidr_block  = var.newenv_hub_public_subnet_cidr_block
  private_subnet_cidr_block = var.newenv_hub_private_subnet_cidr_block

  vault_type                   = var.newenv_vault_type
  vault_replica_region         = var.newenv_vault_replica_region
  enable_vault_replication     = var.newenv_enable_vault_replication
  create_master_encryption_key = var.newenv_create_master_encryption_key

  retention_policy_duration_amount    = var.newenv_retention_policy_duration_amount
  retention_policy_duration_time_unit = var.newenv_retention_policy_duration_time_unit

  enable_tagging       = var.newenv_enable_tagging
  cost_center_tagging  = var.newenv_cost_center_tagging
  geo_location_tagging = var.newenv_geo_location_tagging

  network_topic_endpoints  = var.newenv_network_topic_endpoints
  secops_topic_endpoints   = var.newenv_secops_topic_endpoints
  platform_topic_endpoints = var.newenv_platform_topic_endpoints
  identity_topic_endpoints = var.newenv_identity_topic_endpoints

  enable_security_monitoring_alarms = var.newenv_enable_security_monitoring_alarms
  enable_network_monitoring_alarms  = var.newenv_enable_network_monitoring_alarms

  additional_workload_subnets_cidr_blocks = var.newenv_additional_workload_subnets_cidr_blocks

  providers = {
    oci             = oci
    oci.home_region = oci.home_region
  }

  depends_on = [
    module.cloud_guard_root_policy,
    module.cloud_guard_target_policy,
    module.vss_policy,
    module.home_compartment
  ]
}

