profile     = "default"
region      = "us-east-2"
environment = "dev"
project     = "myapp"
costcenter  = "myapp"

#################################################
# Network
#################################################
network_name     = "myapp-dev-pvt-network"
cidr_block       = "10.72.0.0/16"
azs              = ["us-east-2a", "us-east-2b", "us-east-2c"]
bastion_key_name = "myapp-dev-bastion-key"