resource "aws_vpc" "imtiaz-vpc1" {
  cidr_block = "10.2.0.0/16"
  tags = {
    Name = "imtiaz-test-vpc1"
  }
}

resource "aws_subnet" "in_secondary_cidr" {
  vpc_id     = aws_vpc.imtiaz-vpc.id
  cidr_block = "10.2.1.0/24"
  tags = {
    Name = "private-subnet-terraform"
  }
}

resource "aws_instance" "web" {
  ami           = var.ami_id_nas
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
