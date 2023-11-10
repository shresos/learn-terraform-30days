# Resource Block

# Creates VPC
resource "aws_vpc" "dev_vpc" {
  cidr_block       = var.cidr_block_range
  instance_tenancy = "default"
  tags = {
    Name = "oshan-dev-vpc"
  }
}

# Creates subnet
resource "aws_subnet" "name" {
  vpc_id = aws_vpc.dev_vpc.id
  cidr_block = "192.168.0.0/28"
  tags = {
    Name ="oshan-dev-subnet1"
  }
}
