##S3 bucket
resource "aws_s3_bucket" "example" {
  bucket = "tf-dev03-state-bucket"

  tags = {
    Name        = "lomevi2023"
    Environment = "Dev"
  }
}

##dynamoDB
resource "aws_dynamodb_table" "tf_example_table" {
  name         = "tf-example03-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}