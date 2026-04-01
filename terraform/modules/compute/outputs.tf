output "app_instance_id" {
  description = "ID of the application EC2 instance"
  value       = aws_instance.app.id
}

output "app_security_group_id" {
  description = "ID of the application security group"
  value       = aws_security_group.app_sg.id
}