<!-- BEGIN_TF_DOCS -->
# Scaffolding Example

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example will create resources. Resources can be destroyed with `terraform destroy`.

```hcl
module "aci_scaffolding" {
  source  = "netascode/scaffolding/aci"
  version = ">= 0.0.1"

  name        = "ABC"
  alias       = "ABC-ALIAS"
  description = "My Description"
}
```
<!-- END_TF_DOCS -->