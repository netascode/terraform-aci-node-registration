<!-- BEGIN_TF_DOCS -->
[![Tests](https://github.com/netascode/terraform-aci-node-registration/actions/workflows/test.yml/badge.svg)](https://github.com/netascode/terraform-aci-node-registration/actions/workflows/test.yml)

# Terraform ACI Node Registration Module

Manages ACI Node Registration

Location in GUI:
`Fabric` » `Inventory` » `Fabric Membership`

## Examples

```hcl
module "aci_node_registration" {
  source = "netascode/node-registration/aci"

  name          = "LEAF105"
  id            = 105
  pod           = 2
  serial_number = "ABCDEFGHIJKLMN"
  role          = "leaf"
  type          = "tier-2-leaf"
}

```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | >= 0.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aci"></a> [aci](#provider\_aci) | >= 0.2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Node name. | `string` | n/a | yes |
| <a name="input_id"></a> [id](#input\_id) | Node ID. Minimum value: 1. Maximum value: 4000. | `number` | n/a | yes |
| <a name="input_pod"></a> [pod](#input\_pod) | Pod ID. Minimum value: 1. Maximum value: 255. | `number` | `1` | no |
| <a name="input_serial_number"></a> [serial\_number](#input\_serial\_number) | Serial number. | `string` | n/a | yes |
| <a name="input_role"></a> [role](#input\_role) | Node role. Choices: `leaf`, `spine`. | `string` | `"leaf"` | no |
| <a name="input_type"></a> [type](#input\_type) | Node type. Choices: `remote-leaf-wan`, `virtual`, `tier-2-leaf`, `unspecified`. | `string` | `"unspecified"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Distinguished name of `fabricNodeIdentP` object. |
| <a name="output_name"></a> [name](#output\_name) | Node name. |

## Resources

| Name | Type |
|------|------|
| [aci_rest.fabricNodeIdentP](https://registry.terraform.io/providers/netascode/aci/latest/docs/resources/rest) | resource |
<!-- END_TF_DOCS -->