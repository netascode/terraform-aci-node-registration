module "aci_node_registration" {
  source  = "netascode/node-registration/aci"
  version = ">= 0.0.2"

  name          = "LEAF105"
  node_id       = 105
  pod_id        = 2
  serial_number = "ABCDEFGHIJKLMN"
  role          = "leaf"
  type          = "tier-2-leaf"
}
