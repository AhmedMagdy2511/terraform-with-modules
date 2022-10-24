
# resource "aws_route_table" "private" {
#   vpc_id = aws_vpc.terraform.id

#   route {
#     cidr_block        = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.terraformNat1.id
#   }

#   tags = {
#     Name = "natRouteTable"
#   }
# }

resource "aws_route_table" "EKS_public" {
  vpc_id = aws_vpc.EKS_VPC.id

   route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.EKS_GateWay.id
  }

  tags = {
    Name = "gatewayRouteTable"
  }
}
resource "aws_route_table_association" "sub1public" {
  subnet_id      = aws_subnet.EKS_Subnet1_public.id
  route_table_id = aws_route_table.EKS_public.id
}
resource "aws_route_table_association" "sub2public" {
  subnet_id      = aws_subnet.EKS_Subnet2_public.id
  route_table_id = aws_route_table.EKS_public.id
}
# resource "aws_route_table_association" "sub1private" {
#   subnet_id      = aws_subnet.terraformSubnet1Private.id
#   route_table_id = aws_route_table.private.id
# }
# resource "aws_route_table_association" "sub2private" {
#   subnet_id      = aws_subnet.terraformSubnet2Private.id
#   route_table_id = aws_route_table.private.id
# }