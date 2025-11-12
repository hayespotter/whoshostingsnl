terraform {
  backend "s3" {
    region  = "us-east-1"
    bucket  = "whoshostingsnl-prod-whoshostingsnl-state"
    key     = "github_role_stack.tfstate"
    profile = ""
    encrypt = "true"

    dynamodb_table = "whoshostingsnl-prod-whoshostingsnl-state-lock"
  }
}