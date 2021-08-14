output "dn" {
  value       = aci_rest.fabricNodeIdentP.id
  description = "Distinguished name of `fabricNodeIdentP` object."
}

output "name" {
  value       = aci_rest.fabricNodeIdentP.content.name
  description = "Node name."
}
