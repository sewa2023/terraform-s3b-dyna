terraform {
 backend "s3" {
    bucket         = "tf-dev03-state-bucket"
   key            = "terraform.tfstate"
  region         = "us-east-1"
 encrypt        = true
dynamodb_table = "tf-example03-table"
}
}