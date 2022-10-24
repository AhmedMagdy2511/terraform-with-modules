resource "aws_vpc" "EKS_VPC" {
  cidr_block       = "10.0.0.0"
  instance_tenancy = "default"

  tags = {
    Name = "EKS_VPC"
  }
}
resource "aws_internet_gateway" "EKS_GateWay" {
  vpc_id = aws_vpc.EKS_VPC.id

  tags = {
    Name = "EKS_GateWay"
  }
}