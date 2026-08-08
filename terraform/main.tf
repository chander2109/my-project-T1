terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.rut_aws_region
}

module "vpc" {
  source = "./modules/vpc"

  ch_vpc_cidr     = var.rut_vpc_cidr
  ch_vpc_name     = var.rut_vpc_name

  ch_subnet1_cidr = var.rut_subnet1_cidr
  ch_subnet2_cidr = var.rut_subnet2_cidr

  ch_subnet1_name = var.rut_subnet1_name
  ch_subnet2_name = var.rut_subnet2_name

  ch_az1          = var.rut_az1
  ch_az2          = var.rut_az2

  ch_region       = var.rut_aws_region

}