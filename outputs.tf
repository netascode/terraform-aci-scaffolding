output "dn" {
  value       = aci_rest.fvTenant.id
  description = "Distinguished name of `fvTenant` object."
}

output "name" {
  value       = aci_rest.fvTenant.content.name
  description = "Tenant name."
}
