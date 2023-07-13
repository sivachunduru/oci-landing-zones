<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 5.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 5.1.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_architecture_tag"></a> [architecture\_tag](#module\_architecture\_tag) | ../../modules/tag | n/a |
| <a name="module_cloud_guard"></a> [cloud\_guard](#module\_cloud\_guard) | ../../modules/cloud-guard | n/a |
| <a name="module_key"></a> [key](#module\_key) | ../../modules/key | n/a |
| <a name="module_key_policy"></a> [key\_policy](#module\_key\_policy) | ../../modules/policies | n/a |
| <a name="module_vault"></a> [vault](#module\_vault) | ../../modules/vault | n/a |
| <a name="module_vss"></a> [vss](#module\_vss) | ../../modules/vss | n/a |

## Resources

| Name | Type |
|------|------|
| [random_id.tag](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |
| [oci_identity_region_subscriptions.regions](https://registry.terraform.io/providers/oracle/oci/5.1.0/docs/data-sources/identity_region_subscriptions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_guard_target_tenancy"></a> [cloud\_guard\_target\_tenancy](#input\_cloud\_guard\_target\_tenancy) | true if cloud guard targets to tenancy, false if cloud guard targets to Landing Zone home compartment | `bool` | n/a | yes |
| <a name="input_create_master_encryption_key"></a> [create\_master\_encryption\_key](#input\_create\_master\_encryption\_key) | Option create master encryption key | `bool` | n/a | yes |
| <a name="input_enable_cloud_guard"></a> [enable\_cloud\_guard](#input\_enable\_cloud\_guard) | true if you don't have cloud guard enabled, false if you've already have cloud guard enabled. | `bool` | n/a | yes |
| <a name="input_enable_replication"></a> [enable\_replication](#input\_enable\_replication) | Option to enable vault replication | `bool` | n/a | yes |
| <a name="input_environment_compartment_id"></a> [environment\_compartment\_id](#input\_environment\_compartment\_id) | The OCID of environment compartment | `string` | n/a | yes |
| <a name="input_environment_prefix"></a> [environment\_prefix](#input\_environment\_prefix) | the 1 character string representing the environment eg. P (prod), N (non-prod), D, T, U | `string` | n/a | yes |
| <a name="input_home_compartment_id"></a> [home\_compartment\_id](#input\_home\_compartment\_id) | the OCID of the compartment where the environment will be created. In general, this should be the Landing zone parent compartment. | `string` | n/a | yes |
| <a name="input_home_compartment_name"></a> [home\_compartment\_name](#input\_home\_compartment\_name) | Landing Zone home compartment name | `string` | n/a | yes |
| <a name="input_is_baseline_deploy"></a> [is\_baseline\_deploy](#input\_is\_baseline\_deploy) | TagNameSpace Optimization: Enable this flag to disable dependent module TagNameSpace Tag Creation. | `bool` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The OCI region | `string` | n/a | yes |
| <a name="input_replica_region"></a> [replica\_region](#input\_replica\_region) | the region to be created replica to. | `string` | n/a | yes |
| <a name="input_resource_label"></a> [resource\_label](#input\_resource\_label) | Prefix used to avoid naming conflict | `string` | n/a | yes |
| <a name="input_security_compartment_id"></a> [security\_compartment\_id](#input\_security\_compartment\_id) | The OCID of security compartment | `string` | n/a | yes |
| <a name="input_tenancy_ocid"></a> [tenancy\_ocid](#input\_tenancy\_ocid) | The OCID of tenancy | `string` | n/a | yes |
| <a name="input_vault_type"></a> [vault\_type](#input\_vault\_type) | The type of vault to create. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | n/a |
| <a name="output_vault_id"></a> [vault\_id](#output\_vault\_id) | n/a |
<!-- END_TF_DOCS -->