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

  name          = "LEAF105"
  node_id       = 105
  pod_id        = 2
  serial_number = "ABCDEFGHIJKLMN"
  role          = "leaf"
  type          = "tier-2-leaf"
}

data "aci_rest" "fabricNodeIdentP" {
  dn = "uni/controller/nodeidentpol/nodep-ABCDEFGHIJKLMN"

  depends_on = [module.main]
}

resource "test_assertions" "fabricNodeIdentP" {
  component = "fabricNodeIdentP"

  equal "name" {
    description = "name"
    got         = data.aci_rest.fabricNodeIdentP.content.name
    want        = "LEAF105"
  }

  equal "nodeId" {
    description = "nodeId"
    got         = data.aci_rest.fabricNodeIdentP.content.nodeId
    want        = "105"
  }

  equal "serial" {
    description = "serial"
    got         = data.aci_rest.fabricNodeIdentP.content.serial
    want        = "ABCDEFGHIJKLMN"
  }

  equal "role" {
    description = "role"
    got         = data.aci_rest.fabricNodeIdentP.content.role
    want        = "leaf"
  }

  equal "nodeType" {
    description = "nodeType"
    got         = data.aci_rest.fabricNodeIdentP.content.nodeType
    want        = "tier-2-leaf"
  }

  equal "podId" {
    description = "podId"
    got         = data.aci_rest.fabricNodeIdentP.content.podId
    want        = "2"
  }
}
