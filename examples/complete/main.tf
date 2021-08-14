module "aci_node_registration" {
  source = "netascode/node-registration/aci"

  name          = "LEAF105"
  id            = 105
  pod           = 2
  serial_number = "ABCDEFGHIJKLMN"
  role          = "leaf"
  type          = "tier-2-leaf"
}
