# Configure terraform
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Cargar modulo VPC
module "vpc" {
  source = "./vpc"
  vpc_cidr = var.vpc_cidr
  web_subnet_a_cidr = var.web_subnet_a_cidr
  web_subnet_b_cidr = var.web_subnet_b_cidr
  app_subnet_a_cidr = var.app_subnet_a_cidr
  app_subnet_b_cidr = var.app_subnet_b_cidr
  db_subnet_a_cidr = var.db_subnet_a_cidr
  db_subnet_b_cidr = var.db_subnet_b_cidr
}
