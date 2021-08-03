<!-- BEGIN_TF_DOCS -->
[![Tests](https://github.com/netascode/terraform-aci-scaffolding/actions/workflows/test.yml/badge.svg)](https://github.com/netascode/terraform-aci-scaffolding/actions/workflows/test.yml)

# Terraform ACI Scaffolding Module

Description

Location in GUI:
`Tenants` » `XXX`

## Examples

```hcl
module "aci_scaffolding" {
  source = "netascode/scaffolding/aci"

  name        = "ABC"
  alias       = "ABC-ALIAS"
  description = "My Description"
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
| <a name="input_name"></a> [name](#input\_name) | Tenant name. | `string` | n/a | yes |
| <a name="input_alias"></a> [alias](#input\_alias) | Tenant alias. | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | Tenant description. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Distinguished name of `fvTenant` object. |
| <a name="output_name"></a> [name](#output\_name) | Tenant name. |

## Resources

| Name | Type |
|------|------|
| [aci_rest.fvTenant](https://registry.terraform.io/providers/netascode/aci/latest/docs/resources/rest) | resource |
<!-- END_TF_DOCS -->