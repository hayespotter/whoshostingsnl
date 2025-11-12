terraform {
  backend "s3" {
    region  = "us-east-1"
    bucket  = "whoshostingsnl-prod-state"
    key     = "infra.tfstate"
    profile = ""
    encrypt = "true"
    use_lockfile = true
  }
}