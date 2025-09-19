resource "aws_s3_bucket" "remote-back" {
  bucket = "remote-be"
  force_destroy = true
  tags = {
    Name        = "remote-be"
    Environment = "Dev"
  }
}