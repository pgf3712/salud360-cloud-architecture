variable "aws_region" {
  description = "AWS region where the infrastructure will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project identifier used for naming and tagging resources"
  type        = string
  default     = "salud360"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the main VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_db_subnet_cidr" {
  description = "CIDR block for the private database subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone_public" {
  description = "Availability Zone for the public subnet"
  type        = string
  default     = "us-east-1a"
}

variable "availability_zone_private" {
  description = "Availability Zone for the private database subnet"
  type        = string
  default     = "us-east-1b"
}

variable "app_instance_type" {
  description = "EC2 instance type for the application layer"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-xxxxxxxxxxxxxxxxx"
}