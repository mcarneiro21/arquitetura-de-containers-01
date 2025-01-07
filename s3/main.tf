resource "aws_s3_bucket" "s3-statefiles" {
  bucket = "containers-sandbox-070120251849"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
