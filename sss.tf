terraform {
    required_version = "~> 1.5.0" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "susmiinfra" {
	ami = "ami-022e1a32d3f742bd8"
	instance_type = "t2.micro"
}
