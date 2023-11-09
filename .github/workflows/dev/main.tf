terraform {
    required_version = ">= 1.3"
    backend "s3" {
        bucket = "devops-intern-ilovekharkiv"
        key = "digger/state.tfstate"
    }
}

provider "aws" {
    region = var.region
}

resource "aws_vpc" "my-vpc" {
    cidr_block = var.vpc_cidr_block
    tags = {
        Name: "${var.env_prefix}-vpc"
    }
}