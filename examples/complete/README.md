<!-- BEGIN_TF_DOCS -->
# Node Registration Example

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example will create resources. Resources can be destroyed with `terraform destroy`.

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
<!-- END_TF_DOCS -->