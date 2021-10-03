resource "aci_rest" "fabricNodeIdentP" {
  dn         = "uni/controller/nodeidentpol/nodep-${var.serial_number}"
  class_name = "fabricNodeIdentP"
  content = {
    name     = var.name
    serial   = var.serial_number
    nodeId   = var.node_id
    role     = var.role
    nodeType = var.type
    podId    = var.pod_id
  }
}
