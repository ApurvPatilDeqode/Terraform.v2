
resource "aws_route_table" "tf_private_route_table" {
    vpc_id = aws_vpc.tf_vpc.id
    route = [
    {
      cidr_block = "0.0.0.0/0"
      nat_gateway_id = aws_nat_gateway.tf_nat_gateway.id
    }
]
    tags = {
      Name = "private_custom_route_table"
    }
}