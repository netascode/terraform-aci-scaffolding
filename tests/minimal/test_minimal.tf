terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    aci = {
      source  = "netascode/aci"
      version = ">=0.2.0"
    }
  }
}

module "main" {
  source = "../.."

  name = "ABC"
}

data "aci_rest" "fvTenant" {
  dn = "uni/tn-ABC"

  depends_on = [module.main]
}

resource "test_assertions" "fvTenant" {
  component = "fvTenant"

  equal "name" {
    description = "name"
    got         = data.aci_rest.fvTenant.content.name
    want        = "ABC"
  }

  equal "nameAlias" {
    description = "nameAlias"
    got         = data.aci_rest.fvTenant.content.nameAlias
    want        = ""
  }

  equal "descr" {
    description = "descr"
    got         = data.aci_rest.fvTenant.content.descr
    want        = ""
  }
}
