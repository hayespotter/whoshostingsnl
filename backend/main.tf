module "terraform_state_backend" {
	source    = "cloudposse/tfstate-backend/aws"
	version 	= "v1.5.0"

	namespace  = "whoshostingsnl"
	stage  	   = "prod"
	name   	   = "whoshostingsnl"
	attributes = ["state"]

	terraform_backend_config_file_path = "."
	terraform_backend_config_file_name = "backend.tf"
	force_destroy                  	   = false
}