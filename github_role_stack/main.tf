module "iam_github_oidc_provider" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-github-oidc-provider"
  version = "v5.54.0"
}

module "iam_github_write_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-github-oidc-role"
  version = "v5.54.0"

  name = "github-write-role"

  subjects = ["hayespotter/whoshostingsnl:ref:refs/heads/master"]

  policies = {
    AmazonEC2FullAccess      = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
    AmazonVPCFullAccess      = "arn:aws:iam::aws:policy/CloudFrontFullAccess"
  }
}

module "iam_github_read_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-github-oidc-role"
  version = "v5.54.0"

  name = "github-read-role"

  subjects = ["hayespotter/whoshostingsnl:*"]

  policies = {
    ReadOnlyAccess    = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  }
}