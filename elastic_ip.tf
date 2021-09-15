
resource "aws_eip" "tf_eip" {
    depends_on = [
      aws_internet_gateway.tf_gw
    ]
}