
resource "aws_subnet" "tf_public_subnet" {
    vpc_id     = aws_vpc.tf_vpc.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-1a"
    tags = {
        Name = "public_nat_subnet"
    }
}