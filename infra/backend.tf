terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    region  = "us-east-1"
    bucket  = "whoshostingsnl-prod-whoshostingsnl-state"
    key     = "terraform.tfstate"
    profile = ""
    encrypt = "true"

    dynamodb_table = "whoshostingsnl-prod-whoshostingsnl-state-lock"
  }
}
