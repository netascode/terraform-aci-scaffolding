resource "aci_rest" "fvTenant" {
  dn         = "uni/tn-${var.name}"
  class_name = "fvTenant"
  content = {
    name      = var.name
    nameAlias = var.alias
    descr     = var.description
  }
}
