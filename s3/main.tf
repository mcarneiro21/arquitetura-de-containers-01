resource "aws_s3_bucket" "s3-statefiles" {
  bucket = "arquitetura-containers-linuxtips"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
