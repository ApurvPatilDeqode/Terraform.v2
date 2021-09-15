
resource "aws_security_group" "tf_security_group" {
    name        = "allow_tls"
    description = "Allow TLS inbound traffic"
    vpc_id      = aws_vpc.tf_vpc.id

    ingress = [
    {
      from_port        = 443
      to_port          = 443
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        from_port        = 22
        to_port          = 22
        protocol         = "ssh"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    ]
    egress = [
    {
        from_port        = 443
        to_port          = 443
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        from_port        = 22
        to_port          = 22
        protocol         = "ssh"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    ]
    tags = {
        Name = "allow_tls"
    }
}