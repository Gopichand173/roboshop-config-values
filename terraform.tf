provider "vault" {
	address = "http://vault-internal.gdevops72.com:8200"
	token = var.token
	}

terraform {
	backend "s3"{
      bucket = "terraform-g85"
      key    = "roboshop-config-values/state.tfvars"
      region = "us-east-1"
    }
}