
resource "aws_route_table" "tf_public_route_table" {
    vpc_id = aws_vpc.tf_vpc.id
    subnet_id = aws_subnet.tf_public_subnet.id
    route = [
    {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.tf_gw.id
    }
]
    tags = {
      Name = "main_public_route_table"
    }
}