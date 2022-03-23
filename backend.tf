# terraform backend.tf
terraform {
    backend "s3" {
        bucket  = "test-development-terraform-statefiles"
        key     = "terraform/vpc/terraform.tfstate"
        region  = "us-east-2"
        profile = "default"
    }
}