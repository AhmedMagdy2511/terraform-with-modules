output "vpc" {
  value = aws_vpc.terraform.id
}
output "public_security" {
  value = aws_security_group.public_ssh.id
}
output "private_security" {
  value = aws_security_group.private_ssh.id
}
output "pulic_subnet" {
  value = aws_subnet.terraformSubnet1.id
}
output "private_subnet" {
  value = aws_subnet.terraformSubnet1Private.id
}

# output "region" {
#   value = var.region
# }