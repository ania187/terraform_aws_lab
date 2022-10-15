terraform {
  backend "s3" {
    encrypt = true    
    bucket = "terraform-nas"
    dynamodb_table = "terraform-state-lock-dynamo"
    key    = "nasser/terraform.tfstate"
    region = "us-east-1"
  }
}