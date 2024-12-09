provider "aws" {
  region = "ap-northeast-1"  # 使用するAWSのリージョン
}

resource "aws_s3_bucket" "example" {
  bucket = "my-unique-example-bucket-1234512345"
  acl    = "private"
}
