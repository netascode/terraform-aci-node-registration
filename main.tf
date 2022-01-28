resource "aci_rest_managed" "fabricNodeIdentP" {
  dn         = "uni/controller/nodeidentpol/nodep-${var.serial_number}"
  class_name = "fabricNodeIdentP"
  content = {
    name     = var.name
    serial   = var.serial_number
    nodeId   = var.node_id
    nodeType = var.type
    podId    = var.pod_id
  }
}
