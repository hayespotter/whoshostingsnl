terraform {
  backend "s3" {
    region  = "us-east-1"
    bucket  = "whoshostingsnl-prod-state"
    key     = "github_role_stack.tfstate"
    profile = ""
    encrypt = "true"
    use_lockfile = true
  }
}