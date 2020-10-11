provider "aws" {
  region     = "us-east-2"
  access_key = "AKIA4EEW7S5OFWXE3BM4"
  secret_key = "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"
}

resource "aws_s3_bucket" "my-resource-for-s3bucket" {
  bucket = "my-s3-bucket-from-terraform"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}