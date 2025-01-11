module "aws_vpc" {
  source = "../../vpc"
}

resource "aws_subnet" "public_subnet_1a" {
  vpc_id            = module.aws_vpc.vpc_id
  cidr_block        = "10.0.48.0/24"
  availability_zone = format("%sa", "us-east-1")

  tags = {
    Name = format("%s-public_subnet_1a", "linuxtips-vpc")
  }
}

resource "aws_subnet" "public_subnet_1b" {
  vpc_id            = module.aws_vpc.vpc_id
  cidr_block        = "10.0.49.0/24"
  availability_zone = format("%sa", "us-east-1")

  tags = {
    Name = format("%s-public_subnet_1b", "linuxtips-vpc")
  }
}

resource "aws_subnet" "public_subnet_1c" {
  vpc_id            = module.aws_vpc.vpc_id
  cidr_block        = "10.0.50.0/24"
  availability_zone = format("%sa", "us-east-1")

  tags = {
    Name = format("%s-public_subnet_1c", "linuxtips-vpc")
  }
}