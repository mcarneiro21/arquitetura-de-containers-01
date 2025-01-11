module "aws_vpc" {
    source = "../../vpc"
}

resource "aws_subnet" "private_subnet_1a" {
  vpc_id            = module.aws_vpc.vpc_id 
  cidr_block        = "10.0.0.0/20"
  availability_zone = format("%sa", "us-east-1")

  tags = {
    Name = format("%s-private_subnet_1a", "linuxtips-vpc")
  }
}

resource "aws_subnet" "private_subnet_1b" {
  vpc_id            = module.aws_vpc.vpc_id 
  cidr_block        = "10.0.16.0/20"
  availability_zone = format("%sa", "us-east-1")

  tags = {
    Name = format("%s-private_subnet_1b", "linuxtips-vpc")
  }
}

resource "aws_subnet" "private_subnet_1c" {
  vpc_id            = module.aws_vpc.vpc_id 
  cidr_block        = "10.0.32.0/20"
  availability_zone = format("%sa", "us-east-1")

  tags = {
    Name = format("%s-private_subnet_1c", "linuxtips-vpc")
  }
}