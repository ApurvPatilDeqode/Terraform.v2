
resource "aws_nat_gateway" "tf_nat_gateway" {
    allocation_id = aws_eip.tf_eip.id
    subnet_id = aws_subnet.tf_public_subnet.id
    tags = {
        Name = "custom_nat_gateway"
    }
# To ensure proper ordering, it is recommended to add an explicit dependency
# on the Internet Gateway for the VPC.
#depends_on = [aws_internet_gateway.example]
}