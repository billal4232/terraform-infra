output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.this.id
}

output "public_subnet_1a_id" {
  description = "Public subnet 1a ID"
  value       = aws_subnet.public_1a.id
}

output "public_subnet_1b_id" {
  description = "Public subnet 1b ID"
  value       = aws_subnet.public_1b.id
}

output "private_subnet_1a_id" {
  description = "Private subnet 1a ID"
  value       = aws_subnet.private_1a.id
}

output "private_subnet_1b_id" {
  description = "Private subnet 1b ID"
  value       = aws_subnet.private_1b.id
}