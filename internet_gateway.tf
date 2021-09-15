
resource "aws_internet_gateway" "tf_gw" {
    vpc_id = aws_vpc.tf_vpc.id
    tags = {
        Name = "custom_internet_gateway"
    }
}