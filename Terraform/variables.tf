# AWS region
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1" 
}

# AMI ID for Ubuntu 20.04 in ap-south-1
variable "ami_id" {
  description = "Ubuntu AMI ID"
  type        = string
  default     = "ami-0f58b397bc5c1f2e8"
}

# Instance type
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

# Project name
variable "project_name" {
  description = "Name prefix for resources"
  type        = string
  default     = "Infra"
}

# SSH Key
variable "key_name" {
  description = "Key pair name"
  type        = string
  default     = "Infra-key"
}

variable "public_key_path" {
  description = "Path to your public SSH key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

# Application port
variable "app_port" {
  description = "Port to allow for app"
  type        = number
  default     = 3000
}
