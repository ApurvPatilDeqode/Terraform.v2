

resource "aws_subnet" "tf_private_subnet" {
    vpc_id     = aws_vpc.tf_vpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
    tags = {
        Name = "custom_private_subnet"
    }
}