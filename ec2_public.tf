provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "web" {
    ami           = "ami-087c17d1fe0178315"
    instance_type = "t2.micro"
    vpc_id = aws_vpc.tf_vpc.id
    subnet_id = aws_subnet.tf_public_subnet
    associate_public_ip_address = true
    security_groups = aws_security_group.tf_security_group.id
    tags = {
        Name = "Custom_Instance"
    }

}
