
terraform {
  required_providers {
    aws ={
        source = "hashicorp/aws"
        version = "5.37.0"
    }
  }
}

variable "awsk1" {
  description = "default"

  
}

variable "awsl2" {
  description = "default"
  
}
variable "reg" {
  
}
# Configure the AWS Provider
provider "aws" {
    region = var.reg
    access_key = var.awsk1
    secret_key = var.awsl2
 
}

terraform {
  backend "s3" {
    bucket = "terraform-bucket-devops"
    key = "tf-current-state-file"
    region = "ap-south-1"
    
  }
}