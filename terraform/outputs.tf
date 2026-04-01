output "vpc_id" {
  description = "ID of the main VPC"
  value       = module.networking.vpc_id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = module.networking.public_subnet_id
}

output "private_db_subnet_id" {
  description = "ID of the private database subnet"
  value       = module.networking.private_db_subnet_id
}

output "app_instance_id" {
  description = "ID of the application EC2 instance"
  value       = module.compute.app_instance_id
}

output "app_security_group_id" {
  description = "ID of the application security group"
  value       = module.compute.app_security_group_id
}