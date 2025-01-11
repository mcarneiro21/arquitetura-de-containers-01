module "aws_subnet" {
  source = "../subnets/public"
}

resource "aws_eip" "vpc_eip_1a" {
  domain = "vpc"
  tags = {
    Name = format("%s-eip-1a", "linuxtips-vpc")
  }
}

resource "aws_nat_gateway" "nat_1a" {
  allocation_id = aws_eip.vpc_eip_1a.id
  subnet_id     = module.aws_subnet.public_1a_id
  tags = {
    Name = format("%s-nat-1a", "linuxtips-vpc")
  }
}