variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "project_name" {
  description = "Project name for resource naming"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "public_subnet_1a_cidr" {
  description = "CIDR block for public subnet 1a"
  type        = string
}

variable "public_subnet_1b_cidr" {
  description = "CIDR block for public subnet 1b"
  type        = string
}

variable "private_subnet_1a_cidr" {
  description = "CIDR block for private subnet 1a"
  type        = string
}

variable "private_subnet_1b_cidr" {
  description = "CIDR block for private subnet 1b"
  type        = string
}
variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}
variable "db_username" {
  description = "Username for RDS"
}
variable "db_password" {
  description = "Password for RDS"  
}