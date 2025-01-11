module "aws_vpc" {
  source = "../../vpc"
}

resource "aws_internet_gateway" "gw" {
  vpc_id = module.aws_vpc.vpc_id

  tags = {
    Name = format("%s-igw", "linuxtips-vpc")
  }
}