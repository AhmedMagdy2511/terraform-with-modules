resource "aws_subnet" "EKS_Subnet1_public" {
  vpc_id     = aws_vpc.EKS_VPC.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "EKS_Subnet1_public"
  }
}
resource "aws_subnet" "EKS_Subnet2_public" {
  vpc_id     = aws_vpc.EKS_VPC.id
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "EKS_Subnet2_public"
  }
}

resource "aws_subnet" "EKS_Subnet1_private" {
  vpc_id     = aws_vpc.EKS_VPC.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "EKS_Subnet1_private"
  }
}
resource "aws_subnet" "EKS_Subnet2_private" {
  vpc_id     = aws_vpc.EKS_VPC.id
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "EKS_Subnet2_private"
  }
}
