terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    region  = "us-east-1"
    bucket  = "whoshostingsnl-prod-state"
    key     = "terraform.tfstate"
    profile = ""
    encrypt = "true"
    use_lockfile = true
  }
}