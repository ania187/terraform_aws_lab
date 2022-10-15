resource "aws_vpc" "imtiaz-vpc" {
  cidr_block = "10.2.0.0/16"
  tags = {
    Name = "imtiaz-test-vpc1"
  }
}