# terraform backend.tf
terraform {
    backend "s3" {
        bucket  = "stanly-development-terraform-statefiles"
        key     = "terraform/vpc/terraform.tfstate"
        region  = "us-east-1"
        profile = "default"      
    }
}
