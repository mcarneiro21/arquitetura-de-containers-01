module "aws_vpc" {
    source = "../../vpc"
}

resource "aws_subnet" "database_subnet_1a" {
  vpc_id            = module.aws_vpc.vpc_id 
  cidr_block        = "10.0.51.0/24"
  availability_zone = format("%sa", "us-east-1")

  tags = {
    Name = format("%s-database_subnet_1a", "linuxtips-vpc")
  }
}

resource "aws_subnet" "database_subnet_1b" {
  vpc_id            = module.aws_vpc.vpc_id 
  cidr_block        = "10.0.52.0/24"
  availability_zone = format("%sa", "us-east-1")

  tags = {
    Name = format("%s-database_subnet_1b", "linuxtips-vpc")
  }
}

resource "aws_subnet" "database_subnet_1c" {
  vpc_id            = module.aws_vpc.vpc_id 
  cidr_block        = "10.0.53.0/24"
  availability_zone = format("%sa", "us-east-1")

  tags = {
    Name = format("%s-database_subnet_1c", "linuxtips-vpc")
  }
}